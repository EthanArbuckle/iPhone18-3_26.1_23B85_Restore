@interface SSRankingManager
+ (BOOL)searchToolShouldFilterEventBeforeRanking:(id)a3 queryContext:(id)a4 matchQUIntent:(BOOL)a5 searchToolBundles:(id)a6 useLLMQU:(BOOL)a7 hasEventTypeFromQU:(BOOL)a8;
+ (BOOL)searchToolShouldFilterWalletResultBeforeRanking:(id)a3 queryContext:(id)a4;
+ (float)computeThresholdWithScale:(float)a3 bias:(float)a4 cutoffOffset:(float)a5;
+ (float)topicalityAdjustmentForHighlyEngagedFileResult:(id)a3 topicalityBeforeAdjustment:(float)a4 engagement:(float)a5;
+ (float)topicalityAdjustmentForMessageFreshness:(float)a3 topicalityBeforeAdjustment:(float)a4;
+ (id)bundleIDSetsForQUIntent:(id)a3;
+ (id)getArrivalLocationStringFromResult:(id)a3;
+ (id)getCoreDuetValues;
+ (id)getDemoteNonExactMatchBundle;
+ (id)getDepartureLocationStringFromResult:(id)a3;
+ (id)getEventIntentFallbackTokens;
+ (id)getForbiddenSecondSections;
+ (id)getLegacyTophitSection;
+ (id)getLocationStringFromResult:(id)a3;
+ (id)getPoorSecondSections;
+ (id)getSearchToolL2ModelManager;
+ (id)getSuggestionsRankingThresholds;
+ (id)getTopHitItems:(id)a3;
+ (id)getTopHitsContinuationThresholds;
+ (id)getTopHitsThresholdsForBundleId:(unint64_t)a3 queryLength:(unint64_t)a4 queryTermCount:(char)a5 getFallback:;
+ (id)keyForIntervalType:(int64_t)a3;
+ (id)nominateServerTopHitForSection:(id)a3 queryString:(id)a4 language:(id)a5 currentTime:(double)a6;
+ (id)processSearchToolFinalResults:(id)a3 queryContext:(id)a4;
+ (id)rankLocalBundles:(id)a3 sectionMapping:(id)a4 l3RankingScores:(id)a5;
+ (id)rankLocalBundlesUsingModelL3ScoreAndRules:(id)a3 sectionMapping:(id)a4 l3RankingScores:(id)a5;
+ (id)rankLocalBundlesUsingOriginalL2ScoreAndRules:(id)a3 sectionMapping:(id)a4 l3RankingScores:(id)a5;
+ (id)searchToolPopulateResultsForBiomeForTTRWithResult:(id)a3 queryContext:(id)a4;
+ (uint64_t)getMinMisspellingLengthForLanguage:(uint64_t)a1;
+ (uint64_t)getRecencyIntervalForBundleId:(uint64_t)a3 intervalType:(unint64_t)a4 indexRequired:;
+ (uint64_t)getRecencyIntervalForBundleType:(uint64_t)a3 intervalType:(unint64_t)a4 indexRequired:;
+ (uint64_t)isKeywordsHidingEnabledForLanguage:(uint64_t)a1;
+ (void)calculateLikelihoodForSearchTool:(id)a3 queryContext:(id)a4 isQUInferredIntent:(id)a5 isEventSearchIntent:(BOOL)a6;
+ (void)determineTopHitsForSafariSection:(id)a3 forQuery:(id)a4;
+ (void)extractThresholdABValues:(id)a3 forLanguage:(id)a4;
+ (void)fetchDuetValues;
+ (void)fillRankingPosition:(id)a3;
+ (void)fullPageRankingShouldHideUnderShowMore:(id)a3 item:(id)a4 bundleID:(id)a5;
+ (void)initialize;
+ (void)logL3Results:(id)a3 l3Info:(id)a4;
+ (void)moveSafariTopHitsToTopOfSection:(id)a3;
+ (void)parseWalletBoardingPass:(id)a3 isSearchToolClient:(BOOL *)a4;
+ (void)prepareSafariUserTypedURLForTopHitNomination:(id)a3 query:(id)a4;
+ (void)prepareServerSectionRankingItemsForTopHitNomination:(id)a3 currentTime:(double)a4;
+ (void)prepareTopHitsParametersForLanguage:(id)a3;
+ (void)rankLocalBundlesUsingL3Score:(id)a3 sectionMapping:(id)a4 l3RankingScores:(id)a5;
+ (void)reloadCommittedSearchParametersFromTrial;
+ (void)reloadLocaleSpecificMatchingParameters;
+ (void)reloadRankingParametersFromTrial;
+ (void)reloadRecencyThresholds;
+ (void)reloadSuggestionsRankingThresholds;
+ (void)reloadTopHitsParametersFromTrial;
+ (void)searchToolDeduplicateResults:(id)a3;
+ (void)searchToolDonateResultsToBiomeForTTRWithData:(id)a3 forQuery:(id)a4;
+ (void)searchToolExtractDocTextualFeature:(id)a3 queryContext:(id)a4 title:(id)a5 subject:(id)a6 displayName:(id)a7 searchTermsSet:(id)a8;
+ (void)searchToolFilterResultsAfterRanking:(id)a3 queryContext:(id)a4;
+ (void)searchToolRanker:(id)a3 queryContext:(id)a4 searchToolBundles:(id)a5;
+ (void)searchToolSortResults:(id)a3 isQUIntent:(id)a4 isQUInferredIntent:(id)a5 queryContext:(id)a6 searchToolBundles:(id)a7 eventSearchIntent:(BOOL)a8 maxTopicalityPerBundle:(id)a9 preExtractionBoost:(BOOL)a10;
- (BOOL)sectionContainsOnlyStaleApps:(id)a3 shortcutResult:(id)a4;
- (BOOL)sectionDoesNotContainMoreRecentlyUsedApps:(id)a3 lastUsedDate:(id)a4;
- (BOOL)sectionsContainsOnlyOneAppSection:(id)a3;
- (BOOL)sectionsContainsShortcutResult:(id)a3 shortcutResult:(id)a4;
- (SSRankingManager)initWithQuery:(id)a3;
- (double)roundedValueForScore:(double)a3;
- (float)appFreshnessAdjustmentForLaunchCounts:(float)a3 topicality:(float)a4 engagement:(float)a5 launchCount:(float)a6 launchCountTotal:(float)a7 nAppResultsWithLaunchCount:(unint64_t)a8 launchPortion:(float *)a9;
- (float)appFreshnessAdjustmentForOutOfSpotlightCounts:(float)a3 topicality:(float)a4 engagement:(float)a5 launchCount:(float)a6 launchCountTotal:(float)a7 nAppResultsWithLaunchCount:(unint64_t)a8 launchPortion:(float *)a9;
- (float)freshnessAdjustmentForAppResult:(id)a3 section:(id)a4 freshnessBeforeAdjustment:(float)a5 topicality:(float)a6 engagement:(float)a7 appsWithLaunchCount:(BOOL)a8 isSearchToolClient:(BOOL)a9;
- (float)likelihoodAdjustmentForMailAndNotesResult:(float)result freshness:(float)a4 topicality:(float)a5 engagement:(float)a6 numQueryTokens:(unint64_t)a7 queryLength:(unint64_t)a8;
- (float)topicalityAdjustmentForContactsResult:(id)a3 topicalityBeforeAdjustment:(float)result freshness:(float)a5;
- (id)CEPValuesForTTR;
- (id)applyTopSectionPolicy:(id)a3 withTopHitSection:(id)a4 isPeopleSearch:(BOOL)a5 queryKind:(unint64_t)a6 correction:(id)a7 queryLength:(unint64_t)a8 ranker:(id)a9;
- (id)groupSectionsByCategory:(id)a3 genreMap:(id)a4 topSections:(id)a5;
- (id)keyForSection:(id)a3;
- (id)makeTopHitSectionUsingSections:(id)a3 withItemRanker:(id)a4 sectionHeader:(id)a5 shortcutResult:(id)a6 isBullseyeNonCommittedSearch:(BOOL)a7 isBullseyeCommittedSearch:(BOOL)a8 parsecEnabled:(BOOL)a9 maxNumAppsInTopHitSection:(unint64_t)a10;
- (id)nominateLocalTopHitsFromSections:(id)a3 withItemRanker:(id)a4 sectionHeader:(id)a5 maxInitiallyVisibleResults:(unint64_t)a6 shortcutResult:(id)a7 isBullseyeNonCommittedSearch:(BOOL)a8 isBullseyeCommittedSearch:(BOOL)a9 parsecEnabled:(BOOL)a10 maxNumAppsInTopHitSection:(unint64_t)a11 queryId:(unint64_t)a12 isSearchToolClient:(BOOL)a13 qu:(id)a14 currentTime:(double)a15;
- (id)rankAppsAtTopForScopedSearchWithSections:(id)a3;
- (id)relativeRankWithAbsRank:(id)a3 numberValues:(unint64_t)a4;
- (id)removeBlockListedSectionsForMapping:(id)a3;
- (id)removeBlockListedSectionsForMapping:(id)a3 withRankingConfiguration:(id)a4;
- (int64_t)compareDate:(id)a3 withDate:(id)a4;
- (void)_tagQUIntent:(id)a3 qu:(id)a4;
- (void)addCEPValuesForTTR;
- (void)applyTopHitRankingPolicyToSection:(id)a3 topResultSection:(id)a4 maxTopHitCount:(int64_t)a5 isShortcut:(BOOL)a6;
- (void)calculateLikelihoodAndPriorForSection:(id)a3 currentTime:(double)a4 shortcutResult:(id)a5 queryId:(unint64_t)a6 ranker:(id)a7 nominateLocalTopHit:(BOOL)a8 qu:(id)a9 isSearchToolClient:(BOOL)a10;
- (void)finalizeLog;
- (void)logPommesScoringForRankingItem:(id)a3 queryId:(unint64_t)a4 query:(id)a5 bundleID:(id)a6 name:(id)a7 topicality:(float)a8 freshness:(float)a9 engagement:(float)a10 likelihood:(float)a11 launchPortion:(float)a12 launchCount:(float)a13 launchPortionOutOfSpotlight:(float)a14 launchCountOutOfSpotlight:(float)a15 engagedInSpotlight:(BOOL)a16 exactMatchedLaunchString:(BOOL)a17 lastUsedDate:(id)a18 recentEngagementDateInSpotlight:(id)a19 recentEngagementDateInApp:(id)a20 recentEngagementDateOutSpotlight:(id)a21 nominateLocalTopHit:(BOOL)a22 isSearchToolClient:(BOOL)a23;
- (void)refineSectionShowingVisibleResultsWithBetterTextMatches:(id)a3;
- (void)updateServerScoresUsingBlockOrder:(id)a3 bundleFeatures:(id)a4;
- (void)updateWithNewRankingInfo:(id)a3;
- (void)withinSectionTopHitNomination:(id)a3 withItemRanker:(id)a4;
@end

@implementation SSRankingManager

+ (id)bundleIDSetsForQUIntent:(id)a3
{
  v3 = a3;
  if (bundleIDSetsForQUIntent__onceToken != -1)
  {
    +[SSRankingManager bundleIDSetsForQUIntent:];
  }

  v4 = v3;
  v5 = @"INTENT_FLIGHT";
  if (([(__CFString *)v4 hasPrefix:@"INTENT_FLIGHT"]& 1) != 0 || (v5 = @"INTENT_HOTEL", v6 = v4, [(__CFString *)v4 hasPrefix:@"INTENT_HOTEL"]))
  {

    v6 = v5;
  }

  if ([(__CFString *)v4 hasPrefix:@"INTENT_RESTAURANT"])
  {

    v6 = @"INTENT_RESTAURANT";
  }

  v7 = [bundleIDSetsForQUIntent___quIntentBundleSets objectForKeyedSubscript:v4];

  return v7;
}

void __44__SSRankingManager_bundleIDSetsForQUIntent___block_invoke()
{
  v52[12] = *MEMORY[0x1E69E9840];
  v51[0] = @"INTENT_PHOTO_SEARCH";
  v0 = MEMORY[0x1E695DFD8];
  v50 = @"com.apple.mobileslideshow";
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
  v37 = [v0 setWithArray:v38];
  v52[0] = v37;
  v51[1] = @"INTENT_PHOTO_SEARCH_OCR";
  v1 = MEMORY[0x1E695DFD8];
  v49 = @"com.apple.mobileslideshow";
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  v35 = [v1 setWithArray:v36];
  v52[1] = v35;
  v51[2] = @"INTENT_NOTES_SEARCH";
  v2 = MEMORY[0x1E695DFD8];
  v48 = @"com.apple.mobilenotes";
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v33 = [v2 setWithArray:v34];
  v52[2] = v33;
  v51[3] = @"INTENT_FILE_SEARCH";
  v3 = MEMORY[0x1E695DFD8];
  v47 = @"com.apple.DocumentsApp";
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  v31 = [v3 setWithArray:v32];
  v52[3] = v31;
  v51[4] = @"INTENT_MAIL_SEARCH";
  v4 = MEMORY[0x1E695DFD8];
  v46 = @"com.apple.mobilemail";
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  v29 = [v4 setWithArray:v30];
  v52[4] = v29;
  v51[5] = @"INTENT_MESSAGE_SEARCH";
  v5 = MEMORY[0x1E695DFD8];
  v45[0] = @"com.apple.MobileSMS";
  v45[1] = @"com.apple.mobilemail";
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  v27 = [v5 setWithArray:v28];
  v52[5] = v27;
  v51[6] = @"INTENT_CALENDAR_SEARCH";
  v6 = MEMORY[0x1E695DFD8];
  v44 = @"com.apple.mobilecal";
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  v25 = [v6 setWithArray:v26];
  v52[6] = v25;
  v51[7] = @"INTENT_REMINDER_SEARCH";
  v7 = MEMORY[0x1E695DFD8];
  v43 = @"com.apple.reminders";
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v23 = [v7 setWithArray:v24];
  v52[7] = v23;
  v51[8] = @"INTENT_SAFARI_SEARCH";
  v8 = MEMORY[0x1E695DFD8];
  v42 = @"com.apple.mobilesafari";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v9 = [v8 setWithArray:v22];
  v52[8] = v9;
  v51[9] = @"INTENT_FLIGHT";
  v10 = MEMORY[0x1E695DFD8];
  v41[0] = @"com.apple.spotlight.events";
  v41[1] = @"com.apple.mobilemail";
  v41[2] = @"com.apple.mobilecal";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
  v12 = [v10 setWithArray:v11];
  v52[9] = v12;
  v51[10] = @"INTENT_HOTEL";
  v13 = MEMORY[0x1E695DFD8];
  v40[0] = @"com.apple.spotlight.events";
  v40[1] = @"com.apple.mobilemail";
  v40[2] = @"com.apple.mobilecal";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
  v15 = [v13 setWithArray:v14];
  v52[10] = v15;
  v51[11] = @"INTENT_RESTAURANT";
  v16 = MEMORY[0x1E695DFD8];
  v39[0] = @"com.apple.spotlight.events";
  v39[1] = @"com.apple.mobilemail";
  v39[2] = @"com.apple.mobilecal";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
  v18 = [v16 setWithArray:v17];
  v52[11] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:12];
  v20 = bundleIDSetsForQUIntent___quIntentBundleSets;
  bundleIDSetsForQUIntent___quIntentBundleSets = v19;

  v21 = *MEMORY[0x1E69E9840];
}

+ (id)getEventIntentFallbackTokens
{
  if (getEventIntentFallbackTokens_onceToken != -1)
  {
    +[SSRankingManager getEventIntentFallbackTokens];
  }

  v3 = getEventIntentFallbackTokens_eventIntentFallbackTokens;

  return v3;
}

void __48__SSRankingManager_getEventIntentFallbackTokens__block_invoke()
{
  v0 = getEventIntentFallbackTokens_eventIntentFallbackTokens;
  getEventIntentFallbackTokens_eventIntentFallbackTokens = &unk_1F55B6F68;
}

+ (void)fetchDuetValues
{
  v4 = +[PRSMLManager getSPMLSharedInstance];
  v2 = [v4 getRankedCategoriesAsDictionaryForDays:14];
  os_unfair_lock_lock(&sDuetValuesLock);
  v3 = initRankedCategoriesFromDuet;
  initRankedCategoriesFromDuet = v2;

  os_unfair_lock_unlock(&sDuetValuesLock);
}

+ (id)getCoreDuetValues
{
  os_unfair_lock_lock(&sDuetValuesLock);
  v2 = initRankedCategoriesFromDuet;
  os_unfair_lock_unlock(&sDuetValuesLock);

  return v2;
}

- (double)roundedValueForScore:(double)a3
{
  v7 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%.3g", a3);
  result = atof(__str);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)removeBlockListedSectionsForMapping:(id)a3 withRankingConfiguration:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  [v6 lock];
  v7 = [v6 cepBlocklistSet];
  v8 = v7;
  if (v5 && v7)
  {
    v9 = [v5 mutableCopy];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [v5 allKeys];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if ([v8 containsObject:v15])
          {
            [v9 removeObjectForKey:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    v16 = [v9 copy];
    v5 = v16;
  }

  [v6 unlock];

  v17 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)relativeRankWithAbsRank:(id)a3 numberValues:(unint64_t)a4
{
  v5 = MEMORY[0x1E696AD98];
  [a3 doubleValue];
  v7 = (v6 + -1.0) / a4;

  return [v5 numberWithDouble:v7];
}

- (void)applyTopHitRankingPolicyToSection:(id)a3 topResultSection:(id)a4 maxTopHitCount:(int64_t)a5 isShortcut:(BOOL)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if ([v9 resultsCount] > a5)
  {
    [v9 removeResultsInRange:{a5, objc_msgSend(v9, "resultsCount") - a5}];
  }

  if ([v10 resultsCount])
  {
    v11 = [v10 results];
    v12 = [v11 objectAtIndexedSubscript:0];

    v13 = [v12 rankingItem];
    if (![v13 eligibleForDemotion] || a6 || objc_msgSend(v12, "topHit"))
    {
    }

    else
    {
      v15 = [v12 rankingItem];
      v16 = [v15 topHitReason];

      if (!v16)
      {
        v17 = [v9 results];
        v18 = [v17 copy];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = 0;
          v23 = *v28;
          do
          {
            v24 = 0;
            v25 = v22;
            do
            {
              if (*v28 != v23)
              {
                objc_enumerationMutation(v19);
              }

              v26 = *(*(&v27 + 1) + 8 * v24);
              v22 = v25 + 1;
              [v10 addResults:v26 atIndex:{v25, v27}];
              [v9 removeResults:v26];
              ++v24;
              ++v25;
            }

            while (v21 != v24);
            v21 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v21);
        }

        if (![v9 resultsCount])
        {
          [v10 setPinToTop:1];
        }
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)sectionContainsOnlyStaleApps:(id)a3 shortcutResult:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [a3 resultSet];
  v4 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v27 = *v29;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = [v7 sectionBundleIdentifier];
        if (![v8 isEqualToString:@"com.apple.application"])
        {
          goto LABEL_19;
        }

        v9 = [v7 rankingItem];
        if ([v9 didMatchRankingDescriptor:@"kMDItemLastUsedDateThisMonth"])
        {

LABEL_19:
LABEL_20:
          v23 = 0;
          goto LABEL_21;
        }

        v10 = [v7 rankingItem];
        v11 = [v10 L2FeatureVector];
        v12 = [v11 isAppInDock];

        if (v12)
        {
          goto LABEL_20;
        }

        v13 = [v7 rankingItem];
        v14 = [v13 didMatchRankingDescriptor:@"kMDItemContentCreationDateToday"];

        if (v14)
        {
          v15 = [v7 rankingItem];
          v16 = SSCompactRankingAttrsGetValue([v15 attributes], 0x186uLL);

          v17 = [v7 rankingItem];
          v18 = SSCompactRankingAttrsGetValue([v17 attributes], 0x20uLL);

          [v16 timeIntervalSinceReferenceDate];
          v20 = v19;
          [v18 timeIntervalSinceReferenceDate];
          v22 = v20 <= v21 ? v21 - v20 : v20 - v21;

          if (v22 < 600.0)
          {
            goto LABEL_20;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      v23 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v23 = 1;
  }

LABEL_21:

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)sectionDoesNotContainMoreRecentlyUsedApps:(id)a3 lastUsedDate:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [a3 resultSet];
  v6 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v38 = *v40;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        v10 = [v9 rankingItem];
        if ([v10 didMatchRankingDescriptor:@"kMDItemLastUsedDateThisMonth"])
        {
          v11 = SSCompactRankingAttrsGetValue([v10 attributes], 9uLL);
          [v11 timeIntervalSinceReferenceDate];
          v13 = v12;
          [v5 timeIntervalSinceReferenceDate];
          v15 = v14;

          if (v13 > v15)
          {
            goto LABEL_21;
          }
        }

        v16 = [v10 contentType];
        v17 = [v16 isEqualToString:@"public.contact"];

        if (v17)
        {
          v18 = [v10 lastAccessDate];
          [v18 timeIntervalSinceReferenceDate];
          v20 = v19;
          [v5 timeIntervalSinceReferenceDate];
          v22 = v21;

          if (v20 > v22)
          {
            goto LABEL_21;
          }
        }

        v23 = [v9 rankingItem];
        v24 = [v23 didMatchRankingDescriptor:@"kMDItemContentCreationDateToday"];

        if (v24)
        {
          v25 = [v9 rankingItem];
          v26 = SSCompactRankingAttrsGetValue([v25 attributes], 0x186uLL);

          v27 = [v9 rankingItem];
          v28 = SSCompactRankingAttrsGetValue([v27 attributes], 0x20uLL);

          [v26 timeIntervalSinceReferenceDate];
          v30 = v29;
          [v28 timeIntervalSinceReferenceDate];
          if (v30 <= v31)
          {
            v32 = v31 - v30;
          }

          else
          {
            v32 = v30 - v31;
          }

          if (v32 < 600.0)
          {
            [v5 timeIntervalSinceReferenceDate];
            if (v30 > v33)
            {

LABEL_21:
              v34 = 0;
              goto LABEL_22;
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v34 = 1;
LABEL_22:

  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

- (BOOL)sectionsContainsOnlyOneAppSection:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    v5 = [v4 resultSet];
    v6 = [v5 firstObject];

    v7 = [v6 rankingItem];
    v8 = [v7 bundleIDType];

    v9 = (v8 >> 8) & 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)sectionsContainsShortcutResult:(id)a3 shortcutResult:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 identifier];

  if (v7)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      v26 = v5;
      v27 = v8;
      v25 = *v33;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          if ([v13 domain] != 2)
          {
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v14 = [v13 resultSet];
            v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v29;
              while (2)
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v29 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = [*(*(&v28 + 1) + 8 * j) identifier];
                  v20 = [v6 identifier];
                  v21 = [v19 isEqualToString:v20];

                  if (v21)
                  {

                    v22 = 1;
                    v5 = v26;
                    v8 = v27;
                    goto LABEL_23;
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
                if (v16)
                {
                  continue;
                }

                break;
              }
            }

            v8 = v27;
            v11 = v25;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
        v22 = 0;
        v5 = v26;
      }

      while (v10);
    }

    else
    {
      v22 = 0;
    }

LABEL_23:
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

+ (void)moveSafariTopHitsToTopOfSection:(id)a3
{
  v11 = a3;
  v3 = objc_opt_new();
  v4 = [v11 resultSet];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [v11 resultSet];
      v8 = [v7 objectAtIndexedSubscript:v6];

      if ([v8 isSafariTopHit])
      {
        [v3 addIndex:v6];
      }

      ++v6;
      v9 = [v11 resultSet];
      v10 = [v9 count];
    }

    while (v10 > v6);
  }

  [v11 moveResultsAtIndexes:v3 toIndex:0];
  [v11 sortRange:0 options:objc_msgSend(v3 usingComparator:{"count"), 0, &__block_literal_global_489}];
}

uint64_t __52__SSRankingManager_moveSafariTopHitsToTopOfSection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 contentType];
  v7 = [v6 isEqualToString:@"com.apple.safari.bookmark"];

  v8 = [v5 contentType];
  v9 = [v8 isEqualToString:@"com.apple.safari.bookmark"];

  if (!v7 || v9)
  {
    if (v7 & 1 | ((v9 & 1) == 0))
    {
      v11 = [v4 contentURL];
      v12 = [v5 contentURL];
      v13 = [v11 length];
      v14 = [v12 length];
      if (v13 >= v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = -1;
      }

      if (v13 > v14)
      {
        v10 = 1;
      }

      else
      {
        v10 = v15;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (void)logPommesScoringForRankingItem:(id)a3 queryId:(unint64_t)a4 query:(id)a5 bundleID:(id)a6 name:(id)a7 topicality:(float)a8 freshness:(float)a9 engagement:(float)a10 likelihood:(float)a11 launchPortion:(float)a12 launchCount:(float)a13 launchPortionOutOfSpotlight:(float)a14 launchCountOutOfSpotlight:(float)a15 engagedInSpotlight:(BOOL)a16 exactMatchedLaunchString:(BOOL)a17 lastUsedDate:(id)a18 recentEngagementDateInSpotlight:(id)a19 recentEngagementDateInApp:(id)a20 recentEngagementDateOutSpotlight:(id)a21 nominateLocalTopHit:(BOOL)a22 isSearchToolClient:(BOOL)a23
{
  v99 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v96 = a18;
  v95 = a19;
  v94 = a20;
  v93 = a21;
  v87 = MEMORY[0x1E696AEC0];
  v32 = a7;
  v83 = a6;
  v81 = SSRedactStringClient(a5, 0, a23);
  v79 = [v31 isLocalTopHitCandidate];
  v85 = [v31 identifier];
  v77 = SSRedactStringClient(v85, 0, a23);
  v75 = SSRedactStringClient(v32, 1, a23);

  v33 = a8;
  [v31 pommesL1Score];
  v35 = v34;
  [v31 embeddingSimilarity];
  v37 = v36;
  [v31 keywordMatchScore];
  v39 = v38;
  v73 = [v31 documentEmbeddingAvailable];
  v40 = [v31 retrievalType];
  v41 = [v40 intValue];
  if (a23)
  {
    v42 = @"spotlight_freshness";
  }

  else
  {
    v42 = @"freshness";
  }

  v43 = [v87 stringWithFormat:@"[TH=%d] qid: %llu, query: %@, isLocalCand: %d, bundleID: %@, identifier: %@, name: %@, topicality: %f (pommesL1Score = %f, embeddingSimilarity = %f, keywordMatchScore = %f, documentEmbeddingAvailable = %d, retrievalType = %i), %@: %f, ri: %p/%p/%lu, isMailCategory: (HighImpact = %d, Promotions = %d, Transactions = %d, Updates = %d)", a22, a4, v81, v79, v83, v77, v75, *&v33, *&v35, *&v37, *&v39, v73, v41, v42, a9, v31, objc_msgSend(v31, "attributes"), SSCompactRankingAttrsGetCount(objc_msgSend(v31, "attributes")), objc_msgSend(v31, "isMailCategoryHighImpact"), objc_msgSend(v31, "isMailCategoryPromotions"), objc_msgSend(v31, "isMailCategoryTransactions"), objc_msgSend(v31, "isMailCategoryUpdates")];

  v91 = MEMORY[0x1E696AEC0];
  if (a23)
  {
    v89 = SSCompactRankingAttrsGetValue([v31 attributes], 0x16DuLL);
    v88 = SSCompactRankingAttrsGetValue([v31 attributes], 0x20uLL);
    v86 = SSCompactRankingAttrsGetValue([v31 attributes], 9uLL);
    v82 = SSCompactRankingAttrsGetValue([v31 attributes], 0x19uLL);
    v80 = SSCompactRankingAttrsGetValue([v31 attributes], 0x18AuLL);
    v84 = SSCompactRankingAttrsGetValue([v31 attributes], 0x11uLL);
    v78 = SSCompactRankingAttrsGetValue([v31 attributes], 0x12uLL);
    v74 = [v31 startDueDateToNowInSeconds];
    v72 = +[SPSearchQueryContext llmQUIntentString:](SPSearchQueryContext, "llmQUIntentString:", [v31 detectedEventType]);
    v62 = SSCompactRankingAttrsGetValue([v31 attributes], 0x11DuLL);
    v68 = SSCompactRankingAttrsGetValue([v31 attributes], 0x120uLL);
    v76 = SSCompactRankingAttrsGetValue([v31 attributes], 0x122uLL);
    v65 = SSRedactStringClient(v76, 1, 1);
    v70 = SSCompactRankingAttrsGetValue([v31 attributes], 0x65uLL);
    v63 = SSRedactStringClient(v70, 1, 1);
    v66 = SSCompactRankingAttrsGetValue([v31 attributes], 0x145uLL);
    v44 = SSRedactStringClient(v66, 1, 1);
    v64 = SSCompactRankingAttrsGetValue([v31 attributes], 0x158uLL);
    v45 = SSRedactStringClient(v64, 1, 1);
    v46 = SSCompactRankingAttrsGetValue([v31 attributes], 0x159uLL);
    v47 = SSRedactStringClient(v46, 1, 1);
    v92 = [v91 stringWithFormat:@"%@ dates=(receivedDate=[%@] contentCreationDate=[%@] lastUsedDate=[%@] contentModificationDate=[%@] sentDate=[%@] startDate=[%@] endDate=[%@] startDueDateToNowInSeconds=%ld) documentSignals=(detectedEventTypes=%@ cardType=%@ link=(type=%@ name=%@ url=%@ urlDescription=%@ lpTitle=%@ lpDescription=%@) calendarEventDetection=(Flight=%i Hotel=%i Restaurant=%i Other=%i) mostRecentTimeToQueryInMinutes=%ld) ", v43, v89, v88, v86, v82, v80, v84, v78, v74, v72, v62, v68, v65, v63, v44, v45, v47, objc_msgSend(v31, "isCalendarFlightEventType"), objc_msgSend(v31, "isCalendarHotelEventType"), objc_msgSend(v31, "isCalendarRestaurantEventType"), objc_msgSend(v31, "isCalendarOtherReservationEventType"), objc_msgSend(v31, "mostRecentTimeToQueryInMinutesForFreshness")];

    v48 = SSGeneralLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v92;
      v98 = v92;
      _os_log_impl(&dword_1D9F69000, v48, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] <Engagement_Debug> %@", buf, 0xCu);
      v51 = v95;
      v50 = v96;
      v53 = v93;
      v52 = v94;
    }

    else
    {
      v51 = v95;
      v50 = v96;
      v53 = v93;
      v52 = v94;
      v49 = v92;
    }
  }

  else
  {
    v54 = [v31 matchedQUIntent];
    v55 = [v31 quIntentAvailable];
    [v31 quIntentScore];
    v57 = v56;
    v58 = [v31 wasEngagedInSpotlight];
    v59 = [v31 exactMatchedLaunchString];
    [v31 score];
    v53 = v93;
    v52 = v94;
    v49 = [v91 stringWithFormat:@"%@, QU: (matchedQUIntent: %d, quIntentAvailable: %d, quIntentScore: %f), engagement: %f (launchPortion = %f, launchCount = %f, launchPortionOutSpotlight = %f, launchCountOutSpotlight = %f, engagedInSpotlight = %d, exactMatchedLaunchString = %d, lastUsedDate = %@, recentEngInSpotlight = %@, recentEngInApp = %@, recentEngOutSpotlight = %@), likelihood: %f, L2 model: %f, spellCorrectedApp: %d", v43, v54, v55, *&v57, a10, a12, a13, a14, a15, v58, v59, v96, v95, v94, v93, a11, v60, objc_msgSend(v31, "spellCorrectedApp")];

    v48 = SSGeneralLog();
    v50 = v96;
    v51 = v95;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v98 = v49;
      _os_log_impl(&dword_1D9F69000, v48, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] <Engagement_Debug> %@", buf, 0xCu);
    }
  }

  v61 = *MEMORY[0x1E69E9840];
}

- (float)freshnessAdjustmentForAppResult:(id)a3 section:(id)a4 freshnessBeforeAdjustment:(float)a5 topicality:(float)a6 engagement:(float)a7 appsWithLaunchCount:(BOOL)a8 isSearchToolClient:(BOOL)a9
{
  v14 = a4;
  v15 = a6;
  if (a6 >= 1.0 && a5 <= 0.9)
  {
    v17 = 0.9;
  }

  else
  {
    v17 = a5;
  }

  v18 = [a3 rankingItem];
  v19 = SSCompactRankingAttrsGetValue([v18 attributes], 0x77uLL);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v19 BOOLValue])
  {
    v20 = [v14 resultsCount] > 1 && a8;
    if (v17 >= 0.98)
    {
      v20 = 0;
    }

    if (a7 >= 0.5)
    {
      v20 = 0;
    }

    if (v15 < 1.0 && v20)
    {
      v17 = 0.2;
    }
  }

  return v17;
}

- (float)appFreshnessAdjustmentForLaunchCounts:(float)a3 topicality:(float)a4 engagement:(float)a5 launchCount:(float)a6 launchCountTotal:(float)a7 nAppResultsWithLaunchCount:(unint64_t)a8 launchPortion:(float *)a9
{
  if (a6 <= 0.0 || a4 <= 0.0 && a5 <= 0.0)
  {
    return a3;
  }

  if (a8 >= 2 && a8 < a7)
  {
    v11 = a6 / a7;
    if ((a6 / a7) > 0.0)
    {
      v9 = 1.0;
      v12 = (v11 + 1.0) * a3;
      if (v12 <= 1.0)
      {
        v9 = v12;
      }

      *a9 = v11;
      return v9;
    }

    return a3;
  }

  if (a8 != 1 || a4 <= 0.8 && a5 <= 0.8 || a7 <= 0.0)
  {
    return a3;
  }

  v9 = 1.0;
  if (a6 > 1000.0)
  {
    return v9;
  }

  if (a6 <= 100.0)
  {
    if (a6 <= 50.0)
    {
      if (a6 <= 25.0)
      {
        if (a6 <= 10.0)
        {
          return a3;
        }

        v13 = a3 <= 0.7;
        v9 = 0.7;
      }

      else
      {
        v13 = a3 <= 0.8;
        v9 = 0.8;
      }
    }

    else
    {
      v13 = a3 <= 0.85;
      v9 = 0.85;
    }
  }

  else
  {
    v13 = a3 <= 0.95;
    v9 = 0.95;
  }

  if (!v13)
  {
    return a3;
  }

  return v9;
}

- (float)appFreshnessAdjustmentForOutOfSpotlightCounts:(float)a3 topicality:(float)a4 engagement:(float)a5 launchCount:(float)a6 launchCountTotal:(float)a7 nAppResultsWithLaunchCount:(unint64_t)a8 launchPortion:(float *)a9
{
  if (a6 <= 0.0 || a4 <= 0.0 && a5 <= 0.0)
  {
    return a3;
  }

  if (a8 >= 2 && a8 < a7)
  {
    v11 = a6 / a7;
    if ((a6 / a7) > 0.0)
    {
      v9 = 1.0;
      v12 = (v11 + 1.0) * a3;
      if (v12 <= 1.0)
      {
        v9 = v12;
      }

      *a9 = v11;
      return v9;
    }

    return a3;
  }

  if (a8 != 1 || a4 <= 0.8 && a5 <= 0.8 || a7 <= 0.0)
  {
    return a3;
  }

  v9 = 1.0;
  if (a6 > 18.0)
  {
    return v9;
  }

  if (a6 <= 15.0)
  {
    if (a6 <= 12.0)
    {
      if (a6 <= 9.0)
      {
        if (a6 <= 6.0)
        {
          return a3;
        }

        v13 = a3 <= 0.7;
        v9 = 0.7;
      }

      else
      {
        v13 = a3 <= 0.8;
        v9 = 0.8;
      }
    }

    else
    {
      v13 = a3 <= 0.85;
      v9 = 0.85;
    }
  }

  else
  {
    v13 = a3 <= 0.95;
    v9 = 0.95;
  }

  if (!v13)
  {
    return a3;
  }

  return v9;
}

- (float)likelihoodAdjustmentForMailAndNotesResult:(float)result freshness:(float)a4 topicality:(float)a5 engagement:(float)a6 numQueryTokens:(unint64_t)a7 queryLength:(unint64_t)a8
{
  v8 = a4 <= 0.2 || a5 <= 0.5;
  if (!v8 && (a7 > 2 || a8 >= 0x10))
  {
    v9 = result + 0.15;
    if (v9 > 1.0)
    {
      return 1.0;
    }

    return v9;
  }

  return result;
}

- (float)topicalityAdjustmentForContactsResult:(id)a3 topicalityBeforeAdjustment:(float)result freshness:(float)a5
{
  v5 = a5;
  if (v5 <= 0.94)
  {
    if (v5 <= 0.91)
    {
      return result;
    }

    v9 = result;
    if (result > 0.5)
    {
      v7 = v9 < 0.8;
      v8 = 0.8;
LABEL_7:
      if (v7)
      {
        return v8;
      }

      return result;
    }

    if (v9 > 0.1)
    {
      return 0.7;
    }
  }

  else
  {
    v6 = result;
    if (result > 0.5)
    {
      v7 = v6 < 0.9;
      v8 = 0.9;
      goto LABEL_7;
    }

    if (v6 > 0.1)
    {
      return 0.8;
    }
  }

  return result;
}

+ (float)topicalityAdjustmentForHighlyEngagedFileResult:(id)a3 topicalityBeforeAdjustment:(float)a4 engagement:(float)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (a5 >= 0.75)
  {
    v9 = [v7 rankingItem];
    if (v9)
    {
      v10 = v9;
      v11 = [v8 rankingItem];
      if ([v11 exactMatchedLaunchString])
      {
      }

      else
      {
        v12 = [v8 rankingItem];
        v13 = [v12 recentSimilarIntentEngagementDates];
        v14 = [v13 count];

        if (!v14)
        {
          goto LABEL_9;
        }
      }

      v15 = SSGeneralLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 134217984;
        v19 = 0x3FF0000000000000;
        _os_log_impl(&dword_1D9F69000, v15, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][Topicality adjustment][Files] Changing to %.04f due to high engagement", &v18, 0xCu);
      }

      a4 = 1.0;
    }
  }

LABEL_9:

  v16 = *MEMORY[0x1E69E9840];
  return a4;
}

+ (float)topicalityAdjustmentForMessageFreshness:(float)a3 topicalityBeforeAdjustment:(float)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a3 >= 0.65)
  {
    v7 = a4;
  }

  else
  {
    v6 = a3 * a4;
    if ((a3 * a4) < 0.05)
    {
      v6 = 0.05;
    }

    if (a3 <= 2.2204e-16)
    {
      v7 = 0.049;
    }

    else
    {
      v7 = v6;
    }

    v8 = SSGeneralLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218496;
      v12 = a4;
      v13 = 2048;
      v14 = v7;
      v15 = 2048;
      v16 = v5;
      _os_log_impl(&dword_1D9F69000, v8, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][Topicality adjustment][Messages] Changing %.04f -> %.04f due to freshness %.04f", &v11, 0x20u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)_tagQUIntent:(id)a3 qu:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 intentBundleIds];
    if (v8)
    {
      v9 = v8;
      [v7 intentScore];
      v11 = v10;

      if (v11 >= 0.9)
      {
        v12 = [v7 intentBundleIds];
        v13 = [v5 bundleIdentifier];
        v14 = [v12 containsObject:v13];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v15 = [v5 results];
        v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v30;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v30 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v29 + 1) + 8 * i);
              v21 = [v20 rankingItem];

              if (v21)
              {
                v22 = [v20 rankingItem];
                [v22 setMatchedQUIntent:v14];

                v23 = -1.0;
                if (v14)
                {
                  [v7 intentScore];
                  v23 = v24;
                }

                v25 = [v20 rankingItem];
                *&v26 = v23;
                [v25 setQuIntentScore:v26];

                v27 = [v20 rankingItem];
                [v27 setQuIntentAvailable:1];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v17);
        }
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)calculateLikelihoodAndPriorForSection:(id)a3 currentTime:(double)a4 shortcutResult:(id)a5 queryId:(unint64_t)a6 ranker:(id)a7 nominateLocalTopHit:(BOOL)a8 qu:(id)a9 isSearchToolClient:(BOOL)a10
{
  v265 = a8;
  v286 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v228 = a5;
  v233 = a7;
  v15 = a9;
  if (![v14 resultsCount])
  {
    goto LABEL_118;
  }

  v243 = [v14 bundleIdentifier];
  if ([v243 isEqualToString:@"com.apple.mobilesafari"])
  {
    [SSRankingManager prepareSafariUserTypedURLForTopHitNomination:v14 query:self->_query];
  }

  v16 = v243;
  v17 = [v243 isEqualToString:@"com.apple.application"];
  [(SSRankingManager *)self _tagQUIntent:v14 qu:v15];
  v231 = v14;
  v234 = v17;
  v227 = v15;
  if (v17)
  {
    v266 = self;
    v283 = 0u;
    v281 = 0u;
    v282 = 0u;
    v280 = 0u;
    v18 = [v14 results];
    v19 = [v18 countByEnumeratingWithState:&v280 objects:v285 count:16];
    if (!v19)
    {
      v21 = 0;
      v268 = 0;
      v23 = 0.0;
      v24 = 0.0;
      goto LABEL_45;
    }

    v20 = v19;
    v21 = 0;
    v268 = 0;
    v22 = *v281;
    v23 = 0.0;
    v24 = 0.0;
    while (1)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v281 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v26 = *(*(&v280 + 1) + 8 * i);
        v279 = 0.0;
        v27 = [v26 rankingItem];
        SSCompactRankingAttrsGetFloat([v27 attributes], 0x163uLL, &v279);

        v28 = v279;
        if (v279 <= 0.0)
        {
          v16 = [v26 rankingItem];
          if (![v16 wasEngagedInSpotlight])
          {
            v31 = 0;
LABEL_18:

            goto LABEL_19;
          }
        }

        v29 = [v26 rankingItem];
        [v29 topicalityScore];
        if (v30 <= 0.0)
        {
          v32 = [v26 rankingItem];
          [v32 engagementScore];
          v31 = v33 > 0.0;
        }

        else
        {
          v31 = 1;
        }

        if (v28 <= 0.0)
        {
          goto LABEL_18;
        }

LABEL_19:
        if (v31)
        {
          v24 = v24 + v279;
        }

        if (SSEnableSpotlightPersonalizedRanking2024())
        {
          v34 = [v26 rankingItem];
          v35 = SSCompactRankingAttrsGetValue([v34 attributes], 0x75uLL);

          if ([v35 count])
          {
            v36 = [v26 rankingItem];
            [v36 topicalityScore];
            if (v37 > 0.0)
            {

              goto LABEL_26;
            }

            v38 = [v26 rankingItem];
            [v38 engagementScore];
            v40 = v39;

            if (v40 > 0.0)
            {
LABEL_26:
              v23 = v23 + [v35 count];
              ++v21;
            }
          }
        }

        v268 += v31;
      }

      v20 = [v18 countByEnumeratingWithState:&v280 objects:v285 count:16];
      if (!v20)
      {
LABEL_45:
        v230 = v24;
        v229 = v23;
        v232 = v21;
        self = v266;

        v14 = v231;
        goto LABEL_46;
      }
    }
  }

  if (([v243 isEqualToString:@"com.apple.conversion"] & 1) == 0 && (objc_msgSend(v243, "isEqualToString:", @"com.apple.calculation") & 1) == 0 && (objc_msgSend(v243, "isEqualToString:", @"com.apple.worldclock") & 1) == 0 && !objc_msgSend(v243, "isEqualToString:", @"com.apple.datadetector.quick_actions"))
  {
    v232 = 0;
    v268 = 0;
    v229 = 0.0;
    v230 = 0.0;
LABEL_46:
    v239 = objc_opt_new();
    v275 = 0u;
    v276 = 0u;
    v277 = 0u;
    v278 = 0u;
    obj = [v14 results];
    v242 = [obj countByEnumeratingWithState:&v275 objects:v284 count:16];
    if (!v242)
    {
      goto LABEL_116;
    }

    v237 = *v276;
    v267 = self;
LABEL_48:
    v83 = 0;
    while (1)
    {
      if (*v276 != v237)
      {
        objc_enumerationMutation(obj);
      }

      v264 = v83;
      v84 = [objc_alloc(objc_opt_class()) initWithResult:*(*(&v275 + 1) + 8 * v83)];
      [v239 addObject:v84];
      v85 = [v84 rankingItem];
      [v85 topicalityScore];
      v87 = v86;

      v88 = [v84 rankingItem];
      [v88 engagementScore];
      v90 = v89;

      v279 = 0.0;
      v274 = 0;
      if (v87 > 0.0)
      {
        break;
      }

      v96 = 0.0;
      if (v90 <= 0.0)
      {
        v107 = 0.05;
      }

      else
      {
        v107 = v90 * 0.4;
      }

      v94 = 0.0;
LABEL_89:
      v161 = [v84 rankingItem];
      [v161 setFreshnessScore:v94];

      v273 = v107;
      v272 = 3227;
      v162 = [v84 rankingItem];
      v163 = [v162 L2FeatureVector];
      [v163 setScores:&v273 forFeatures:&v272 count:1];

      v164 = [v84 rankingItem];
      [v164 setTopicalityScore:v87];

      v165 = [v84 rankingItem];
      [v165 setLikelihood:v107];

      v166 = [v84 rankingItem];
      [v166 setFinalTopicality:v87];

      if (v265)
      {
        [SSTopHitNominationManager nominateTopHitCandidate:v84];
      }

      v167 = [v84 rankingItem];
      v262 = SSCompactRankingAttrsGetValue([v167 attributes], 9uLL);

      v168 = [v84 rankingItem];
      v169 = SSCompactRankingAttrsGetValue([v168 attributes], 0x6DuLL);

      v170 = [v84 rankingItem];
      v171 = SSCompactRankingAttrsGetValue([v170 attributes], 0x73uLL);

      v172 = [v84 rankingItem];
      v173 = SSCompactRankingAttrsGetValue([v172 attributes], 7uLL);

      v174 = [v84 rankingItem];
      v260 = SSCompactRankingAttrsGetValue([v174 attributes], 0xCuLL);

      v175 = [v84 rankingItem];
      v271 = SSCompactRankingAttrsGetValue([v175 attributes], 4uLL);

      if (SSEnableSpotlightPersonalizedRankingFeedbackLogging())
      {
        v176 = [v84 rankingItem];
        v177 = SSCompactRankingAttrsGetValue([v176 attributes], 9uLL);
        v178 = v177;
        if (v177)
        {
          [v177 timeIntervalSinceReferenceDate];
          v180 = trunc(fmax(a4 - v179, 0.0)) / 86400.0;
          if (v180 <= 540.0)
          {
            if (v180 <= 365.0)
            {
              if (v180 <= 90.0)
              {
                if (v180 <= 30.0)
                {
                  if (v180 <= 7.0)
                  {
                    if (v180 <= 3.0)
                    {
                      if (v180 <= 1.0)
                      {
                        v181 = 1;
                      }

                      else
                      {
                        v181 = 2;
                      }
                    }

                    else
                    {
                      v181 = 3;
                    }
                  }

                  else
                  {
                    v181 = 4;
                  }
                }

                else
                {
                  v181 = 5;
                }
              }

              else
              {
                v181 = 6;
              }
            }

            else
            {
              v181 = 7;
            }
          }

          else
          {
            v181 = 8;
          }
        }

        else
        {
          v181 = 0;
        }

        v182 = objc_opt_new();
        [v182 setResultQueryRecency:v181];
        v183 = MEMORY[0x1E696AD98];
        [v176 l2Score];
        v184 = [v183 numberWithFloat:?];
        [v182 setPommesL2Score:v184];

        v185 = MEMORY[0x1E696AD98];
        [v176 topicalityScore];
        v187 = [v185 numberWithDouble:round(v186 * 100000000.0) / 100000000.0];
        [v182 setTopicalityScore:v187];

        v188 = MEMORY[0x1E696AD98];
        [v176 freshnessScore];
        v190 = [v188 numberWithDouble:round(v189 * 100000000.0) / 100000000.0];
        [v182 setFreshness:v190];

        v191 = MEMORY[0x1E696AD98];
        [v176 engagementScore];
        v193 = [v191 numberWithDouble:round(v192 * 100000000.0) / 100000000.0];
        [v182 setEngagementScore:v193];

        v194 = MEMORY[0x1E696AD98];
        [v176 likelihood];
        v196 = [v194 numberWithDouble:round(v195 * 100000000.0) / 100000000.0];
        [v182 setPredictedLikelihoodOfEngagement:v196];

        [v182 setWasNominatedAsTopHit:{objc_msgSend(v176, "isLocalTopHitCandidate")}];
        [v182 setIsExactMatchOfLaunchString:{objc_msgSend(v176, "exactMatchedLaunchString")}];
        [v182 setWasEngagedInSpotlight:{objc_msgSend(v176, "wasEngagedInSpotlight")}];
        v197 = [v176 retrievalType];
        [v182 setIsSemanticMatch:{(objc_msgSend(v197, "integerValue") >> 1) & 1}];

        v198 = [v176 retrievalType];
        [v182 setIsSyntacticMatch:{objc_msgSend(v198, "integerValue") != 2}];

        v199 = MEMORY[0x1E696AD98];
        [v176 embeddingSimilarity];
        v200 = [v199 numberWithFloat:?];
        [v182 setSemanticScore:v200];

        v201 = MEMORY[0x1E696AD98];
        [v176 pommesL1Score];
        v202 = [v201 numberWithFloat:?];
        [v182 setSyntacticScore:v202];

        [v84 setCoreSpotlightRankingSignals:v182];
      }

      v203 = [v84 rankingItem];
      v204 = SSCompactRankingAttrsGetValue([v203 attributes], 0x75uLL);

      v205 = [v84 rankingItem];
      query = v267->_query;
      v206 = v271;
      if (v260)
      {
        v206 = v260;
      }

      if (v173)
      {
        v206 = v173;
      }

      v247 = v205;
      v249 = v206;
      v207 = HIDWORD(v274);
      v208 = v279;
      v209 = v274;
      v210 = [v84 rankingItem];
      v258 = v84;
      v245 = [v210 wasEngagedInSpotlight];
      v211 = [v84 rankingItem];
      v254 = v173;
      v212 = [v211 exactMatchedLaunchString];
      [v169 valueForKeyPath:@"@max.self"];
      v213 = v256 = v169;
      v214 = [v171 valueForKeyPath:@"@max.self"];
      v215 = [v204 valueForKeyPath:@"@max.self"];
      BYTE1(v226) = a10;
      LOBYTE(v226) = v265;
      LOBYTE(v225) = v212;
      *&v216 = v87;
      *&v217 = v94;
      *&v218 = v90;
      *&v219 = v107;
      LODWORD(v220) = v207;
      *&v221 = v208;
      LODWORD(v222) = v209;
      *&v223 = v96;
      [(SSRankingManager *)v267 logPommesScoringForRankingItem:v247 queryId:a6 query:query bundleID:v243 name:v249 topicality:v245 freshness:v216 engagement:v217 likelihood:v218 launchPortion:v219 launchCount:v220 launchPortionOutOfSpotlight:v221 launchCountOutOfSpotlight:v222 engagedInSpotlight:v223 exactMatchedLaunchString:v225 lastUsedDate:v262 recentEngagementDateInSpotlight:v213 recentEngagementDateInApp:v214 recentEngagementDateOutSpotlight:v215 nominateLocalTopHit:v226 isSearchToolClient:?];

      v83 = v264 + 1;
      if (v242 == v264 + 1)
      {
        v242 = [obj countByEnumeratingWithState:&v275 objects:v284 count:16];
        if (!v242)
        {
LABEL_116:

          v14 = v231;
          [v231 setResults:v239];

          v82 = v243;
          goto LABEL_117;
        }

        goto LABEL_48;
      }
    }

    v91 = [v84 rankingItem];
    *&v92 = v87;
    [v91 staleDemotionWithCurrentTime:a4 topicality:v92];
    v94 = v93;

    if (v234)
    {
      v95 = [v84 rankingItem];
      SSCompactRankingAttrsGetFloat([v95 attributes], 0x163uLL, &v279);

      v96 = 0.0;
      v102 = v243;
      if (!SSEnableSpotlightPersonalizedRanking2024())
      {
LABEL_76:
        *&v100 = v279;
        *&v97 = v94;
        *&v98 = v87;
        *&v99 = v90;
        *&v101 = v230;
        [(SSRankingManager *)v267 appFreshnessAdjustmentForLaunchCounts:v268 topicality:&v274 + 4 engagement:v97 launchCount:v98 launchCountTotal:v99 nAppResultsWithLaunchCount:v100 launchPortion:v101];
        v141 = v140;
        if (SSEnableSpotlightPersonalizedRanking2024())
        {
          LODWORD(v142) = v141;
          *&v143 = v87;
          *&v144 = v90;
          *&v145 = v96;
          v147 = v232;
          *&v146 = v229;
          [(SSRankingManager *)v267 appFreshnessAdjustmentForOutOfSpotlightCounts:v232 topicality:&v274 engagement:v142 launchCount:v143 launchCountTotal:v144 nAppResultsWithLaunchCount:v145 launchPortion:v146];
          v141 = LODWORD(v142);
        }

        else
        {
          v147 = v232;
        }

        LODWORD(v142) = v141;
        *&v143 = v87;
        *&v144 = v90;
        v108 = a10;
        [(SSRankingManager *)v267 freshnessAdjustmentForAppResult:v84 section:v231 freshnessBeforeAdjustment:(v268 | v147) != 0 topicality:a10 engagement:v142 appsWithLaunchCount:v143 isSearchToolClient:v144];
        v94 = v148;
        goto LABEL_80;
      }

      v103 = [v84 rankingItem];
      v104 = SSCompactRankingAttrsGetValue([v103 attributes], 0x75uLL);

      if ([v104 count])
      {
        v105 = [v84 rankingItem];
        [v105 topicalityScore];
        if (v106 > 0.0)
        {

LABEL_74:
          v96 = [v104 count];
          v229 = v229 + v96;
          ++v232;
          goto LABEL_75;
        }

        v137 = [v84 rankingItem];
        [v137 engagementScore];
        v139 = v138;

        if (v139 > 0.0)
        {
          goto LABEL_74;
        }
      }

LABEL_75:

      goto LABEL_76;
    }

    v108 = a10;
    v102 = v243;
    if (a10)
    {
LABEL_60:
      v96 = 0.0;
      if ([v243 isEqualToString:@"com.apple.mobilemail"])
      {
        v109 = [v84 rankingItem];
        v110 = SSCompactRankingAttrsGetValue([v109 attributes], 0x10FuLL);

        if (v110)
        {
          v111 = [v110 unsignedIntegerValue];
          v112 = (v111 & 0xFFFFFFFFFFFFFFDFLL) == 0;
          v113 = (v111 & 0xFFFFFFFFFFFFFFDFLL) == 4;
          v114 = (v111 & 0xFFFFFFFFFFFFFFDFLL) == 16;
          v115 = (v111 & 0xFFFFFFFFFFFFFFDFLL) == 2;
          v116 = (v111 >> 5) & 1;
          v117 = [v84 rankingItem];
          v118 = v112;
          v102 = v243;
          [v117 setIsMailCategoryDefault:v118];

          v119 = [v84 rankingItem];
          [v119 setIsMailCategoryTransactions:v113];

          v120 = [v84 rankingItem];
          [v120 setIsMailCategoryUpdates:v114];

          v121 = [v84 rankingItem];
          [v121 setIsMailCategoryPromotions:v115];

          v122 = [v84 rankingItem];
          [v122 setIsMailCategoryHighImpact:v116];
        }

        v108 = a10;
      }

LABEL_80:
      if (v108)
      {
LABEL_84:
        v107 = v94 * 0.8 * v87 + v90 * 0.2;
        if (([v102 isEqualToString:@"com.apple.mobilemail"] & 1) != 0 || objc_msgSend(v102, "isEqualToString:", @"com.apple.mobilenotes"))
        {
          v154 = [v233 queryTermCount];
          v155 = [v233 queryTermLength];
          *&v156 = v94 * 0.8 * v87 + v90 * 0.2;
          *&v157 = v94;
          *&v158 = v87;
          *&v159 = v90;
          [(SSRankingManager *)v267 likelihoodAdjustmentForMailAndNotesResult:v154 freshness:v155 topicality:v156 engagement:v157 numQueryTokens:v158 queryLength:v159];
          v107 = v160;
        }

        if (v107 < 0.05)
        {
          v107 = 0.05;
        }

        goto LABEL_89;
      }

LABEL_81:
      v149 = [v84 rankingItem];
      v150 = [v149 bundleIDType];

      if ((v150 & 0x800) != 0 && v90 > 0.0)
      {
        *&v151 = v87;
        *&v152 = v90;
        [SSRankingManager topicalityAdjustmentForHighlyEngagedFileResult:v84 topicalityBeforeAdjustment:v151 engagement:v152];
        v87 = v153;
      }

      goto LABEL_84;
    }

    if ([v243 isEqualToString:@"com.apple.MobileAddressBook"])
    {
      *&v123 = v87;
      *&v124 = v94;
      [(SSRankingManager *)v267 topicalityAdjustmentForContactsResult:v84 topicalityBeforeAdjustment:v123 freshness:v124];
      v126 = LODWORD(v125);
      v87 = v125;
    }

    else
    {
      if (![v243 isEqualToString:@"com.apple.MobileSMS"] || v87 <= 0.0)
      {
        goto LABEL_60;
      }

      *&v129 = v94;
      *&v130 = v87;
      [SSRankingManager topicalityAdjustmentForMessageFreshness:v129 topicalityBeforeAdjustment:v130];
      v87 = v131;
      v132 = [v84 rankingItem];
      *&v133 = v87;
      [v132 setKeywordMatchScore:v133];

      v134 = [v84 rankingItem];
      [v134 freshnessScore];
      v136 = v135;

      v96 = 0.0;
      if (v136 > 2.22044605e-16)
      {
        goto LABEL_81;
      }

      v126 = 1028174906;
    }

    v127 = [v84 rankingItem];
    LODWORD(v128) = v126;
    [v127 setKeywordMatchScore:v128];

    v96 = 0.0;
    goto LABEL_81;
  }

  v41 = [v14 resultSet];
  v42 = [v41 objectAtIndexedSubscript:0];
  v43 = [v42 rankingItem];

  if (!v43)
  {
    v44 = [[PRSRankingItem alloc] initWithAttrs:SSCompactRankingAttrsAlloc(0)];
    v45 = [v14 resultSet];
    v46 = [v45 objectAtIndexedSubscript:0];
    [v46 setRankingItem:v44];

    v47 = [v14 resultSet];
    v48 = [v47 objectAtIndexedSubscript:0];
    v49 = [v48 rankingItem];
    [v49 setSectionBundleIdentifier:v243];
  }

  v50 = [v227 intentLabel];
  if ([v50 isEqualToString:@"INTENT_MAIL_SEARCH"])
  {
    v51 = [v14 resultSet];
    v52 = [v51 objectAtIndexedSubscript:0];
    v53 = [v52 resultBundleId];
    v54 = [v53 isEqualToString:@"com.apple.datadetector.quick_actions.calendar"];

    v55 = 1.0;
    if (v54)
    {
      [SSTopHitNominationManager getTopHitThreshold:@"LOCAL_TOPHIT_CANDIDATE_LIKELIHOOD_THRESHOLD"];
      v55 = v56 + -0.01;
    }
  }

  else
  {

    v55 = 1.0;
  }

  v14 = v231;
  v57 = [v231 resultSet];
  v58 = [v57 objectAtIndexedSubscript:0];
  v59 = [v58 rankingItem];
  [v59 setLikelihood:v55];

  if (v265)
  {
    v60 = [v231 resultSet];
    v61 = [v60 objectAtIndexedSubscript:0];
    [SSTopHitNominationManager nominateTopHitCandidate:v61];
  }

  v270 = [v231 resultSet];
  v269 = [v270 objectAtIndexedSubscript:0];
  v62 = [v269 rankingItem];
  v250 = self->_query;
  v263 = [v231 resultSet];
  v261 = [v263 objectAtIndexedSubscript:0];
  v259 = [v261 rankingItem];
  [v259 topicalityScore];
  *&v64 = v63;
  v257 = [v231 resultSet];
  v255 = [v257 objectAtIndexedSubscript:0];
  v253 = [v255 rankingItem];
  [v253 freshnessScore];
  v66 = v65;
  v252 = [v231 resultSet];
  v248 = [v252 objectAtIndexedSubscript:0];
  v246 = [v248 rankingItem];
  [v246 engagementScore];
  v68 = v67;
  v244 = [v231 resultSet];
  v241 = [v244 objectAtIndexedSubscript:0];
  v238 = [v241 rankingItem];
  [v238 likelihood];
  v70 = v69;
  v71 = [v231 resultSet];
  v72 = [v71 objectAtIndexedSubscript:0];
  v73 = [v72 rankingItem];
  v74 = [v73 wasEngagedInSpotlight];
  v75 = [v231 resultSet];
  v76 = [v75 objectAtIndexedSubscript:0];
  v77 = [v76 rankingItem];
  BYTE1(v226) = a10;
  LOBYTE(v226) = v265;
  LOBYTE(v225) = [v77 exactMatchedLaunchString];
  v78 = self;
  *&v79 = v66;
  *&v80 = v68;
  *&v81 = v70;
  v82 = v243;
  [(SSRankingManager *)v78 logPommesScoringForRankingItem:v62 queryId:a6 query:v250 bundleID:v243 name:@"CCCD" topicality:v74 freshness:COERCE_DOUBLE(v64) engagement:v79 likelihood:v80 launchPortion:v81 launchCount:0.0 launchPortionOutOfSpotlight:0.0 launchCountOutOfSpotlight:0.0 engagedInSpotlight:0.0 exactMatchedLaunchString:v225 lastUsedDate:0 recentEngagementDateInSpotlight:0 recentEngagementDateInApp:0 recentEngagementDateOutSpotlight:0 nominateLocalTopHit:v226 isSearchToolClient:?];

LABEL_117:
  v15 = v227;
LABEL_118:

  v224 = *MEMORY[0x1E69E9840];
}

- (void)withinSectionTopHitNomination:(id)a3 withItemRanker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 bundleIdentifier];
  if ([v6 domain] == 1)
  {
    if ([v8 isEqualToString:@"com.apple.mobilemail"] & 1) != 0 || (SSSectionIsSyndicatedPhotos(v8))
    {
      goto LABEL_9;
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__SSRankingManager_withinSectionTopHitNomination_withItemRanker___block_invoke;
    v9[3] = &unk_1E8595898;
    v9[4] = self;
    v10 = v8;
    v11 = v7;
    [v6 sortWithOptions:16 usingComparator:v9];
  }

  else if ([v6 domain] == 2)
  {
    [v6 sortWithOptions:16 usingComparator:&__block_literal_global_520];
  }

  if ([v8 isEqualToString:@"com.apple.application"])
  {
    [SSTopHitNominationManager topHitCandidacyThresholdingForAppSection:v6];
  }

LABEL_9:
}

uint64_t __65__SSRankingManager_withinSectionTopHitNomination_withItemRanker___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v5 rankingItem];
    if (v8)
    {
      v9 = v8;
      v10 = [v7 rankingItem];

      if (v10)
      {
        v11 = [v5 rankingItem];
        v12 = [v11 bundleIDType];

        if ((v12 & 0x80) != 0)
        {
          v13 = [v5 rankingItem];
          v14 = [v7 rankingItem];
          v15 = [v13 compareSafariTopHitCandidate:v14];
        }

        else if ((v12 & 0x100) != 0)
        {
          v13 = [v5 rankingItem];
          v14 = [v7 rankingItem];
          v15 = [v13 compareAppsTopHitCandidate:v14];
        }

        else if ((v12 & 4) != 0)
        {
          v13 = [v5 rankingItem];
          v14 = [v7 rankingItem];
          v15 = [v13 compareContactsTopHitCandidate:v14];
        }

        else
        {
          if ((v12 & 0x1800000) == 0)
          {
            if ((v12 & 0x10) != 0)
            {
              v13 = [v5 rankingItem];
              v14 = [v7 rankingItem];
            }

            else
            {
              v19 = [*(a1 + 32) allowedTopHitSections];
              v20 = [v19 containsObject:*(a1 + 40)];

              v13 = [v5 rankingItem];
              v14 = [v7 rankingItem];
              if (v20)
              {
                [*(a1 + 48) currentTime];
                v15 = [v13 compare:v14 currentTime:?];
                goto LABEL_28;
              }
            }

            v15 = [v13 compareLocalTopHitCandidate:v14];
            goto LABEL_28;
          }

          v13 = [v5 rankingItem];
          v14 = [v7 rankingItem];
          v15 = [v13 comparePeopleItemTopHitCandidate:v14];
        }

LABEL_28:
        v21 = v15;

        v17 = -v21;
        goto LABEL_29;
      }
    }
  }

  else if (!v5)
  {
    if (!v6)
    {
      v17 = 0;
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  v16 = [v5 rankingItem];

  if (v16)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  if (v7 && !v16)
  {
LABEL_18:
    v18 = [v7 rankingItem];
    v17 = v18 != 0;
  }

LABEL_29:

  return v17;
}

uint64_t __65__SSRankingManager_withinSectionTopHitNomination_withItemRanker___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 rankingItem];
  if (v6)
  {
    v7 = [v5 rankingItem];

    if (v7)
    {
      v8 = [v4 rankingItem];
      v9 = [v5 rankingItem];
      v6 = -[v8 compareParsecTopHitCandidate:v9];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)nominateLocalTopHitsFromSections:(id)a3 withItemRanker:(id)a4 sectionHeader:(id)a5 maxInitiallyVisibleResults:(unint64_t)a6 shortcutResult:(id)a7 isBullseyeNonCommittedSearch:(BOOL)a8 isBullseyeCommittedSearch:(BOOL)a9 parsecEnabled:(BOOL)a10 maxNumAppsInTopHitSection:(unint64_t)a11 queryId:(unint64_t)a12 isSearchToolClient:(BOOL)a13 qu:(id)a14 currentTime:(double)a15
{
  v163 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v122 = a4;
  v21 = a5;
  v124 = a7;
  v123 = a14;
  v22 = objc_opt_new();
  [v22 setBundleIdentifier:@"com.apple.spotlight.tophits"];
  v118 = v21;
  [v22 setTitle:v21];
  v119 = v22;
  [v22 setMaxInitiallyVisibleResults:a6];
  if (a11 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = a11;
  }

  v117 = v23;
  v120 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v20, "count")}];
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  obj = v20;
  v24 = [obj countByEnumeratingWithState:&v152 objects:v162 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = 0;
    v27 = *v153;
    v125 = *v153;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v153 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v152 + 1) + 8 * i);
        if ([v29 resultsCount])
        {
          v30 = [v29 bundleIdentifier];
          v31 = [v30 isEqualToString:@"com.apple.Preferences"];

          if (v31)
          {
            LOBYTE(v116) = a13;
            [(SSRankingManager *)self calculateLikelihoodAndPriorForSection:v29 currentTime:v124 shortcutResult:a12 queryId:v122 ranker:1 nominateLocalTopHit:v123 qu:a15 isSearchToolClient:v116];
            v32 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v29, "resultsCount")}];

            v150 = 0u;
            v151 = 0u;
            v148 = 0u;
            v149 = 0u;
            v33 = [v29 resultSet];
            v34 = [v33 countByEnumeratingWithState:&v148 objects:v161 count:16];
            if (v34)
            {
              v35 = v34;
              v36 = *v149;
              do
              {
                for (j = 0; j != v35; ++j)
                {
                  if (*v149 != v36)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v38 = *(*(&v148 + 1) + 8 * j);
                  v39 = [v38 identifier];
                  if (v39)
                  {
                    v40 = v39;
                    v41 = [v38 rankingItem];

                    if (v41)
                    {
                      v42 = [v38 rankingItem];
                      v43 = [v38 identifier];
                      [v32 setObject:v42 forKeyedSubscript:v43];
                    }
                  }
                }

                v35 = [v33 countByEnumeratingWithState:&v148 objects:v161 count:16];
              }

              while (v35);
            }

            v26 = v32;
            v27 = v125;
          }
        }
      }

      v25 = [obj countByEnumeratingWithState:&v152 objects:v162 count:16];
    }

    while (v25);
  }

  else
  {
    v26 = 0;
  }

  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v44 = obj;
  v45 = [v44 countByEnumeratingWithState:&v144 objects:v160 count:16];
  if (!v45)
  {
    v126 = 0;
    v47 = v122;
    goto LABEL_55;
  }

  v46 = v45;
  v126 = 0;
  obja = *v145;
  v47 = v122;
  v121 = v44;
  do
  {
    for (k = 0; k != v46; ++k)
    {
      if (*v145 != obja)
      {
        objc_enumerationMutation(v44);
      }

      v49 = *(*(&v144 + 1) + 8 * k);
      if ([v49 resultsCount])
      {
        v50 = [v49 bundleIdentifier];
        if ([v50 isEqualToString:@"com.apple.Preferences"])
        {
          goto LABEL_33;
        }

        v51 = [v49 bundleIdentifier];
        IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos(v51);

        if ((IsSyndicatedPhotos & 1) == 0)
        {
          LOBYTE(v116) = a13;
          [(SSRankingManager *)self calculateLikelihoodAndPriorForSection:v49 currentTime:v124 shortcutResult:a12 queryId:v47 ranker:1 nominateLocalTopHit:v123 qu:a15 isSearchToolClient:v116];
          v53 = [v49 bundleIdentifier];
          v54 = [v53 isEqualToString:@"com.apple.shortcuts"];

          if (v54)
          {
            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            v50 = [v49 resultSet];
            v55 = [v50 countByEnumeratingWithState:&v140 objects:v159 count:16];
            if (v55)
            {
              v56 = v55;
              v57 = *v141;
              do
              {
                for (m = 0; m != v56; ++m)
                {
                  if (*v141 != v57)
                  {
                    objc_enumerationMutation(v50);
                  }

                  v59 = *(*(&v140 + 1) + 8 * m);
                  v60 = [v59 rankingItem];

                  if (v60)
                  {
                    v61 = [v59 rankingItem];
                    [v61 resetScoreForShortcutsSetting:v26];
                  }
                }

                v56 = [v50 countByEnumeratingWithState:&v140 objects:v159 count:16];
              }

              while (v56);
              v44 = v121;
              v47 = v122;
            }

LABEL_33:
          }
        }

        [(SSRankingManager *)self withinSectionTopHitNomination:v49 withItemRanker:v47];
        if ([v49 resultsCount])
        {
          v62 = [v49 resultSet];
          v63 = [v62 objectAtIndexedSubscript:0];
          v64 = [v63 rankingItem];
          v65 = [v64 isLocalTopHitCandidate];

          if (v65)
          {
            v66 = [v49 resultSet];
            v67 = [v66 objectAtIndexedSubscript:0];
            v68 = SSSetTopHitWithReasonType(1, v67, 28, 0, 1);
            v69 = [v49 resultSet];
            v70 = [v69 objectAtIndexedSubscript:0];
            [v70 setTopHit:v68];

            v44 = v121;
            [v120 addObject:v49];
          }
        }

        v71 = [v49 bundleIdentifier];
        v72 = [v71 isEqualToString:@"com.apple.datadetector.quick_actions"];

        if (v72)
        {
          v73 = v49;

          v126 = v73;
        }

        continue;
      }
    }

    v46 = [v44 countByEnumeratingWithState:&v144 objects:v160 count:16];
  }

  while (v46);
LABEL_55:

  v74 = v120;
  [v120 sortWithOptions:16 usingComparator:&__block_literal_global_527];
  if (a13)
  {
    v75 = SSGeneralLog();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D9F69000, v75, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] by-pass TH nomination", buf, 2u);
    }

    goto LABEL_99;
  }

  if ([v120 count])
  {
    v76 = [v120 objectAtIndexedSubscript:0];
    v77 = [v76 bundleIdentifier];
    v78 = [v77 isEqualToString:@"com.apple.application"];

    v79 = [v76 resultsCount];
    if (v79)
    {
      v80 = 0;
      v81 = v117;
      if (!v78)
      {
        v81 = 1;
      }

      if (v81 >= v79)
      {
        v81 = v79;
      }

      if (v81 <= 1)
      {
        v82 = 1;
      }

      else
      {
        v82 = v81;
      }

      do
      {
        v83 = [v76 resultSet];
        v84 = [v83 objectAtIndexedSubscript:v80];
        v85 = [v84 rankingItem];
        v86 = [v85 isLocalTopHitCandidate];

        if (v86)
        {
          v87 = [v120 objectAtIndexedSubscript:0];
          v88 = [v87 resultSet];
          v89 = [v88 objectAtIndexedSubscript:v80];
          [v119 addResults:v89];

          v90 = [v76 bundleIdentifier];
          [v119 setRelatedSectionBundleIdentifier:v90];
        }

        ++v80;
      }

      while (v82 != v80);
    }

    v47 = v122;
    v74 = v120;
  }

  if (v126)
  {
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v91 = [v119 resultSet];
    v92 = [v91 countByEnumeratingWithState:&v135 objects:v158 count:16];
    if (v92)
    {
      v93 = v92;
      v94 = *v136;
      while (2)
      {
        for (n = 0; n != v93; ++n)
        {
          if (*v136 != v94)
          {
            objc_enumerationMutation(v91);
          }

          v96 = [*(*(&v135 + 1) + 8 * n) sectionBundleIdentifier];
          v97 = [v96 isEqualToString:@"com.apple.datadetector.quick_actions"];

          if (v97)
          {

            v47 = v122;
            v74 = v120;
            goto LABEL_83;
          }
        }

        v93 = [v91 countByEnumeratingWithState:&v135 objects:v158 count:16];
        if (v93)
        {
          continue;
        }

        break;
      }
    }

    v98 = [v126 resultSet];
    v99 = [v98 objectAtIndexedSubscript:0];
    v100 = [v99 resultBundleId];
    v101 = [v100 isEqualToString:@"com.apple.datadetector.quick_actions.tracking_number"];

    v47 = v122;
    v74 = v120;
    if ((v101 & 1) == 0)
    {
      [v126 clearResults];
    }
  }

LABEL_83:
  if (_os_feature_enabled_impl())
  {
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v102 = v44;
    v103 = [v102 countByEnumeratingWithState:&v131 objects:v157 count:16];
    if (v103)
    {
      v104 = v103;
      v105 = *v132;
LABEL_86:
      v106 = 0;
      while (1)
      {
        if (*v132 != v105)
        {
          objc_enumerationMutation(v102);
        }

        v107 = *(*(&v131 + 1) + 8 * v106);
        v108 = [v107 bundleIdentifier];
        v109 = [v108 isEqualToString:@"com.apple.spotlight.events"];

        if (v109)
        {
          break;
        }

        if (v104 == ++v106)
        {
          v104 = [v102 countByEnumeratingWithState:&v131 objects:v157 count:16];
          if (v104)
          {
            goto LABEL_86;
          }

          v75 = v102;
          v47 = v122;
          goto LABEL_97;
        }
      }

      v75 = v107;

      v47 = v122;
      v74 = v120;
      if (!v75)
      {
        goto LABEL_100;
      }

      [v119 clearResults];
      memset(v130, 0, sizeof(v130));
      v110 = [v75 resultSet];
      if ([v110 countByEnumeratingWithState:v130 objects:v156 count:16])
      {
        v111 = **(&v130[0] + 1);
        v112 = [**(&v130[0] + 1) rankingItem];
        [v112 setLikelihood:1.0];

        [SSTopHitNominationManager setTopHitCandidate:v111];
        [v119 addResults:v111];
      }

LABEL_97:
      v74 = v120;
    }

    else
    {
      v75 = v102;
    }

LABEL_99:
  }

LABEL_100:
  v113 = v119;

  v114 = *MEMORY[0x1E69E9840];
  return v119;
}

uint64_t __261__SSRankingManager_nominateLocalTopHitsFromSections_withItemRanker_sectionHeader_maxInitiallyVisibleResults_shortcutResult_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_parsecEnabled_maxNumAppsInTopHitSection_queryId_isSearchToolClient_qu_currentTime___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 bundleIdentifier];
  if ([v6 isEqualToString:@"com.apple.datadetector.quick_actions"])
  {
    v7 = [v5 bundleIdentifier];
    v8 = @"com.apple.calculation";
    if ([v7 isEqualToString:@"com.apple.calculation"])
    {

LABEL_11:
      v15 = [v4 resultSet];
      v16 = [v15 objectAtIndexedSubscript:0];
      v17 = [v16 resultBundleId];
      v18 = [v17 isEqualToString:@"com.apple.datadetector.quick_actions.phone_number"];

      v19 = v18 == 0;
      v20 = -1;
      goto LABEL_14;
    }

    v13 = [v5 bundleIdentifier];
    v14 = [v13 isEqualToString:@"com.apple.conversion"];

    if (v14)
    {
      goto LABEL_11;
    }
  }

  else
  {

    v8 = @"com.apple.calculation";
  }

  v9 = [v4 bundleIdentifier];
  v10 = [v9 isEqualToString:@"com.apple.calculation"];
  if ((v10 & 1) == 0)
  {
    v8 = [v4 bundleIdentifier];
    if (([(__CFString *)v8 isEqualToString:@"com.apple.conversion"]& 1) == 0)
    {

      goto LABEL_18;
    }
  }

  v11 = [v5 bundleIdentifier];
  v12 = [v11 isEqualToString:@"com.apple.datadetector.quick_actions"];

  if ((v10 & 1) == 0)
  {

    if (v12)
    {
      goto LABEL_13;
    }

LABEL_18:
    v26 = [v4 resultSet];
    v27 = [v26 objectAtIndexedSubscript:0];
    v28 = [v27 rankingItem];

    v29 = [v5 resultSet];
    v30 = [v29 objectAtIndexedSubscript:0];
    v31 = [v30 rankingItem];

    if (v28 && v31)
    {
      v32 = [v28 compareShortcutTopHitCandidate:v31];
      if (v32)
      {
        v25 = -v32;
LABEL_24:

        goto LABEL_25;
      }

      if (![v28 compareWithCCCDTopHitCandidate:v31])
      {
        [v28 likelihood];
        v35 = v34;
        [v31 likelihood];
        if (v35 > v36)
        {
          v25 = -1;
          goto LABEL_24;
        }

        [v28 likelihood];
        v38 = v37;
        [v31 likelihood];
        if (v38 < v39)
        {
          v25 = 1;
          goto LABEL_24;
        }
      }
    }

    v25 = 0;
    goto LABEL_24;
  }

  if (!v12)
  {
    goto LABEL_18;
  }

LABEL_13:
  v21 = [v5 resultSet];
  v22 = [v21 objectAtIndexedSubscript:0];
  v23 = [v22 resultBundleId];
  v24 = [v23 isEqualToString:@"com.apple.datadetector.quick_actions.phone_number"];

  v19 = v24 == 0;
  v20 = 1;
LABEL_14:
  if (v19)
  {
    v25 = -v20;
  }

  else
  {
    v25 = v20;
  }

LABEL_25:

  return v25;
}

+ (void)prepareServerSectionRankingItemsForTopHitNomination:(id)a3 currentTime:(double)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SSGeneralLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 bundleIdentifier];
    *buf = 138412290;
    v39 = v7;
    _os_log_impl(&dword_1D9F69000, v6, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] prepareServerSectionRankingItemsForTopHitNomination bundle_id = %@", buf, 0xCu);
  }

  v8 = [v5 results];
  v9 = [v8 count];

  if (v9)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = [v5 results];
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          if (v15)
          {
            v16 = [PRSRankingItem alloc];
            v17 = [v5 bundleIdentifier];
            v18 = [(PRSRankingItem *)v16 initForParsecResultWithBundleID:v17];

            [v18 setEngagementScore:0.0];
            [v18 setTopicalityScore:-1.0];
            if ([v15 topHit] == 1)
            {
              v19 = [v18 bundleIDType];
              v20 = 0.85;
              if ((v19 & 0x180060000000001) == 0)
              {
                v21 = [v18 bundleIDType];
                v20 = 0.6;
                if ((v21 & 0x200500000000000) == 0)
                {
                  v22 = [v18 bundleIDType];
                  v20 = 0.3;
                  if ((v22 & 0x200000000000) == 0)
                  {
                    v23 = [v18 bundleIDType];
                    v20 = 0.53;
                    if ((v23 & 0x80000000000) == 0)
                    {
                      v24 = [v18 bundleIDType];
                      v20 = 0.6;
                      if ((v24 & 0x1000000000000) == 0)
                      {
                        v20 = dbl_1DA0D53A0[([v18 bundleIDType] & 0x10000000000) == 0];
                      }
                    }
                  }
                }
              }

              [v18 setTopicalityScore:v20];
            }

            if (([v18 bundleIDType] & 0x10000000000) != 0)
            {
              v25 = [v15 mapsPersonalizationResult];
              v26 = v25;
              if (v25)
              {
                if ([v25 resultType])
                {
                  v27 = [v26 startEventDate];

                  if (v27)
                  {
                    v28 = [v26 startEventDate];
                    [v28 timeIntervalSinceReferenceDate];
                    v30 = v29 - a4;

                    if (v30 > -3600.0 && v30 < 21600.0)
                    {
                      [v18 setEngagementScore:0.5];
                    }
                  }
                }
              }
            }

            [v18 topicalityScore];
            *&v31 = v31;
            [v18 setKeywordMatchScore:v31];
            [v15 setRankingItem:v18];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v12);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

+ (void)prepareSafariUserTypedURLForTopHitNomination:(id)a3 query:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = SSGeneralLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D9F69000, v7, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] prepareSafariUserTypedURLForTopHitNomination", buf, 2u);
  }

  v8 = [v5 results];
  if ([v8 count])
  {
    v9 = [v5 bundleIdentifier];
    v10 = [v9 isEqualToString:@"com.apple.mobilesafari"];

    if (v10)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v8 = [v5 results];
      v11 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (!v11)
      {
        goto LABEL_25;
      }

      v12 = v11;
      v31 = v5;
      v13 = *v34;
      v32 = v6;
      while (1)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          if (v15)
          {
            v16 = [*(*(&v33 + 1) + 8 * i) resultBundleId];
            if ([v16 isEqualToString:@"com.apple.safari.userTypedURL"])
            {
              v17 = [v15 rankingItem];

              if (v17)
              {
                continue;
              }

              if ([v6 containsString:@"://"])
              {
                v18 = v6;
              }

              else
              {
                v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@", v6];
              }

              v16 = v18;
              v19 = [MEMORY[0x1E695DFF8] URLWithString:v18];
              v20 = v19;
              if (v19)
              {
                v21 = [v19 scheme];
                if (v21)
                {
                  v22 = v21;
                  v23 = [v20 host];

                  if (v23)
                  {
                    [v15 setContentURL:v16];
                    v24 = SSCompactRankingAttrsAlloc(3);
                    SSCompactRankingAttrsUpdateValue(v24, 0xCuLL, v32);
                    SSCompactRankingAttrsUpdateValue(v24, 0xDuLL, v32);
                    SSCompactRankingAttrsUpdateValue(v24, 0x1FuLL, v32);
                    v25 = [[PRSRankingItem alloc] initWithAttrs:v24];
                    [v15 setRankingItem:v25];

                    v26 = [v15 rankingItem];
                    [v26 setBundleIDType:{objc_msgSend(v26, "bundleIDType") | 0x80}];

                    v27 = [v15 rankingItem];
                    [v27 setTopicalityScore:1.0];

                    v28 = [v15 rankingItem];
                    LODWORD(v29) = 1.0;
                    [v28 setKeywordMatchScore:v29];
                  }
                }
              }

              v6 = v32;
            }
          }
        }

        v12 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (!v12)
        {
          v5 = v31;
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
LABEL_25:
  }

  v30 = *MEMORY[0x1E69E9840];
}

+ (id)nominateServerTopHitForSection:(id)a3 queryString:(id)a4 language:(id)a5 currentTime:(double)a6
{
  v94 = *MEMORY[0x1E69E9840];
  v55 = a3;
  v48 = a4;
  v49 = a5;
  if (nominateServerTopHitForSection_queryString_language_currentTime__onceToken != -1)
  {
    +[SSRankingManager nominateServerTopHitForSection:queryString:language:currentTime:];
  }

  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy__1;
  v90 = __Block_byref_object_dispose__1;
  v9 = MEMORY[0x1E695DF70];
  v10 = [v55 results];
  v91 = [v9 arrayWithArray:v10];

  v11 = [v55 results];
  LODWORD(v9) = [v11 count] == 0;

  if (v9)
  {
    v43 = v87[5];
  }

  else
  {
    v50 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v12 = v87[5];
    v13 = [v12 countByEnumeratingWithState:&v82 objects:v93 count:16];
    if (v13)
    {
      v14 = *v83;
      v15 = 3;
LABEL_6:
      v16 = 0;
      v53 = v15 - v13;
      while (1)
      {
        if (*v83 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v82 + 1) + 8 * v16);
        if (!v17)
        {
          break;
        }

        if (v15 == v16)
        {
          goto LABEL_17;
        }

        v18 = [*(*(&v82 + 1) + 8 * v16) rankingItem];
        v19 = [v18 bundleIDType];

        if ((v19 & 0x20000000000) != 0)
        {
          v21 = [v17 identifier];
          v20 = [v21 componentsSeparatedByString:@"-"];

          if ([v20 count] != 3)
          {
            v43 = v87[5];

            goto LABEL_37;
          }

          v22 = MEMORY[0x1E696AEC0];
          v23 = [v20 objectAtIndexedSubscript:1];
          v24 = [v22 stringWithFormat:@"st:%@", v23];
          [v50 addObject:v24];
        }

        else
        {
          v20 = [v17 identifier];
          [v50 addObject:v20];
        }

        if (v13 == ++v16)
        {
          v13 = [v12 countByEnumeratingWithState:&v82 objects:v93 count:16];
          v15 = v53;
          if (v13)
          {
            goto LABEL_6;
          }

          goto LABEL_17;
        }
      }

      v43 = v87[5];
LABEL_37:

      goto LABEL_38;
    }

LABEL_17:

    if ([v50 count])
    {
      v25 = [objc_alloc(MEMORY[0x1E6964DF0]) initWithQuery:v48 language:v49 fuzzyThreshold:0 options:0];
      [v25 setMatchOncePerTerm:0];
      v54 = _os_feature_enabled_impl();
      v81[0] = 0;
      v81[1] = v81;
      v81[2] = 0x2020000000;
      v81[3] = [v50 count];
      v79[0] = 0;
      v79[1] = v79;
      v79[2] = 0x3032000000;
      v79[3] = __Block_byref_object_copy__1;
      v79[4] = __Block_byref_object_dispose__1;
      v80 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __84__SSRankingManager_nominateServerTopHitForSection_queryString_language_currentTime___block_invoke_549;
      aBlock[3] = &unk_1E85958E0;
      v26 = v50;
      v75 = v26;
      v77 = &v86;
      v46 = v25;
      v76 = v46;
      v78 = a6;
      v27 = _Block_copy(aBlock);
      v68 = 0;
      v69 = &v68;
      v70 = 0x3032000000;
      v71 = __Block_byref_object_copy__1;
      v72 = __Block_byref_object_dispose__1;
      v73 = 0;
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __84__SSRankingManager_nominateServerTopHitForSection_queryString_language_currentTime___block_invoke_2;
      v62[3] = &unk_1E8595908;
      v65 = v81;
      v66 = v79;
      v28 = v26;
      v63 = v28;
      v29 = v27;
      v64 = v29;
      v67 = &v68;
      v52 = _Block_copy(v62);
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __84__SSRankingManager_nominateServerTopHitForSection_queryString_language_currentTime___block_invoke_3;
      v60[3] = &unk_1E8595930;
      v47 = v29;
      v61 = v47;
      v51 = _Block_copy(v60);
      if (v54)
      {
        v30 = dispatch_group_create();
        v31 = v69[5];
        v69[5] = v30;
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v32 = nominateServerTopHitForSection_queryString_language_currentTime__protectionClasses;
      v33 = [v32 countByEnumeratingWithState:&v56 objects:v92 count:16];
      if (v33)
      {
        v34 = *v57;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v57 != v34)
            {
              objc_enumerationMutation(v32);
            }

            v36 = *(*(&v56 + 1) + 8 * i);
            if (v54)
            {
              dispatch_group_enter(v69[5]);
              v37 = [MEMORY[0x1E6964E78] defaultSearchableIndex];
              v38 = nominateServerTopHitForSection_queryString_language_currentTime__sServerEngagementAttributes;
              v39 = [v55 bundleIdentifier];
              [v37 slowFetchAttributes:v38 protectionClass:v36 bundleID:v39 identifiers:v28 completionHandler:v52];
            }

            else
            {
              v37 = [MEMORY[0x1E69D3DC0] sharedInstance];
              v40 = nominateServerTopHitForSection_queryString_language_currentTime__sServerEngagementAttributes;
              v39 = [v55 bundleIdentifier];
              [v37 fetchAttributesForProtectionClass:v36 attributes:v40 bundleID:v39 identifiers:v28 completion:v51];
            }
          }

          v33 = [v32 countByEnumeratingWithState:&v56 objects:v92 count:16];
        }

        while (v33);
      }

      if (v54)
      {
        v41 = v69[5];
        v42 = dispatch_time(0, 300000000);
        dispatch_group_wait(v41, v42);
      }

      v43 = v87[5];

      _Block_object_dispose(&v68, 8);
      _Block_object_dispose(v79, 8);

      _Block_object_dispose(v81, 8);
    }

    else
    {
      v43 = v87[5];
    }

LABEL_38:
  }

  _Block_object_dispose(&v86, 8);

  v44 = *MEMORY[0x1E69E9840];

  return v43;
}

void __84__SSRankingManager_nominateServerTopHitForSection_queryString_language_currentTime___block_invoke()
{
  v9[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69649B0];
  v9[0] = *MEMORY[0x1E69649C0];
  v9[1] = v0;
  v1 = *MEMORY[0x1E69649B8];
  v9[2] = *MEMORY[0x1E69649C8];
  v9[3] = v1;
  v2 = *MEMORY[0x1E6964548];
  v9[4] = *MEMORY[0x1E6964558];
  v9[5] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:6];
  v4 = nominateServerTopHitForSection_queryString_language_currentTime__sServerEngagementAttributes;
  nominateServerTopHitForSection_queryString_language_currentTime__sServerEngagementAttributes = v3;

  v8[0] = *MEMORY[0x1E696A388];
  v8[1] = @"Priority";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = nominateServerTopHitForSection_queryString_language_currentTime__protectionClasses;
  nominateServerTopHitForSection_queryString_language_currentTime__protectionClasses = v5;

  v7 = *MEMORY[0x1E69E9840];
}

void __84__SSRankingManager_nominateServerTopHitForSection_queryString_language_currentTime___block_invoke_549(uint64_t a1, void *a2)
{
  v54 = a2;
  if ([v54 count] && objc_msgSend(*(a1 + 32), "count"))
  {
    v3 = 0;
    v4 = &unk_1ECB9F000;
    v5 = 0x1E695D000uLL;
    while (1)
    {
      v6 = [*(a1 + 32) objectAtIndexedSubscript:v3];
      v7 = [v54 objectForKeyedSubscript:v6];

      v8 = [v7 count];
      if (v8 == [v4[104] count])
      {
        v9 = [v7 objectAtIndexedSubscript:0];
        v10 = *(v5 + 3784);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_28;
        }

        v11 = [v7 objectAtIndexedSubscript:1];
        v12 = *(v5 + 3784);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_27;
        }

        v13 = [v7 objectAtIndexedSubscript:2];
        v14 = *(v5 + 3784);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_26;
        }

        v15 = [v7 objectAtIndexedSubscript:3];
        v16 = *(v5 + 3784);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          break;
        }
      }

LABEL_29:

      if (++v3 >= [*(a1 + 32) count])
      {
        goto LABEL_30;
      }
    }

    v9 = [v7 objectAtIndexedSubscript:0];
    v11 = [v7 objectAtIndexedSubscript:1];
    v13 = [v7 objectAtIndexedSubscript:2];
    v18 = [v7 objectAtIndexedSubscript:3];
    v19 = [v7 objectAtIndexedSubscript:4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = v18;
      v20 = [v7 objectAtIndexedSubscript:5];
      objc_opt_class();
      v21 = objc_opt_isKindOfClass();

      if (v21)
      {
        v53 = [v7 objectAtIndexedSubscript:4];
        v22 = [v7 objectAtIndexedSubscript:5];
        if (v22)
        {
          v23 = v22;
          v19 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v3];
          v24 = [v19 rankingItem];
          v25 = v23;
          [v24 setLastUsedDate:v23];

          v18 = v51;
LABEL_14:

          goto LABEL_17;
        }

        v25 = 0;
      }

      else
      {
        v25 = 0;
        v53 = &stru_1F556FE60;
      }

LABEL_17:
      v26 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v3];
      v27 = [v26 rankingItem];
      v52 = v25;
      LODWORD(v28) = -1.0;
      [v27 inSpotlightEngagementScoreWithEvaluator:*(a1 + 40) currentTime:v9 queriesInSpotlight:v11 datesInSpotlight:v13 queriesInSpotlightNonUnique:v18 datesInSpotlightNonUnique:v53 launchString:*(a1 + 56) lastUsedDate:v28 topicalityScore:v25];
      v30 = v29;

      if (v30 <= 0.0)
      {
        goto LABEL_25;
      }

      v31 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v3];
      v32 = [v31 rankingItem];
      [v32 setWasEngaged:1];

      v33 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v3];
      v34 = [v33 rankingItem];
      [v34 setWasEngagedInSpotlight:1];

      v35 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v3];
      v36 = [v35 rankingItem];
      [v36 engagementScore];
      v38 = v37;

      if (v38 < v30)
      {
        v38 = v30;
      }

      v39 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v3];
      v40 = [v39 rankingItem];
      [v40 setEngagementScore:v38];

      v41 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v3];
      v42 = [v41 rankingItem];
      if (([v42 bundleIDType] & 0x10000000000) != 0 && v30 >= 0.5)
      {
        [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v3];
        v43 = v50 = v41;
        v44 = [v43 rankingItem];
        [v44 topicalityScore];
        v46 = v45;

        if (v46 > 0.0)
        {
          goto LABEL_25;
        }

        v47 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v3];
        v48 = [v47 rankingItem];
        [v48 setTopicalityScore:0.5];

        v41 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v3];
        v42 = [v41 rankingItem];
        LODWORD(v49) = 0.5;
        [v42 setKeywordMatchScore:v49];
      }

LABEL_25:
      v5 = 0x1E695D000;
      v4 = &unk_1ECB9F000;
LABEL_26:

LABEL_27:
LABEL_28:

      goto LABEL_29;
    }

    v25 = 0;
    v53 = &stru_1F556FE60;
    goto LABEL_14;
  }

LABEL_30:
}

void __84__SSRankingManager_nominateServerTopHitForSection_queryString_language_currentTime___block_invoke_2(void *a1, void *a2)
{
  v17 = a2;
  if (![v17 count])
  {
LABEL_10:
    v16 = *(*(a1[7] + 8) + 40);
    (*(a1[5] + 16))();
    dispatch_group_leave(*(*(a1[8] + 8) + 40));
    v4 = v17;
    goto LABEL_11;
  }

  v3 = [v17 count] == *(*(a1[6] + 8) + 24);
  v4 = v17;
  if (v3)
  {
    v5 = objc_opt_new();
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [v17 count];
    if (v8)
    {
      v9 = v8;
      for (i = 0; i != v9; ++i)
      {
        v11 = [v17 objectAtIndexedSubscript:i];
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = *(*(a1[7] + 8) + 40);
            v13 = a1[4];
            v14 = v11;
            v15 = [v13 objectAtIndexedSubscript:i];
            [v12 setObject:v14 forKey:v15];
          }
        }
      }
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (id)makeTopHitSectionUsingSections:(id)a3 withItemRanker:(id)a4 sectionHeader:(id)a5 shortcutResult:(id)a6 isBullseyeNonCommittedSearch:(BOOL)a7 isBullseyeCommittedSearch:(BOOL)a8 parsecEnabled:(BOOL)a9 maxNumAppsInTopHitSection:(unint64_t)a10
{
  v266 = a8;
  v250 = a7;
  v349 = *MEMORY[0x1E69E9840];
  v239 = a3;
  v273 = a4;
  v236 = a5;
  v299 = a6;
  v241 = +[SSRankingManager getLegacyTophitSection];
  v13 = [v241 containsObject:@"none"];
  v244 = [v241 containsObject:@"nocontact"];
  v229 = [v241 containsObject:@"noshortcut"];
  v254 = [v241 containsObject:@"noappnonexactmatch"];
  v253 = [v241 containsObject:@"nophotos"];
  if (v266 && (v13 & 1) != 0)
  {
    v14 = 0;
    goto LABEL_367;
  }

  v332 = 0;
  v333 = &v332;
  v334 = 0x3032000000;
  v335 = __Block_byref_object_copy__1;
  v336 = __Block_byref_object_dispose__1;
  v337 = objc_opt_new();
  v326 = 0;
  v327 = &v326;
  v328 = 0x3032000000;
  v329 = __Block_byref_object_copy__1;
  v330 = __Block_byref_object_dispose__1;
  v331 = 0;
  [v333[5] setBundleIdentifier:@"com.apple.spotlight.tophits"];
  [v333[5] setTitle:v236];
  [v333[5] setMaxInitiallyVisibleResults:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __190__SSRankingManager_makeTopHitSectionUsingSections_withItemRanker_sectionHeader_shortcutResult_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_parsecEnabled_maxNumAppsInTopHitSection___block_invoke;
  aBlock[3] = &unk_1E8595958;
  aBlock[4] = &v326;
  aBlock[5] = &v332;
  v240 = _Block_copy(aBlock);
  v15 = [v299 identifier];
  if (!v15)
  {
    goto LABEL_29;
  }

  v16 = [v299 type] == 3;

  if (!v16)
  {
    goto LABEL_29;
  }

  v323 = 0u;
  v324 = 0u;
  v321 = 0u;
  v322 = 0u;
  obj = v239;
  v17 = [obj countByEnumeratingWithState:&v321 objects:v348 count:16];
  if (!v17)
  {

LABEL_28:
    v299 = 0;
    goto LABEL_29;
  }

  v297 = 0;
  obj_8 = *v322;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v322 != obj_8)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v321 + 1) + 8 * i);
      if ([v19 domain] == 1)
      {
        v319 = 0u;
        v320 = 0u;
        v317 = 0u;
        v318 = 0u;
        v20 = [v19 resultSet];
        v21 = [v20 countByEnumeratingWithState:&v317 objects:v347 count:16];
        if (v21)
        {
          v22 = *v318;
          while (2)
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v318 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = *(*(&v317 + 1) + 8 * j);
              v25 = [v24 identifier];
              v26 = [v299 identifier];
              v27 = [v25 isEqualToString:v26];

              if (v27)
              {
                v28 = v24;

                v297 = 1;
                v299 = v28;
                goto LABEL_22;
              }
            }

            v21 = [v20 countByEnumeratingWithState:&v317 objects:v347 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:
      }
    }

    v17 = [obj countByEnumeratingWithState:&v321 objects:v348 count:16];
  }

  while (v17);

  if ((v297 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_29:
  v315 = 0u;
  v316 = 0u;
  v313 = 0u;
  v314 = 0u;
  v290 = v239;
  v29 = [v290 countByEnumeratingWithState:&v313 objects:v346 count:16];
  v248 = v29 != 0;
  v30 = 0;
  if (v29)
  {
    v31 = *v314;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v314 != v31)
        {
          objc_enumerationMutation(v290);
        }

        v33 = *(*(&v313 + 1) + 8 * k);
        v34 = [v33 bundleIdentifier];
        v35 = [v34 isEqualToString:@"com.apple.MobileAddressBook"];

        if (v35)
        {
          v36 = v33;

          v30 = v36;
        }
      }

      v29 = [v290 countByEnumeratingWithState:&v313 objects:v346 count:16];
    }

    while (v29);

    if (!v30)
    {
      v248 = 0;
      v39 = -3.4028e38;
      goto LABEL_48;
    }

    v37 = [v30 results];
    v38 = 0;
    v39 = -3.4028e38;
    while (v38 < [v37 count])
    {
      v40 = [v37 objectAtIndex:v38];
      v41 = [v40 rankingItem];
      v42 = [v41 L2FeatureVector];
      [v42 scoreForFeature:165];
      v44 = v43;

      if (v44 == 0.0)
      {
        v45 = [v41 L2FeatureVector];
        [v45 originalL2Score];
        v47 = v46;

        if (v47 > v39)
        {
          v39 = v47;
        }
      }

      ++v38;
    }
  }

  else
  {
    v39 = -3.4028e38;
    v37 = v290;
  }

LABEL_48:
  v228 = v30;
  if (v299)
  {
    v298 = 0;
    obja = 0uLL;
    v296 = 0;
    goto LABEL_70;
  }

  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v283 = v290;
  v48 = [v283 countByEnumeratingWithState:&v309 objects:v345 count:16];
  if (!v48)
  {
    v49 = 0;
    v298 = 0;
    obja = 0uLL;
    v296 = 0;
    v299 = 0;
    goto LABEL_69;
  }

  v287 = v48;
  v49 = 0;
  v298 = 0;
  obja = 0uLL;
  v296 = 0;
  v299 = 0;
  v285 = *v310;
  do
  {
    for (m = 0; m != v287; ++m)
    {
      if (*v310 != v285)
      {
        objc_enumerationMutation(v283);
      }

      v50 = *(*(&v309 + 1) + 8 * m);
      v51 = [v50 results];
      for (n = 0; n < [v51 count]; ++n)
      {
        v53 = [v51 objectAtIndex:n];
        v54 = [v53 rankingItem];
        if (![v54 hasShortCut])
        {
          goto LABEL_64;
        }

        v55 = SSCompactRankingAttrsGetValue([v54 attributes], 0x52uLL);

        if (*(&obja + 1) && v55)
        {
          if ([*(&obja + 1) compare:v55] != -1)
          {
            goto LABEL_61;
          }
        }

        else if (obja != 0)
        {
LABEL_61:
          v49 = v55;
          goto LABEL_64;
        }

        v56 = v50;

        v57 = v53;
        v58 = [v57 rankingItem];

        v49 = v55;
        *&obja = v57;

        *(&obja + 1) = v49;
        v298 = v58;
        v296 = v56;
        v299 = obja;
LABEL_64:
      }
    }

    v287 = [v283 countByEnumeratingWithState:&v309 objects:v345 count:16];
  }

  while (v287);
LABEL_69:

LABEL_70:
  v247 = [v273 queryTermLength];
  v307 = 0u;
  v308 = 0u;
  v305 = 0u;
  v306 = 0u;
  v252 = v290;
  v59 = [v252 countByEnumeratingWithState:&v305 objects:v344 count:16];
  if (v59)
  {
    v60 = 0;
    v230 = 0;
    v61 = 0;
    v272 = 0;
    v234 = 0;
    v235 = 0;
    v243 = 0;
    v238 = 0;
    v251 = 0;
    v257 = 0;
    v258 = v59;
    v259 = *v306;
    v275 = *MEMORY[0x1E6963B90];
    while (1)
    {
      v270 = 0;
      do
      {
        if (*v306 != v259)
        {
          objc_enumerationMutation(v252);
        }

        if (v60)
        {
          goto LABEL_309;
        }

        v62 = *(*(&v305 + 1) + 8 * v270);
        v288 = [v62 results];
        v276 = [v62 bundleIdentifier];
        allowedTopHitSections = self->_allowedTopHitSections;
        v279 = v62;
        v64 = [v62 bundleIdentifier];
        v278 = [(NSSet *)allowedTopHitSections containsObject:v64];

        if (v278)
        {
          v65 = [v279 resultSet];
          v303[0] = MEMORY[0x1E69E9820];
          v303[1] = 3221225472;
          v303[2] = __190__SSRankingManager_makeTopHitSectionUsingSections_withItemRanker_sectionHeader_shortcutResult_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_parsecEnabled_maxNumAppsInTopHitSection___block_invoke_2;
          v303[3] = &unk_1E8595980;
          v304 = v273;
          v66 = [v65 sortedArrayWithOptions:16 usingComparator:v303];

          v67 = [v279 bundleIdentifier];
          v68 = [v67 isEqualToString:@"com.apple.mobilesafari"];

          if (v68)
          {
            [SSRankingManager moveSafariTopHitsToTopOfSection:v279];
          }

          v288 = v66;
        }

        if ((SSSectionIsSyndicatedPhotos(v276) & 1) == 0)
        {
          v69 = [v279 bundleIdentifier];
          v284 = [v69 isEqualToString:@"com.apple.application"];

          if (v284)
          {
            [v288 count];
            v70 = 0;
            v269 = 0;
            v71 = 0;
          }

          else
          {
            v72 = [v279 bundleIdentifier];
            v73 = [v72 isEqualToString:@"com.apple.app-clips"];

            if (v73)
            {
              v269 = 0;
              v71 = 0;
              v70 = 1;
            }

            else
            {
              v74 = [v279 bundleIdentifier];
              v75 = [v74 isEqualToString:@"com.apple.Preferences"];

              if (v75)
              {
                v70 = 0;
                v71 = 0;
                v269 = 1;
              }

              else
              {
                v76 = [v279 bundleIdentifier];
                if ([v76 isEqualToString:@"com.apple.mobileslideshow"])
                {
                  v71 = 1;
                }

                else
                {
                  v77 = [v279 bundleIdentifier];
                  v71 = [v77 isEqualToString:@"com.apple.searchd.syndicatedPhotos"];
                }

                v70 = 0;
                v269 = 0;
              }
            }
          }

          v291 = 0;
          v256 = v284 | v70;
          v249 = v71 ^ 1;
          v267 = v71;
          v245 = v254 & v71 & v253 ^ 1;
          while (2)
          {
            if (v291 >= [v288 count])
            {
              goto LABEL_81;
            }

            v78 = [v288 objectAtIndex:?];
            v79 = [v78 rankingItem];
            v280 = [v79 topHitReason];
            v294 = [v78 userActivityType];
            if (v294)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (([v294 isEqualToString:v275] & 1) == 0)
                {
                  v286 = v61;
LABEL_294:

                  ++v291;
                  v61 = v286;
                  continue;
                }
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v80 = MEMORY[0x1E69E9C10];
                  v81 = MEMORY[0x1E69E9C10];
                  if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
                  {
                    v150 = [v78 resultBundleId];
                    *buf = 138412546;
                    v339 = v294;
                    v340 = 2112;
                    v341 = v150;
                    _os_log_fault_impl(&dword_1D9F69000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "result.userActivityType(%@) isKindOfClass NSArray class, result.resultBundleId(%@)", buf, 0x16u);

                    v80 = MEMORY[0x1E69E9C10];
                  }
                }
              }
            }

            break;
          }

          if (v284)
          {
            if ([v79 didMatchRankingDescriptor:@"kMDItemAlternateNameExactMatch"])
            {
              v281 = 1;
            }

            else
            {
              v82 = [v79 displayNameInitials];
              v281 = v82 != 0;
            }
          }

          else
          {
            v281 = 0;
          }

          if (v299)
          {
            v83 = v78 == v299;
          }

          else
          {
            v83 = 0;
          }

          v84 = v83;
          v282 = v84;
          if (v83)
          {
            [v78 setTopHit:{SSSetTopHitWithReasonString(2, v78, @"shortcutResult match", 1)}];
            v286 = SSCompactRankingAttrsGetValue([v79 attributes], 0x187uLL);

            if ([v78 forceNoTopHit])
            {
              [v78 setForceNoTopHit:0];
              [v78 setTopHit:{SSSetTopHitWithReasonString(1, v78, @"hasShortCut Safar edge case", 1)}];
            }
          }

          else
          {
            v286 = v61;
          }

          v85 = [v78 type];
          v86 = v284 ^ 1;
          if (v85 != 26)
          {
            v86 = 1;
          }

          if ((v86 & 1) == 0)
          {
            v87 = [v78 rankingItem];
            v88 = [v87 L2FeatureVector];
            [v88 originalL2Score];
            v90 = v89 == 0.0;

            if (v90)
            {
              goto LABEL_294;
            }
          }

          v91 = [v279 bundleIdentifier];
          if ([v91 isEqualToString:@"com.apple.dictionary"])
          {
            v92 = [v78 topHit] == 2;

            if ((v92 & (v278 | v282) & 1) == 0)
            {
              goto LABEL_294;
            }
          }

          else
          {

            if ((v278 | v282) != 1)
            {
              goto LABEL_294;
            }
          }

          if ([v78 topHit] == 0 && !v281 && (objc_msgSend(v79, "shouldHideUnderShowMore") & 1) != 0 || (v282 | objc_msgSend(v78, "forceNoTopHit") ^ 1) != 1)
          {
            goto LABEL_294;
          }

          v93 = [(SSRankingManager *)self rankingConfiguration];
          [v93 lock];

          v94 = PRSLogCategoryDefault();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
          {
            v151 = [(SSRankingManager *)self query];
            v152 = [(SSRankingManager *)self rankingConfiguration];
            v153 = [v152 cepBlocklistSet];
            [v78 applicationBundleIdentifier];
            v154 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412802;
            v339 = v151;
            v340 = 2112;
            v341 = v153;
            v342 = 2112;
            v343 = v154;
            _os_log_debug_impl(&dword_1D9F69000, v94, OS_LOG_TYPE_DEBUG, "query %@: blocklist %@, result app bundleid %@", buf, 0x20u);
          }

          v95 = [v78 applicationBundleIdentifier];
          if (v95)
          {
            v96 = [(SSRankingManager *)self rankingConfiguration];
            v97 = [v96 cepBlocklistSet];
            if (v97)
            {
              v98 = [(SSRankingManager *)self rankingConfiguration];
              v99 = [v98 cepBlocklistSet];
              v100 = [v78 applicationBundleIdentifier];
              v101 = [v100 lowercaseString];
              v102 = [v99 containsObject:v101];

              if (v102)
              {
                goto LABEL_294;
              }
            }

            else
            {
            }
          }

          v103 = [(SSRankingManager *)self rankingConfiguration];
          [v103 unlock];

          v104 = [v79 lastAccessDate];

          if ((v282 & (*(&obja + 1) != 0)) == 1 && v104)
          {
            v272 = [*(&obja + 1) laterDate:v104];
          }

          else
          {
            v272 = v104;
          }

          v274 = [v79 bundleIDType];
          v263 = [v79 bundleIDType];
          if (([v79 bundleIDType] & 0x40000) != 0)
          {
            v105 = [v78 contentType];
            v264 = [v105 isEqualToString:@"com.apple.quicktime-movie"];
          }

          else
          {
            v264 = 0;
          }

          [v273 currentTime];
          v107 = v106;
          [v272 timeIntervalSinceReferenceDate];
          if ((v274 & 4) != 0)
          {
            if ((v108 <= 0.0 || v108 < v107 + -47304000.0) && ([v273 wasItemCreatedWithinAWeek:v79] & 1) == 0)
            {
              goto LABEL_294;
            }

            if ([v273 queryTermCount] == 1)
            {
              v109 = [v79 firstMatchedAltName];
              v110 = v109 == 0;

              if (v110 && (*[(PRSRankingItem *)v79 attrCountsPrefix]& 0x82) != 0 && (*[(PRSRankingItem *)v79 attrCountsPrefix]& 0xFFFFFFFFFFFFFF7DLL) == 0)
              {
                goto LABEL_294;
              }
            }
          }

          if ([v79 didMatchRankingDescriptor:@"kMDItemDisplayNameOrSubjectOrTitleNonTokenizedPrefixMatch"])
          {
            v111 = 1;
          }

          else
          {
            v112 = [v279 bundleIdentifier];
            if ([v112 isEqualToString:@"com.apple.mobilesafari"] && objc_msgSend(v78, "topHit") >= 1)
            {
              v111 = [v78 forceNoTopHit] ^ 1;
            }

            else
            {
              v111 = 0;
            }
          }

          if ([v79 didMatchRankingDescriptor:@"kMDItemDisplayNameOrSubjectOrTitleNonTokenizedWordMatch"])
          {
            v113 = 1;
          }

          else
          {
            v114 = [v79 L2FeatureVector];
            v113 = [v114 displayNameFuzzySpecialInsertion];
          }

          v271 = [v79 didMatchRankingDescriptor:@"kMDItemDisplayNameOrSubjectOrTitleExactMatch"];
          v268 = [v79 didMatchRankingDescriptor:@"kMDItemDisplayNameOrSubjectOrTitleTokenizedPrefixMatch"];
          v115 = [v79 didMatchRankingDescriptor:@"kMDItemAlternateNameExactMatch"];
          if (v284)
          {
            v116 = [v79 L2FeatureVector];
            [v116 scoreForFeature:2327];
            v118 = v117 != 0.0;

            v119 = [v79 L2FeatureVector];
            [v119 scoreForFeature:1614];
            v121 = v120;

            v122 = [v79 L2FeatureVector];
            [v122 scoreForFeature:189];
            v124 = v123;

            v125 = v124 != 2147500000.0 || v247 > 4;
            v126 = v121 == 0.0 && v125;
            if ((v248 & v126) == 1)
            {
              v127 = [v79 L2FeatureVector];
              [v127 originalL2Score];
              v129 = v128 < v39;

              v126 = !v129;
            }

            v131 = [v79 L2FeatureVector];
            [v131 scoreForFeature:1621];
            v133 = v132;

            v134 = v133 == 0.0;
            v135 = [v79 L2FeatureVector];
            [v135 scoreForFeature:34];
            v137 = v136;

            v265 = v134 && v125;
            v130 = v137 != 1.0;
          }

          else
          {
            v118 = 0;
            v126 = 0;
            v265 = 0;
            v130 = 1;
          }

          v262 = v130;
          v138 = [v273 isAltNamePrefixMatchOnlyTopHitExcludedQuery];
          if ((v111 | v113 | v271 | v268))
          {
            v139 = 1;
          }

          else
          {
            v139 = (v115 | v118 | v126 | v281) & (v138 & v250 ^ 1);
          }

          if (v269)
          {
            if ([v79 topHitReason] == 15)
            {
              v139 = 1;
            }

            else
            {
              v139 = (v291 == 0) & v139;
            }
          }

          if (v280 == 16)
          {
            v140 = v267;
          }

          else
          {
            v140 = 0;
          }

          if ((([v276 isEqualToString:@"com.apple.calculation"] & 1) != 0 || (objc_msgSend(v276, "isEqualToString:", @"com.apple.conversion") & 1) != 0 || (objc_msgSend(v276, "isEqualToString:", @"com.apple.worldclock") & 1) != 0 || objc_msgSend(v276, "isEqualToString:", @"com.apple.datadetector.quick_actions")) && objc_msgSend(v78, "topHit") == 2)
          {
            v189 = [v333[5] results];
            v190 = v189 == 0;

            if (v190)
            {
              v191 = objc_opt_new();
              [v333[5] setResults:v191];
            }

            if ([v333[5] resultsCount])
            {
              [v333[5] removeResultsInRange:{0, objc_msgSend(v333[5], "resultsCount")}];
            }

            [v333[5] setRelatedSectionBundleIdentifier:v276];
            [v333[5] addResults:v78 atIndex:0];
            v60 = 1;
            v230 = 1;
            goto LABEL_305;
          }

          v141 = [v333[5] resultsCount];
          v142 = [v333[5] maxInitiallyVisibleResults];
          v143 = v269 ^ 1;
          if (v141 < v142)
          {
            v143 = 1;
          }

          if ((v143 & 1) == 0 && [v79 topHitReason] == 15)
          {
            v192 = [v333[5] results];
            v193 = v192 == 0;

            if (v193)
            {
              v194 = objc_opt_new();
              [v333[5] setResults:v194];
            }

            if ([v333[5] resultsCount])
            {
              [v333[5] removeResultsInRange:{0, objc_msgSend(v333[5], "resultsCount")}];
            }

            [v333[5] setRelatedSectionBundleIdentifier:v276];
            [v333[5] addResults:v78 atIndex:0];
            v60 = 0;
LABEL_305:

            v61 = v286;
            goto LABEL_82;
          }

          v261 = [v79 displayNameInitialsPrefixMatchOnly];
          v260 = [v79 displayNameInitialsFirstWordAndMoreMatchOnly];
          v144 = [v333[5] resultsCount];
          v145 = v140 | v139;
          if (v144 >= [v333[5] maxInitiallyVisibleResults])
          {
            goto LABEL_231;
          }

          if ((v274 & 4) == 0 || ([v78 contactIdentifier], v255 = objc_claimAutoreleasedReturnValue(), v271 & 1 | ((objc_msgSend(v255, "isEqualToString:", sMeContactIdentifier) & 1) == 0)))
          {
            if (v145 & 1) != 0 || ([v279 bundleIdentifier], v246 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v246, "isEqualToString:", @"com.apple.calculation")))
            {
              v146 = 0;
              v147 = 0;
              goto LABEL_190;
            }

            v242 = [v279 bundleIdentifier];
            if ([v242 isEqualToString:@"com.apple.conversion"])
            {
              v147 = 0;
              v146 = 1;
              goto LABEL_190;
            }

            v237 = [v279 bundleIdentifier];
            if ([v237 isEqualToString:@"com.apple.worldclock"])
            {
              v146 = 1;
              v147 = 1;
LABEL_190:
              v148 = 0;
              if ((v266 & v244 & ((v274 & 4) != 0)) != 0)
              {
                v149 = 0;
                goto LABEL_220;
              }

LABEL_205:
              if ((v284 & v266 ^ 1 | v271 | v265))
              {
                v155 = 0;
                goto LABEL_212;
              }

              if ((((v262 | v261) | v260) & 1) != 0 || ([v79 displayNameInitials], (v232 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v155 = (v262 | v261 | v260) ^ 1;
                if (v254)
                {
LABEL_223:
                  v149 = 0;
                  if ((v155 & 1) == 0)
                  {
                    goto LABEL_224;
                  }

LABEL_219:

                  if ((v148 & 1) == 0)
                  {
                    goto LABEL_220;
                  }

LABEL_225:

                  if ((v147 & 1) == 0)
                  {
                    goto LABEL_226;
                  }

LABEL_221:

                  if ((v146 & 1) == 0)
                  {
                    goto LABEL_228;
                  }

LABEL_227:

                  goto LABEL_228;
                }
              }

              else
              {
                v232 = 0;
                v155 = 1;
              }

LABEL_212:
              if (!(v284 & 1 | ((v282 & v266 & 1) == 0) | (v229 ^ 1) & 1))
              {
                goto LABEL_223;
              }

              v149 = 1;
              if (v266 && (v263 & 0x40000) != 0)
              {
                if (v280 == 16)
                {
                  v149 = v253 ^ 1;
                }

                else
                {
                  v149 = 1;
                }
              }

              if (v155)
              {
                goto LABEL_219;
              }

LABEL_224:
              if (v148)
              {
                goto LABEL_225;
              }

LABEL_220:
              if (v147)
              {
                goto LABEL_221;
              }

LABEL_226:
              if (v146)
              {
                goto LABEL_227;
              }

LABEL_228:
              if (v145)
              {
                if ((v274 & 4) != 0)
                {
                  goto LABEL_230;
                }

LABEL_242:
                if (v149)
                {
                  goto LABEL_243;
                }
              }

              else
              {

                if (((v274 >> 2) & 1) == 0)
                {
                  goto LABEL_242;
                }

LABEL_230:

                if (v149)
                {
LABEL_243:
                  objc_storeStrong(v327 + 5, v279);
                  v170 = [v279 bundleIdentifier];
                  [v333[5] setRelatedSectionBundleIdentifier:v170];

                  [v333[5] addResults:v78];
                  if ((v274 & 4) == 0)
                  {
                    v238 |= v111 & v284;
                    v251 |= v111;
                    LODWORD(v235) = v113 & v284 | v235;
                    v243 |= v271 & v284;
                    HIDWORD(v234) |= v281 & v284;
                    LODWORD(v234) = v268 & v284 | v234;
                  }

                  goto LABEL_294;
                }
              }

LABEL_231:
              v156 = [v333[5] resultSet];
              v157 = [v156 firstObject];
              v158 = [v157 sectionBundleIdentifier];

              if ([v158 isEqualToString:@"com.apple.calculation"] & 1) != 0 || (objc_msgSend(v158, "isEqualToString:", @"com.apple.conversion") & 1) != 0 || (objc_msgSend(v158, "isEqualToString:", @"com.apple.worldclock"))
              {
                v159 = 1;
              }

              else
              {
                v159 = [v158 isEqualToString:@"com.apple.datadetector.quick_actions"];
              }

              v160 = [v79 L2FeatureVector];
              [v160 originalL2Score];
              v162 = v161;

              v163 = PRSLogCategoryDefault();
              if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
              {
                v172 = [(SSRankingManager *)self query];
                v173 = [v78 applicationBundleIdentifier];
                v174 = v173;
                if (!v173)
                {
                  v227 = [v78 sectionBundleIdentifier];
                  v174 = v227;
                }

                *buf = 138412802;
                v339 = v172;
                v340 = 2112;
                v341 = v174;
                v342 = 2048;
                v343 = v162;
                _os_log_debug_impl(&dword_1D9F69000, v163, OS_LOG_TYPE_DEBUG, "query %@: Top Hit score for result %@ %f", buf, 0x20u);
                if (!v173)
                {
                }
              }

              v164 = [v333[5] results];
              v165 = [v164 count];

              if (!v165)
              {
                goto LABEL_293;
              }

              v166 = [v333[5] resultsAtIndex:0];
              v167 = [v166 rankingItem];
              if (v159)
              {
                goto LABEL_263;
              }

              if (v256)
              {
                goto LABEL_239;
              }

              if ((v249 | v264))
              {
                goto LABEL_263;
              }

              v171 = [v78 sectionBundleIdentifier];
              v233 = v171;
              if (v158 != v171)
              {

                goto LABEL_263;
              }

LABEL_239:
              v168 = v284 & v145 & v266 ^ 1 | v271;
              if ((v168 | v265))
              {
                v169 = v168 ^ 1 | v145;
              }

              else if ((v262 | v261 | v260))
              {
                v169 = v245;
              }

              else
              {
                v175 = [v79 displayNameInitials];
                v176 = v175 != 0;

                v169 = v176 & v254 & v267 & v253 ^ 1;
              }

              if ((v256 & 1) == 0)
              {
              }

              if ((v169 & 1) == 0)
              {
LABEL_263:
                v180 = [v167 L2FeatureVector];
                [v180 originalL2Score];
                v182 = v162 <= v181;

                if (!(v182 | v257 & 1 | ((v274 & 4) == 0) | v251 & 1))
                {
                  if (v271)
                  {
                    v240[2](v240, v78, v279);
                  }

                  v257 = 0;
                }

                goto LABEL_292;
              }

              if (!v166 || ([v167 bundleIDType] & 0x100) != 0)
              {
                v179 = 0;
              }

              else
              {
                v177 = [v167 L2FeatureVector];
                [v177 originalL2Score];
                v179 = v162 < v178;
              }

              if (!(v243 & 1 | ((v271 & 1) == 0)) && !v179)
              {
                v240[2](v240, v78, v279);
                v243 = 1;
                goto LABEL_289;
              }

              v183 = v243 | v238 | v179;
              if (((v111 ^ 1 | v183) & 1) == 0)
              {
                v240[2](v240, v78, v279);
                v243 = 0;
                v238 = 1;
                goto LABEL_289;
              }

              if (((v111 ^ 1 | v235 | v183) & 1) == 0)
              {
                v240[2](v240, v78, v279);
                v243 = 0;
                v238 = 0;
                LODWORD(v235) = 1;
                goto LABEL_289;
              }

              if (((!v281 | HIDWORD(v234) | v235 | v238 | v243 | v179) & 1) == 0)
              {
                v240[2](v240, v78, v279);
                v243 = 0;
                v238 = 0;
                HIDWORD(v234) = 1;
                LODWORD(v235) = 0;
                goto LABEL_289;
              }

              if (((v268 ^ 1 | v234 | v238 | v235 | HIDWORD(v234) | v243 | v179) & 1) == 0)
              {
                v240[2](v240, v78, v279);
                LODWORD(v235) = 0;
                v243 = 0;
                v238 = 0;
                v234 = 1;
                goto LABEL_289;
              }

              v184 = [v78 sectionBundleIdentifier];
              v185 = v184;
              if (v158 == v184)
              {
              }

              else
              {
                if (![v158 isEqualToString:@"com.apple.application"])
                {

                  goto LABEL_286;
                }

                v186 = [v78 sectionBundleIdentifier];
                v187 = [v186 isEqualToString:@"com.apple.app-clips"];

                if (!v187)
                {
LABEL_286:
                  if (v250 && [v288 count] >= 2)
                  {
                    v240[2](v240, v78, v279);
                  }

LABEL_289:
                  v188 = HIDWORD(v235);
                  if (!v284)
                  {
                    v188 = v267 | HIDWORD(v235);
                  }

                  HIDWORD(v235) = v188;
                  v257 |= v284;
LABEL_292:

LABEL_293:
                  goto LABEL_294;
                }
              }

              [v333[5] addResults:v78];
              goto LABEL_289;
            }

            v231 = [v279 bundleIdentifier];
            if ([v231 isEqualToString:@"com.apple.datadetector.quick_actions"])
            {
              if ((v266 & v244 & (v274 >> 2) & 1) != 1)
              {
                v148 = 1;
                v147 = 1;
                v146 = 1;
                goto LABEL_205;
              }
            }

            else
            {

              if (((v274 >> 2) & 1) == 0)
              {
                goto LABEL_231;
              }
            }
          }

          goto LABEL_231;
        }

LABEL_81:
        v60 = 0;
LABEL_82:

        ++v270;
      }

      while (v270 != v258);
      v195 = [v252 countByEnumeratingWithState:&v305 objects:v344 count:16];
      v258 = v195;
      if (!v195)
      {
        goto LABEL_309;
      }
    }
  }

  v230 = 0;
  v61 = 0;
  v272 = 0;
  BYTE4(v235) = 0;
  v257 = 0;
LABEL_309:

  if ((v257 | BYTE4(v235)))
  {
    v196 = 8;
  }

  else
  {
    v196 = 1;
  }

  if (a10)
  {
    v196 = a10;
  }

  v292 = v196;
  v197 = [v333[5] results];
  v289 = [v197 count];
  if (obja)
  {
    v198 = MEMORY[0x1E695DF00];
    [v273 currentTime];
    v295 = [v198 dateWithTimeIntervalSinceReferenceDate:?];
    v199 = objc_alloc(MEMORY[0x1E695DEE8]);
    v200 = [v199 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    v201 = 0;
    v202 = -1;
    v203 = -1;
    while (v201 < [v197 count])
    {
      v204 = [v197 objectAtIndex:v201];
      v205 = v204;
      if (v204 == obja)
      {
        v203 = v201;
      }

      else if (v202 < 0)
      {
        v206 = [v204 rankingItem];
        v207 = SSCompactRankingAttrsGetValue([v206 attributes], 0x20uLL);
        if (!v207 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ((v208 = [v200 isDate:v207 inSameDayAsDate:v295], *(&obja + 1)) ? (v209 = v208) : (v209 = 0), v209 != 1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || objc_msgSend(*(&obja + 1), "compare:", v207) != -1))
        {
          v202 = v201;
        }
      }

      ++v201;
    }
  }

  else
  {
    v202 = -1;
    v203 = -1;
  }

  v210 = [v333[5] resultSet];
  v211 = [v210 firstObject];
  v212 = [v211 sectionBundleIdentifier];

  if (obja)
  {
    if (v289)
    {
      if ((v202 & 0x8000000000000000) == 0 && v202 < v292 && ([v212 isEqualToString:@"com.apple.calculation"] & 1) == 0 && (objc_msgSend(v212, "isEqualToString:", @"com.apple.conversion") & 1) == 0 && (objc_msgSend(v212, "isEqualToString:", @"com.apple.worldclock") & 1) == 0 && (objc_msgSend(v212, "isEqualToString:", @"com.apple.datadetector.quick_actions") & 1) == 0 && ((objc_msgSend(v212, "isEqualToString:", @"com.apple.application") & 1) != 0 || objc_msgSend(v212, "isEqualToString:", @"com.apple.app-clips")))
      {
        v213 = [obja sectionBundleIdentifier];
        if ([v213 isEqualToString:@"com.apple.application"])
        {
          v214 = 0;
          v215 = 1;
        }

        else
        {
          v226 = [v213 isEqualToString:@"com.apple.application"];
          if (v202)
          {
            v215 = v226;
          }

          else
          {
            v215 = 1;
          }

          v214 = (v202 == 0) & ~v226;
        }

        goto LABEL_346;
      }
    }

    else
    {
      v202 = 0;
      v214 = 0;
      v215 = 1;
LABEL_346:
      if (!v215 || v203 < 0 || v203 > v202)
      {
        if (v215 && (v266 & v229 & 1) == 0)
        {
          [(NSMutableString *)self->_logValues insertString:@"Top Hit is a shortcut result\n" atIndex:0];
          if ((v203 & 0x8000000000000000) == 0)
          {
            v216 = [v333[5] resultSet];
            [v216 removeObject:obja];
          }

          [v333[5] addResults:obja atIndex:v202];
          [v298 setTopHitReason:17];
          if (v292 >= 1 && [v333[5] resultsCount] > v292)
          {
            [v333[5] removeResultsAtIndex:{objc_msgSend(v333[5], "resultsCount") - 1}];
          }

          if (v214)
          {
            [v333[5] removeResultsInRange:{1, objc_msgSend(v333[5], "resultsCount") - 1}];
          }

          if (v296 && !v202)
          {
            objc_storeStrong(v327 + 5, v296);
            v217 = [v296 bundleIdentifier];
            [v333[5] setRelatedSectionBundleIdentifier:v217];
          }

          v218 = [obja sectionBundleIdentifier];
          v219 = [(SSRankingManager *)self rankingConfiguration];
          [v219 setShortcutSectionBundleID:v218];

          v230 = 1;
        }
      }

      else
      {
        [v298 setTopHitReason:17];
        v230 |= v203 == 0;
      }
    }
  }

  [(SSRankingManager *)self applyTopHitRankingPolicyToSection:v333[5] topResultSection:v327[5] maxTopHitCount:v292 isShortcut:v230 & 1];
  v220 = [v333[5] results];

  for (ii = 0; ii < [v220 count]; ++ii)
  {
    v222 = [v220 objectAtIndex:ii];
    v223 = [v222 rankingItem];
    [v223 setBundleIDType:{objc_msgSend(v223, "bundleIDType") | 0x8000}];
  }

  v14 = v333[5];

  _Block_object_dispose(&v326, 8);
  _Block_object_dispose(&v332, 8);

LABEL_367:
  v224 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)getLegacyTophitSection
{
  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals);
  v0 = sLegacyTophitSection;
  os_unfair_lock_unlock(&_MergedGlobals);

  return v0;
}

void __190__SSRankingManager_makeTopHitSectionUsingSections_withItemRanker_sectionHeader_shortcutResult_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_parsecEnabled_maxNumAppsInTopHitSection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v6 = [v5 bundleIdentifier];
  [*(*(*(a1 + 40) + 8) + 40) setRelatedSectionBundleIdentifier:v6];

  v7 = [*(*(*(a1 + 40) + 8) + 40) resultSet];
  v8 = [v7 firstObject];

  if (v8)
  {
    v9 = [v8 sectionBundleIdentifier];
    v10 = [v15 sectionBundleIdentifier];

    if (v9 != v10)
    {
      v11 = [v8 sectionBundleIdentifier];
      if ([v11 isEqualToString:@"com.apple.mobileslideshow"])
      {
      }

      else
      {
        v12 = [v8 sectionBundleIdentifier];
        v13 = [v12 isEqualToString:@"com.apple.searchd.syndicatedPhotos"];

        if ((v13 & 1) == 0)
        {
          v14 = [*(*(*(a1 + 40) + 8) + 40) resultSet];
          [v14 removeObjectAtIndex:0];
          goto LABEL_8;
        }
      }

      v14 = [*(*(*(a1 + 40) + 8) + 40) resultSet];
      [v14 removeAllObjects];
LABEL_8:
    }
  }

  [*(*(*(a1 + 40) + 8) + 40) addResults:v15 atIndex:0];
}

uint64_t __190__SSRankingManager_makeTopHitSectionUsingSections_withItemRanker_sectionHeader_shortcutResult_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_parsecEnabled_maxNumAppsInTopHitSection___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 rankingItem];
  if (v7 && (v8 = v7, [v5 rankingItem], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = [v5 rankingItem];
    v11 = [v6 rankingItem];
    [*(a1 + 32) currentTime];
    v12 = -[v10 compare:v11 currentTime:?];
  }

  else
  {
    v13 = [v5 rankingItem];

    if (v13)
    {
      v12 = -1;
    }

    else
    {
      v14 = [v6 rankingItem];

      v12 = v14 != 0;
    }
  }

  return v12;
}

- (id)removeBlockListedSectionsForMapping:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SSRankingManager *)self rankingConfiguration];
  [v5 lock];

  v6 = [(SSRankingManager *)self rankingConfiguration];
  v7 = [v6 cepBlocklistSet];

  if (v4 && v7)
  {
    v8 = [v4 mutableCopy];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v4 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if ([v7 containsObject:v14])
          {
            [v8 removeObjectForKey:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v15 = [v8 copy];
    v4 = v15;
  }

  v16 = [(SSRankingManager *)self rankingConfiguration];
  [v16 unlock];

  v17 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];
    v3 = [v2 objectForKey:@"meContactIdentifier"];
    v4 = sMeContactIdentifier;
    sMeContactIdentifier = v3;

    v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.parsec.web_suggest", @"com.apple.parsec.web_index", @"com.apple.parsec.bing", 0}];
    v6 = sSetOfSuggestedWebsitesBundleIDs;
    sSetOfSuggestedWebsitesBundleIDs = v5;

    v7 = sDefaultProbability;
    sDefaultProbability = &unk_1F55B6F58;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__SSRankingManager_initialize__block_invoke;
    block[3] = &unk_1E8595778;
    v11 = v2;
    v8 = initialize_once_token;
    v9 = v2;
    if (v8 != -1)
    {
      dispatch_once(&initialize_once_token, block);
    }

    isInternalDevice = os_variant_has_internal_diagnostics();
  }
}

void __30__SSRankingManager_initialize__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"marriott", @"hilton", @"intercontinental hotels", @"igh", @"accor hotels", @"ritz-carlton", @"ritz carlton", @"four seasons", @"shangri-la", @"shangri la", @"hyatt", @"jw marriott", @"hotel", @"resort", @"lodging", @"accommodation", @"reservation", @"suite", @"room", @"guest", @"booking", @"confirmation", @"check-in", @"check-out", @"check in", @"check out", 0}];
  v3 = sSetOfHotelReservationKeywords;
  sSetOfHotelReservationKeywords = v2;

  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{@"delta", @"alaska", @"southwest", @"hawaiian", @"jetblue", @"united", @"american", @"spirit", @"frontier", @"emirates", @"qatar airways", @"singapore airlines", @"air canada", @"aeroflot", @"airport", @"airline", @"airlines", @"departure", @"arrival", @"boarding", @"boarding gate", @"terminal", @"check in", @"check-in", 0}];
  v5 = sSetOfFlightReservationKeywords;
  sSetOfFlightReservationKeywords = v4;

  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{@"restaurant", @"reservation", @"reservations", @"dinning", @"dinner", @"lunch", @"brunch", @"breakfast", @"bistro", @"cafe", @"eatery", @"party of", @"table for", 0}];
  v7 = sSetOfRestaurantReservationKeywords;
  sSetOfRestaurantReservationKeywords = v6;

  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{@"ticket", @"tickets", @"reservation", @"confirmation", @"RSVP", @"booking", @"appointment", @"party of", @"event", @"venue", 0}];
  v9 = sSetOfOtherReservationKeywords;
  sSetOfOtherReservationKeywords = v8;

  v10 = [*(a1 + 32) objectForKey:@"SpotlightForSearchToolRegressionTest"];
  isSpotlightForSearchToolRegressionTest = v10 != 0;
}

- (SSRankingManager)initWithQuery:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = SSRankingManager;
  v6 = [(SSRankingManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_query, a3);
    v8 = objc_opt_new();
    rankingConfiguration = v7->_rankingConfiguration;
    v7->_rankingConfiguration = v8;

    if (isInternalDevice == 1)
    {
      v10 = objc_opt_new();
    }

    else
    {
      v10 = 0;
    }

    logValues = v7->_logValues;
    v7->_logValues = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.application", @"com.apple.MobileAddressBook", @"com.apple.conversion", @"com.apple.calculation", @"com.apple.worldclock", @"com.apple.datadetector.quick_actions", @"com.apple.dictionary", @"com.apple.mobilesafari", @"com.apple.app-clips", 0}];
    allowedTopHitSections = v7->_allowedTopHitSections;
    v7->_allowedTopHitSections = v12;

    v7->_bullseyeRankingEnabled = 0;
  }

  return v7;
}

- (int64_t)compareDate:(id)a3 withDate:(id)a4
{
  if (a3 && a4)
  {
    v5 = a4;
    [a3 timeIntervalSinceNow];
    v7 = v6;
    [v5 timeIntervalSinceNow];
    v9 = v8;

    if ((v7 <= 0.0 || v9 <= 0.0) && (v7 > 0.0 || v9 > 0.0))
    {
      goto LABEL_14;
    }

    v7 = fabs(v7);
    v9 = fabs(v9);
    if (v7 < v9)
    {
      return -1;
    }

    if (v7 <= v9)
    {
LABEL_14:
      if (v9 >= 0.0 || v7 <= 0.0)
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return 1;
    }
  }

  else if (a3)
  {
    return -1;
  }

  else
  {
    return a4 != 0;
  }
}

+ (void)rankLocalBundlesUsingL3Score:(id)a3 sectionMapping:(id)a4 l3RankingScores:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    if ([v7 count])
    {
      v12 = 0;
      do
      {
        v13 = [v7 objectAtIndexedSubscript:v12];
        v14 = [v13 rankingItem];
        [v14 keywordMatchScore];
        v16 = v15;

        if (v16 >= 0.0)
        {
          [v10 addObject:v13];
          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
          [v11 addObject:v17];
        }

        ++v12;
      }

      while (v12 < [v7 count]);
    }

    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __80__SSRankingManager_rankLocalBundlesUsingL3Score_sectionMapping_l3RankingScores___block_invoke;
    v25 = &unk_1E85959A8;
    v26 = v9;
    v27 = v8;
    [v10 sortWithOptions:16 usingComparator:&v22];
    if ([v10 count])
    {
      v18 = 0;
      do
      {
        v19 = [v11 objectAtIndexedSubscript:v18];
        v20 = [v19 unsignedIntegerValue];
        v21 = [v10 objectAtIndexedSubscript:v18];
        [v7 replaceObjectAtIndex:v20 withObject:v21];

        ++v18;
      }

      while (v18 < [v10 count]);
    }
  }
}

uint64_t __80__SSRankingManager_rankLocalBundlesUsingL3Score_sectionMapping_l3RankingScores___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = compareBestLocalResultsWithRules(v5, v6, 0);
  if (!v7)
  {
    v8 = [v5 rankingItem];
    [v8 likelihood];
    v10 = v9;

    v29 = v10;
    v11 = [v6 rankingItem];
    [v11 likelihood];
    v13 = v12;

    v28 = v13;
    v14 = [v5 rankingItem];
    [v14 keywordMatchScore];
    v16 = v15;

    v17 = [v6 rankingItem];
    [v17 keywordMatchScore];
    v19 = v18;

    v21 = *(a1 + 32);
    v20 = *(a1 + 40);
    v22 = [v5 rankingItem];
    v23 = [v22 sectionBundleIdentifier];
    v24 = [v6 rankingItem];
    v25 = [v24 sectionBundleIdentifier];
    v7 = 1;
    LOWORD(v27) = 1;
    [SectionL3Scores getComparableL3Score:v21 sectionMapping:v20 bundleId1:v23 bundleId2:v25 score1:&v29 score2:&v28 usePommesScore:v27 useLegacyScore:?];

    if (v29 <= v28)
    {
      if (v28 <= v29)
      {
        if (v16 > v19)
        {
          v7 = 1;
          goto LABEL_9;
        }

        if (v19 <= v16)
        {
          v7 = 0;
          goto LABEL_9;
        }
      }

      v7 = -1;
    }
  }

LABEL_9:

  return -v7;
}

+ (id)rankLocalBundlesUsingOriginalL2ScoreAndRules:(id)a3 sectionMapping:(id)a4 l3RankingScores:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (isInternalDevice == 1)
  {
    v10 = objc_opt_new();
  }

  else
  {
    v10 = 0;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96__SSRankingManager_rankLocalBundlesUsingOriginalL2ScoreAndRules_sectionMapping_l3RankingScores___block_invoke;
  v17[3] = &unk_1E8595898;
  v11 = v10;
  v18 = v11;
  v19 = v9;
  v20 = v8;
  v12 = v8;
  v13 = v9;
  [v7 sortWithOptions:1 usingComparator:v17];
  v14 = v20;
  v15 = v11;

  return v11;
}

uint64_t __96__SSRankingManager_rankLocalBundlesUsingOriginalL2ScoreAndRules_sectionMapping_l3RankingScores___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = compareBestLocalResultsWithRules(v5, v6, *(a1 + 32));
  if (!v7)
  {
    v8 = [v5 rankingItem];
    v9 = [v8 L2FeatureVector];
    [v9 originalL2Score];
    v11 = v10;

    v26 = v11;
    v12 = [v6 rankingItem];
    v13 = [v12 L2FeatureVector];
    [v13 originalL2Score];
    v15 = v14;

    v25 = v15;
    v17 = *(a1 + 40);
    v16 = *(a1 + 48);
    v18 = [v5 rankingItem];
    v19 = [v18 sectionBundleIdentifier];
    v20 = [v6 rankingItem];
    v21 = [v20 sectionBundleIdentifier];
    LOWORD(v24) = 256;
    [SectionL3Scores getComparableL3Score:v17 sectionMapping:v16 bundleId1:v19 bundleId2:v21 score1:&v26 score2:&v25 usePommesScore:v24 useLegacyScore:?];

    if (v26 <= v25)
    {
      if (v25 <= v26)
      {
        v7 = 0;
      }

      else
      {
        v7 = -1;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  v22 = -v7;

  return v22;
}

+ (id)rankLocalBundlesUsingModelL3ScoreAndRules:(id)a3 sectionMapping:(id)a4 l3RankingScores:(id)a5
{
  v97 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (isInternalDevice == 1)
  {
    v10 = objc_opt_new();
  }

  else
  {
    v10 = 0;
  }

  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __93__SSRankingManager_rankLocalBundlesUsingModelL3ScoreAndRules_sectionMapping_l3RankingScores___block_invoke;
  v90[3] = &unk_1E8595898;
  v80 = v10;
  v91 = v80;
  v83 = v9;
  v92 = v83;
  v79 = v8;
  v93 = v79;
  [v7 sortWithOptions:1 usingComparator:v90];
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v7;
  v11 = 0x1E695D000uLL;
  v84 = [obj countByEnumeratingWithState:&v86 objects:v96 count:16];
  if (v84)
  {
    v82 = *v87;
    do
    {
      v12 = 0;
      do
      {
        if (*v87 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v86 + 1) + 8 * v12);
        v14 = *(v11 + 3984);
        v15 = objc_opt_new();
        v16 = [v13 sectionBundleIdentifier];

        if (v16)
        {
          v17 = [v13 sectionBundleIdentifier];
          [v15 setObject:v17 forKey:@"bundle_id"];
        }

        v85 = v12;
        v18 = [v13 identifier];

        if (v18)
        {
          v19 = [v13 identifier];
          [v15 setObject:v19 forKey:@"identifier"];
        }

        v20 = [v13 title];
        v21 = [v20 text];

        if (v21)
        {
          v22 = [v13 title];
          v23 = [v22 text];
          v24 = SSRedactString(v23, 1);
          [v15 setObject:v24 forKey:@"title"];
        }

        v25 = MEMORY[0x1E696AEC0];
        v26 = [v13 rankingItem];
        v27 = [v25 stringWithFormat:@"%i", objc_msgSend(v26, "shouldHideUnderShowMore")];
        [v15 setObject:v27 forKey:@"should_hide_under_show_more"];

        v28 = [v13 rankingItem];
        v29 = [v28 L2FeatureVector];

        if (v29)
        {
          v30 = MEMORY[0x1E696AEC0];
          v31 = [v13 rankingItem];
          v32 = [v31 L2FeatureVector];
          [v32 originalL2Score];
          v34 = [v30 stringWithFormat:@"%f", v33];
          [v15 setObject:v34 forKey:@"original_l2_score"];
        }

        v35 = MEMORY[0x1E696AEC0];
        v36 = [v13 rankingItem];
        [v36 likelihood];
        v38 = [v35 stringWithFormat:@"%f", v37];
        [v15 setObject:v38 forKey:@"likelihood"];

        v39 = MEMORY[0x1E696AEC0];
        v40 = [v13 rankingItem];
        [v40 keywordMatchScore];
        v42 = [v39 stringWithFormat:@"%f", v41];
        [v15 setObject:v42 forKey:@"topicality_score"];

        v43 = MEMORY[0x1E696AEC0];
        v44 = [v13 rankingItem];
        [v44 engagementScore];
        v46 = [v43 stringWithFormat:@"%f", v45];
        [v15 setObject:v46 forKey:@"engagement_score"];

        v47 = MEMORY[0x1E696AEC0];
        v48 = [v13 rankingItem];
        [v48 freshnessScore];
        v50 = [v47 stringWithFormat:@"%f", v49];
        [v15 setObject:v50 forKey:@"freshness_score"];

        v51 = [v13 rankingItem];
        v52 = [v51 sectionBundleIdentifier];

        if (!v52)
        {
          v52 = [v13 sectionBundleIdentifier];
        }

        v53 = [v83 objectForKey:v52];
        v54 = v53;
        if (v53)
        {
          v55 = MEMORY[0x1E696AEC0];
          [v53 iFunScore];
          v57 = [v55 stringWithFormat:@"%f", v56];
          [v15 setObject:v57 forKey:@"iFunScore"];

          v58 = 0;
          do
          {
            v59 = MEMORY[0x1E696AEC0];
            [v54 getL3Score:v58 isLegacy:0];
            v61 = [v59 stringWithFormat:@"%f", v60];
            v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"l3Score[%i]", v58];
            [v15 setObject:v61 forKey:v62];

            v63 = MEMORY[0x1E696AEC0];
            [v54 getL3Score:v58 isLegacy:1];
            v65 = [v63 stringWithFormat:@"%f", v64];
            v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"l3ScoreLegacy[%i]", v58];
            [v15 setObject:v65 forKey:v66];

            v58 = (v58 + 1);
          }

          while (v58 != 3);
          v67 = MEMORY[0x1E696AEC0];
          [v54 serverRelevanceScore];
          v69 = [v67 stringWithFormat:@"%f", v68];
          [v15 setObject:v69 forKey:@"serverRelevanceScore"];

          v70 = MEMORY[0x1E696AEC0];
          [v54 modelScore];
          v72 = [v70 stringWithFormat:@"%f", v71];
          [v15 setObject:v72 forKey:@"modelScore"];

          v11 = 0x1E695D000;
        }

        v73 = SSGeneralLog();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          v74 = [SSRankingUtilities jsonStringFromDictionary:v15];
          *buf = 138412290;
          v95 = v74;
          _os_log_impl(&dword_1D9F69000, v73, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] L3: local_bundles_model_results = %@", buf, 0xCu);
        }

        v12 = v85 + 1;
      }

      while (v85 + 1 != v84);
      v84 = [obj countByEnumeratingWithState:&v86 objects:v96 count:16];
    }

    while (v84);
  }

  v75 = v93;
  v76 = v80;

  v77 = *MEMORY[0x1E69E9840];
  return v80;
}

uint64_t __93__SSRankingManager_rankLocalBundlesUsingModelL3ScoreAndRules_sectionMapping_l3RankingScores___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = compareBestLocalResultsWithRules(v5, v6, *(a1 + 32));
  if (!v7)
  {
    v8 = [v5 rankingItem];
    v9 = [v8 L2FeatureVector];
    [v9 originalL2Score];
    v11 = v10;

    v31 = v11;
    v12 = [v6 rankingItem];
    v13 = [v12 L2FeatureVector];
    [v13 originalL2Score];
    v15 = v14;

    v30 = v15;
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = [v5 rankingItem];
    v19 = [v18 sectionBundleIdentifier];
    v20 = [v6 rankingItem];
    v21 = [v20 sectionBundleIdentifier];
    LOWORD(v29) = 256;
    [SectionL3Scores getComparableL3Score:v16 sectionMapping:v17 bundleId1:v19 bundleId2:v21 score1:&v31 score2:&v30 usePommesScore:v29 useLegacyScore:?];

    v22 = *(a1 + 40);
    v23 = [v5 rankingItem];
    v24 = [v23 sectionBundleIdentifier];
    v25 = [v6 rankingItem];
    v26 = [v25 sectionBundleIdentifier];
    [SectionL3Scores getComparableModelL3Score:v22 bundleId1:v24 bundleId2:v26 score1:&v31 score2:&v30];

    if (v31 <= v30)
    {
      if (v30 <= v31)
      {
        v7 = 0;
      }

      else
      {
        v7 = -1;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  v27 = -v7;

  return v27;
}

+ (id)rankLocalBundles:(id)a3 sectionMapping:(id)a4 l3RankingScores:(id)a5
{
  v73 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [SSRankingManager rankLocalBundlesUsingOriginalL2ScoreAndRules:v7 sectionMapping:v8 l3RankingScores:v9];
  if (SSEnableSpotlightTopHitPersonalizedRanking())
  {
    [SSRankingManager rankLocalBundlesUsingL3Score:v7 sectionMapping:v8 l3RankingScores:v9];
  }

  if (isInternalDevice == 1)
  {
    v60 = v10;
    v61 = v9;
    v62 = v8;
    v65 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v63 = v7;
    obj = v7;
    v11 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v67;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v67 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v66 + 1) + 8 * i);
          v16 = objc_opt_new();
          v17 = [v15 sectionBundleIdentifier];

          if (v17)
          {
            v18 = [v15 sectionBundleIdentifier];
            [v16 setObject:v18 forKey:@"bundle_id"];
          }

          v19 = [v15 identifier];

          if (v19)
          {
            v20 = [v15 identifier];
            [v16 setObject:v20 forKey:@"identifier"];
          }

          v21 = [v15 title];
          v22 = [v21 text];

          if (v22)
          {
            v23 = [v15 title];
            v24 = [v23 text];
            v25 = SSRedactString(v24, 1);
            [v16 setObject:v25 forKey:@"title"];
          }

          v26 = MEMORY[0x1E696AEC0];
          v27 = [v15 rankingItem];
          v28 = [v26 stringWithFormat:@"%i", objc_msgSend(v27, "shouldHideUnderShowMore")];
          [v16 setObject:v28 forKey:@"should_hide_under_show_more"];

          v29 = [v15 rankingItem];
          v30 = [v29 L2FeatureVector];

          if (v30)
          {
            v31 = MEMORY[0x1E696AEC0];
            v32 = [v15 rankingItem];
            v33 = [v32 L2FeatureVector];
            [v33 originalL2Score];
            v35 = [v31 stringWithFormat:@"%f", v34];
            [v16 setObject:v35 forKey:@"original_l2_score"];
          }

          v36 = MEMORY[0x1E696AEC0];
          v37 = [v15 rankingItem];
          [v37 likelihood];
          v39 = [v36 stringWithFormat:@"%f", v38];
          [v16 setObject:v39 forKey:@"likelihood"];

          v40 = MEMORY[0x1E696AEC0];
          v41 = [v15 rankingItem];
          [v41 keywordMatchScore];
          v43 = [v40 stringWithFormat:@"%f", v42];
          [v16 setObject:v43 forKey:@"topicality_score"];

          v44 = MEMORY[0x1E696AEC0];
          v45 = [v15 rankingItem];
          [v45 engagementScore];
          v47 = [v44 stringWithFormat:@"%f", v46];
          [v16 setObject:v47 forKey:@"engagement_score"];

          v48 = MEMORY[0x1E696AEC0];
          v49 = [v15 rankingItem];
          [v49 freshnessScore];
          v51 = [v48 stringWithFormat:@"%f", v50];
          [v16 setObject:v51 forKey:@"freshness_score"];

          [v65 addObject:v16];
          v52 = SSGeneralLog();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v53 = [SSRankingUtilities jsonStringFromDictionary:v16];
            *buf = 138412290;
            v71 = v53;
            _os_log_impl(&dword_1D9F69000, v52, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] L3: local_bundles_rule_results = %@", buf, 0xCu);
          }
        }

        v12 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
      }

      while (v12);
    }

    v54 = SSGeneralLog();
    v10 = v60;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = [SSRankingUtilities jsonStringFromDictionary:v60];
      *buf = 138412290;
      v71 = v55;
      _os_log_impl(&dword_1D9F69000, v54, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] L3: local_bundles_rules = %@", buf, 0xCu);
    }

    v56 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    [v56 setObject:v65 forKey:@"l3_local_bundles_results"];
    [v56 setObject:v60 forKey:@"l3_local_bundles_rules"];
    v57 = [SSRankingUtilities jsonStringFromDictionary:v56];

    v8 = v62;
    v7 = v63;
    v9 = v61;
  }

  else
  {
    v57 = &stru_1F556FE60;
  }

  v58 = *MEMORY[0x1E69E9840];

  return v57;
}

+ (void)logL3Results:(id)a3 l3Info:(id)a4
{
  v91 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v78 = a4;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v5;
  v81 = [v5 countByEnumeratingWithState:&v82 objects:v90 count:16];
  if (v81)
  {
    v77 = 0;
    v79 = *v83;
    do
    {
      for (i = 0; i != v81; ++i)
      {
        if (*v83 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v82 + 1) + 8 * i);
        if ([v7 resultsCount])
        {
          v80 = v7;
          v8 = [v7 resultsAtIndex:0];
          v9 = objc_opt_new();
          v10 = [v8 sectionBundleIdentifier];

          if (v10)
          {
            v11 = [v8 sectionBundleIdentifier];
            [v9 setObject:v11 forKey:@"bundle_id"];
          }

          v12 = [v8 identifier];

          if (v12)
          {
            v13 = [v8 identifier];
            [v9 setObject:v13 forKey:@"identifier"];
          }

          v14 = [v8 title];
          v15 = [v14 text];

          if (v15)
          {
            v16 = [v8 title];
            v17 = [v16 text];
            v18 = SSRedactString(v17, 1);
            [v9 setObject:v18 forKey:@"title"];
          }

          v19 = MEMORY[0x1E696AEC0];
          v20 = [v8 rankingItem];
          v21 = [v19 stringWithFormat:@"%i", objc_msgSend(v20, "shouldHideUnderShowMore")];
          [v9 setObject:v21 forKey:@"should_hide_under_show_more"];

          v22 = [v8 rankingItem];
          v23 = [v22 L2FeatureVector];

          if (v23)
          {
            v24 = MEMORY[0x1E696AEC0];
            v25 = [v8 rankingItem];
            v26 = [v25 L2FeatureVector];
            [v26 originalL2Score];
            v28 = [v24 stringWithFormat:@"%f", v27];
            [v9 setObject:v28 forKey:@"original_l2_score"];
          }

          v29 = MEMORY[0x1E696AEC0];
          [v8 l2score];
          v31 = [v29 stringWithFormat:@"%f", v30];
          [v9 setObject:v31 forKey:@"result_l2_score"];

          v32 = MEMORY[0x1E696AEC0];
          v33 = [v8 rankingItem];
          [v33 likelihood];
          v35 = [v32 stringWithFormat:@"%f", v34];
          [v9 setObject:v35 forKey:@"likelihood"];

          v36 = MEMORY[0x1E696AEC0];
          v37 = [v8 rankingItem];
          [v37 keywordMatchScore];
          v39 = [v36 stringWithFormat:@"%f", v38];
          [v9 setObject:v39 forKey:@"topicality_score"];

          v40 = MEMORY[0x1E696AEC0];
          v41 = [v8 rankingItem];
          [v41 engagementScore];
          v43 = [v40 stringWithFormat:@"%f", v42];
          [v9 setObject:v43 forKey:@"engagement_score"];

          v44 = MEMORY[0x1E696AEC0];
          v45 = [v8 rankingItem];
          [v45 freshnessScore];
          v47 = [v44 stringWithFormat:@"%f", v46];
          [v9 setObject:v47 forKey:@"freshness_score"];

          v48 = [v8 rankingItem];
          v49 = [v48 sectionBundleIdentifier];

          if (!v49)
          {
            v49 = [v8 sectionBundleIdentifier];
          }

          v50 = [v78 objectForKey:v49];
          v51 = v50;
          if (v50)
          {
            v52 = MEMORY[0x1E696AEC0];
            [v50 iFunScore];
            v54 = [v52 stringWithFormat:@"%f", v53];
            [v9 setObject:v54 forKey:@"iFunScore"];

            v55 = 0;
            do
            {
              v56 = MEMORY[0x1E696AEC0];
              [v51 getL3Score:v55 isLegacy:0];
              v58 = [v56 stringWithFormat:@"%f", v57];
              v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"l3Score[%i]", v55];
              [v9 setObject:v58 forKey:v59];

              v60 = MEMORY[0x1E696AEC0];
              [v51 getL3Score:v55 isLegacy:1];
              v62 = [v60 stringWithFormat:@"%f", v61];
              v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"l3ScoreLegacy[%i]", v55];
              [v9 setObject:v62 forKey:v63];

              v55 = (v55 + 1);
            }

            while (v55 != 3);
            v64 = MEMORY[0x1E696AEC0];
            [v51 serverRelevanceScore];
            v66 = [v64 stringWithFormat:@"%f", v65];
            [v9 setObject:v66 forKey:@"serverRelevanceScore"];

            v67 = MEMORY[0x1E696AEC0];
            [v51 modelScore];
            v69 = [v67 stringWithFormat:@"%f", v68];
            [v9 setObject:v69 forKey:@"modelScore"];

            v70 = MEMORY[0x1E696AEC0];
            v71 = [v80 resultSet];
            v72 = [v70 stringWithFormat:@"%lu", objc_msgSend(v71, "count")];
            [v9 setObject:v72 forKey:@"resultCount"];
          }

          v73 = SSGeneralLog();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            v74 = [SSRankingUtilities jsonStringFromDictionary:v9];
            *buf = 67109378;
            v87 = ++v77;
            v88 = 2112;
            v89 = v74;
            _os_log_impl(&dword_1D9F69000, v73, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] L3: all_bundles_results %i = %@", buf, 0x12u);
          }
        }
      }

      v81 = [obj countByEnumeratingWithState:&v82 objects:v90 count:16];
    }

    while (v81);
  }

  v75 = *MEMORY[0x1E69E9840];
}

+ (id)getTopHitItems:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = v3;
  obj = [v3 allValues];
  v5 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v24 = *v30;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = [v8 results];
        v10 = [v9 count];

        if (v10)
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v11 = [v8 results];
          v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v26;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v26 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v25 + 1) + 8 * j);
                v17 = [v16 rankingItem];
                v18 = [v17 bundleIDType];

                if (v18 < 0)
                {
                  v19 = [v16 rankingItem];
                  [v4 addObject:v19];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v13);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v6);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (void)fullPageRankingShouldHideUnderShowMore:(id)a3 item:(id)a4 bundleID:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v8 topicalityScore];
  if (v10 <= -2.22044605e-16)
  {
    v12 = 1;
  }

  else
  {
    [v8 topicalityScore];
    v12 = v11 >= 2.22044605e-16;
  }

  [v8 engagementScore];
  if (v13 > 0.0)
  {
    v15 = 1;
  }

  else
  {
    v14 = [v8 recentSimilarIntentEngagementDates];
    if ([v14 count])
    {
      v15 = 1;
    }

    else
    {
      v15 = [v8 exactMatchedLaunchString];
    }
  }

  v16 = [v8 bundleIDType];
  v17 = SSCompactRankingAttrsGetValue([v8 attributes], 7uLL);
  v18 = SSCompactRankingAttrsGetValue([v8 attributes], 0xCuLL);
  v19 = SSCompactRankingAttrsGetValue([v8 attributes], 4uLL);
  [v8 keywordMatchScore];
  if (v20 > 0.05 || SSSectionIsSyndicatedPhotos(v9) && ([v8 topicalityScore], v21 > 0.0500000007) || ((objc_msgSend(v8, "matchedQUIntent") | (v16 >> 8) | v15) & 1) != 0)
  {
    if ([v8 shouldHideUnderShowMore])
    {
      v22 = SSGeneralLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        if (v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v19;
        }

        if (v17)
        {
          v24 = v17;
        }

        else
        {
          v24 = v23;
        }

        v25 = SSRedactString(v24, 1);
        v26 = [v8 sectionBundleIdentifier];
        [v8 topicalityScore];
        v35 = 138412802;
        v36 = v25;
        v37 = 2112;
        v38 = v26;
        v39 = 2048;
        v40 = v27;
        _os_log_impl(&dword_1D9F69000, v22, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][shouldHideUnderShowMore][unHide] result: %@ / bundle: %@ / topicality: %.06f", &v35, 0x20u);
      }

      v28 = 0;
      goto LABEL_24;
    }
  }

  else if ((SSResultTypeIsServer([v7 type]) & 1) == 0 && ((objc_msgSend(v8, "isCCCD") | v12) & 1) == 0 && (objc_msgSend(v8, "shouldHideUnderShowMore") & 1) == 0)
  {
    v22 = SSGeneralLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (v18)
      {
        v30 = v18;
      }

      else
      {
        v30 = v19;
      }

      if (v17)
      {
        v31 = v17;
      }

      else
      {
        v31 = v30;
      }

      v28 = 1;
      v32 = SSRedactString(v31, 1);
      v33 = [v8 sectionBundleIdentifier];
      [v8 topicalityScore];
      v35 = 138412802;
      v36 = v32;
      v37 = 2112;
      v38 = v33;
      v39 = 2048;
      v40 = v34;
      _os_log_impl(&dword_1D9F69000, v22, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][shouldHideUnderShowMore][Hide] result: %@ / bundle: %@ / topicality: %.06f", &v35, 0x20u);
    }

    else
    {
      v28 = 1;
    }

LABEL_24:

    [v8 setShouldHideUnderShowMore:v28];
  }

  v29 = *MEMORY[0x1E69E9840];
}

+ (void)parseWalletBoardingPass:(id)a3 isSearchToolClient:(BOOL *)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 sectionBundleIdentifier];
  v7 = [v6 isEqualToString:@"com.apple.Passbook"];

  if (v7)
  {
    v8 = [v5 rankingItem];
    v9 = SSCompactRankingAttrsGetValue([v8 attributes], 0x118uLL);

    if (v9)
    {
      v54 = 0;
      v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:1 error:&v54];
      v11 = v54;
      if (v11)
      {
        v12 = SSGeneralLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          +[SSRankingManager parseWalletBoardingPass:isSearchToolClient:];
        }
      }

      v13 = [v10 objectForKeyedSubscript:@"ORIGIN CODE"];
      v14 = [v10 objectForKeyedSubscript:@"DESTINATION CODE"];
      if (v13 && v14)
      {
        v39 = v14;
        v40 = v13;
        v15 = [v5 rankingItem];
        v16 = SSCompactRankingAttrsGetValue([v15 attributes], 0xD6uLL);

        v17 = [v5 rankingItem];
        v18 = SSCompactRankingAttrsGetValue([v17 attributes], 0xD7uLL);

        if (v16)
        {
          v19 = [v5 rankingItem];
          [v19 setWalletBoardingPassBusinessName:v16];
        }

        v36 = a4;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v18 count])
        {
          v20 = [v18 objectAtIndexedSubscript:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [v5 rankingItem];
            [v21 setWalletBoardingPassDepartureDateTime:v20];
          }
        }

        v38 = v16;
        v41 = v11;
        v42 = v9;
        v43 = v5;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v45 = [&unk_1F55B7790 countByEnumeratingWithState:&v50 objects:v56 count:{16, v36}];
        if (v45)
        {
          v44 = *v51;
          do
          {
            for (i = 0; i != v45; ++i)
            {
              if (*v51 != v44)
              {
                objc_enumerationMutation(&unk_1F55B7790);
              }

              v23 = *(*(&v50 + 1) + 8 * i);
              v24 = [&unk_1F55B7790 objectForKeyedSubscript:v23];
              v25 = v24;
              if (v24)
              {
                v48 = 0u;
                v49 = 0u;
                v46 = 0u;
                v47 = 0u;
                v26 = v24;
                v27 = [v26 countByEnumeratingWithState:&v46 objects:v55 count:16];
                if (v27)
                {
                  v28 = v27;
                  v29 = *v47;
                  while (2)
                  {
                    for (j = 0; j != v28; ++j)
                    {
                      if (*v47 != v29)
                      {
                        objc_enumerationMutation(v26);
                      }

                      v31 = [v10 objectForKeyedSubscript:*(*(&v46 + 1) + 8 * j)];
                      if (v31)
                      {
                        v32 = v31;
                        v33 = [v43 rankingItem];
                        [v33 setValue:v32 forKey:v23];

                        goto LABEL_32;
                      }
                    }

                    v28 = [v26 countByEnumeratingWithState:&v46 objects:v55 count:16];
                    if (v28)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_32:
              }
            }

            v45 = [&unk_1F55B7790 countByEnumeratingWithState:&v50 objects:v56 count:16];
          }

          while (v45);
        }

        v34 = SSGeneralLog();
        v5 = v43;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          [(SSRankingManager *)v43 parseWalletBoardingPass:v37 isSearchToolClient:v34];
        }

        v11 = v41;
        v9 = v42;
        v14 = v39;
        v13 = v40;
      }
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

uint64_t __204__SSRankingManager_rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext___block_invoke()
{
  result = get_thread_count();
  rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext__core_count = result;
  return result;
}

uint64_t __204__SSRankingManager_rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext___block_invoke_2()
{
  l3modelManager = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

void __204__SSRankingManager_rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext___block_invoke_838(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  [a2 rankingScore];
  [v3 roundedValueForScore:?];
  v4 = *(a1 + 40);
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [v4 addObject:v5];
}

void __204__SSRankingManager_rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext___block_invoke_852(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v43 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 rankingItem];
  v14 = [v13 L2FeatureVector];

  if (v14)
  {
    v15 = [v10 rankingItem];
    *buf = [v15 isAssociatedWithTophitContactsFromItems:v12];

    v40 = 3234;
    v16 = [v10 rankingItem];
    v17 = [v16 L2FeatureVector];
    [v17 setScores:buf forFeatures:&v40 count:1];
  }

  if (([v9 bundleIDType] & 0x104) != 0)
  {
    [v9 keywordMatchScore];
    if (v18 > 0.05)
    {
      [v9 likelihood];
      if (v19 > 0.0500000007)
      {
        [v9 setShouldHideUnderShowMore:0];
      }
    }
  }

  v20 = [v9 L2FeatureVector];
  if (v20)
  {
    v21 = v20;
    v22 = [v9 L2FeatureVector];
    [v22 scoreForFeature:3234];
    v24 = v23;

    if (v24 != 0.0)
    {
      [v9 setShouldHideUnderShowMore:0];
    }
  }

  if (([v9 bundleIDType] & 8) != 0)
  {
    [v9 freshnessScore];
    if (v25 < 2.22044605e-16)
    {
      [v9 setShouldHideUnderShowMore:1];
    }
  }

  if (*(a1 + 48) == 1)
  {
    v26 = *(a1 + 32);
    if (v26)
    {
      v27 = [v9 sectionBundleIdentifier];
      v28 = [v26 containsObject:v27];

      if (v28)
      {
        v29 = 0;
LABEL_20:
        [v9 setShouldHideUnderShowMore:v29];
        goto LABEL_21;
      }
    }

    if (([v9 bundleIDType] & 0x8000) == 0 && objc_msgSend(v9, "shouldHideUnderShowMoreIfNotTophit"))
    {
      v29 = 1;
      goto LABEL_20;
    }
  }

LABEL_21:
  if (SSEnableSpotlightFullPageRanking())
  {
    if ([*(a1 + 40) isSearchToolClient])
    {
      goto LABEL_31;
    }

    if (([v9 bundleIDType] & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    if ([v9 isLocalTopHitCandidate])
    {
      goto LABEL_31;
    }

    if ([v11 isEqualToString:@"com.apple.spotlight.tophits"])
    {
      goto LABEL_31;
    }

    [v9 topicalityScore];
    if (v30 >= 0.7)
    {
      goto LABEL_31;
    }

    [v9 engagementScore];
    if (v31 > 0.0)
    {
      goto LABEL_31;
    }

    v32 = [v9 recentSimilarIntentEngagementDates];
    if ([v32 count])
    {

LABEL_31:
      [SSRankingManager fullPageRankingShouldHideUnderShowMore:v10 item:v9 bundleID:v11];
      goto LABEL_32;
    }

    v33 = [v9 exactMatchedLaunchString];

    if (v33)
    {
      goto LABEL_31;
    }

    v35 = SSCompactRankingAttrsGetValue([v9 attributes], 7uLL);
    v36 = SSCompactRankingAttrsGetValue([v9 attributes], 0xCuLL);
    v37 = SSGeneralLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      if (v35)
      {
        v38 = v35;
      }

      else
      {
        v38 = v36;
      }

      v39 = SSRedactString(v38, 1);
      *buf = 5.7779e-34;
      v42 = v39;
      _os_log_impl(&dword_1D9F69000, v37, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][shouldHideUnderShowMore] shortcut: %@ due to lack of topicality/engagement", buf, 0xCu);
    }

    [v9 setShouldHideUnderShowMore:1];
  }

LABEL_32:
  if ([v9 shouldHideUnderShowMore] && objc_msgSend(v10, "topHit") >= 1)
  {
    [v10 setTopHit:{SSSetTopHitWithReasonString(0, v10, @"Demote due to shouldHideUnderShowMore", 1)}];
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __204__SSRankingManager_rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext___block_invoke_855(uint64_t a1, uint64_t a2)
{
  v280 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  if ((*(*(a1 + 32) + 8) & 1) == 0)
  {
    v4 = *(a1 + 256);
    v5 = v4 * a2;
    v6 = v4 * a2 + v4;
    if (v6 >= *(a1 + 264))
    {
      v6 = *(a1 + 264);
    }

    v234 = v6;
    if (v5 < v6)
    {
      v245 = (a1 + 308);
      v232 = a1 + 232;
      v231 = a1 + 248;
      v230 = 0.1;
      v7 = -1.0;
      v8 = -1.0;
      __asm { FMOV            V0.2S, #-1.0 }

      v241 = _D0;
      __asm { FMOV            V0.4S, #-1.0 }

      v240 = _Q0;
      v261 = a1;
      while (1)
      {
        v14 = [*(a1 + 40) objectAtIndexedSubscript:{v5, *&v230}];
        v15 = [*(a1 + 48) objectForKey:v14];
        v250 = v14;
        if ([v15 domain] == 2)
        {
          break;
        }

        v16 = [v15 resultSet];
        if ([v16 count])
        {
          v255 = [v16 objectAtIndexedSubscript:0];
          v17 = [v15 results];
          v18 = [v17 objectAtIndexedSubscript:0];
          v19 = [v18 sectionBundleIdentifier];
          v20 = [v19 lowercaseString];

          v249 = v20;
          [*(a1 + 56) engagementProbabilityForCategory:v20];
          v251 = v16;
          v236 = v5;
          v238 = v15;
          if (v21 != v7)
          {
            v22 = v21;
            v23 = [@"com.apple.Preferences" lowercaseString];
            v24 = [v20 isEqualToString:v23];

            if (v24)
            {
              v25 = 1;
              v26 = 368;
            }

            else
            {
              v146 = [@"com.apple.app-clips" lowercaseString];
              v147 = [v20 isEqualToString:v146];

              if (v147)
              {
                v25 = 1;
                v26 = 369;
              }

              else
              {
                v148 = [@"com.apple.tips" lowercaseString];
                v149 = [v20 isEqualToString:v148];

                if (v149)
                {
                  v25 = 1;
                  v26 = 371;
                }

                else
                {
                  v150 = [v20 hasPrefix:@"com.apple."];
                  if (v150)
                  {
                    v26 = 3235;
                  }

                  else
                  {
                    v26 = 370;
                  }

                  v25 = v150 ^ 1;
                }
              }
            }

            v151 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v16, "count")}];
            v270 = 0u;
            v271 = 0u;
            v272 = 0u;
            v273 = 0u;
            v152 = v16;
            v153 = [v152 countByEnumeratingWithState:&v270 objects:v279 count:16];
            if (v153)
            {
              v154 = v153;
              v155 = *v271;
              do
              {
                for (i = 0; i != v154; ++i)
                {
                  if (*v271 != v155)
                  {
                    objc_enumerationMutation(v152);
                  }

                  v157 = [*(*(&v270 + 1) + 8 * i) rankingItem];
                  v158 = [v157 L2FeatureVector];

                  if (v158)
                  {
                    v274[0] = 367;
                    *v275 = LODWORD(v22);
                    if (v25)
                    {
                      HIWORD(v274[0]) = v26;
                      *&v275[4] = v22;
                      [v158 setScores:v275 forFeatures:v274 count:2];
                      [v151 addObject:v158];
                    }

                    else
                    {
                      [v158 setScores:v275 forFeatures:v274 count:1];
                    }
                  }
                }

                v154 = [v152 countByEnumeratingWithState:&v270 objects:v279 count:16];
              }

              while (v154);
            }

            if (v25)
            {
              v159 = [*(v261 + 64) computeScoresForVectors:v151];
              if (v159)
              {
                free(v159);
              }
            }

            a1 = v261;
            v5 = v236;
            v14 = v250;
            v16 = v251;
          }

          v160 = v255;
          v161 = [v255 rankingItem];
          if (v161)
          {
            v162 = v161;
            v163 = [v255 rankingItem];
            v164 = [v163 shouldHideUnderShowMore];
          }

          else
          {
            v164 = 1;
          }

          v165 = [v16 objectAtIndexedSubscript:0];
          [*(a1 + 72) setObject:v165 atIndexedSubscript:v5];

          v166 = [v255 rankingItem];
          v167 = [v166 L2FeatureVector];
          if (v167)
          {
            v168 = [v255 rankingItem];
            v169 = [v168 L2FeatureVector];
            [v169 originalL2Score];
            v171 = v170;

            v160 = v255;
          }

          else
          {
            v171 = -3.4028e38;
          }

          v172 = [v16 count];
          v173 = [v160 rankingItem];
          v174 = [v173 bundleIDType];

          if (!v172)
          {
            [*(a1 + 88) setObject:v160 atIndexedSubscript:v5];
            goto LABEL_165;
          }

          v175 = [v16 objectAtIndexedSubscript:0];
          v176 = [v175 rankingItem];
          v177 = v176;
          if ((*(*(*(a1 + 192) + 8) + 24) & 1) == 0 && ([v176 bundleIDType] & 0x400) != 0)
          {
            v178 = [v177 L2FeatureVector];
            [v178 scoreForFeature:31];
            v180 = v179;

            a1 = v261;
            _ZF = v180 == 1.0;
            v7 = -1.0;
            if (_ZF)
            {
              *(*(*(v261 + 192) + 8) + 24) = 1;
            }
          }

          if ((*(*(*(a1 + 200) + 8) + 24) & 1) == 0 && SSSectionIsSyndicatedPhotos(v14))
          {
            v181 = [v175 rankingItem];
            if ([v181 photosMatch])
            {
              goto LABEL_134;
            }

            v182 = [v175 rankingItem];
            if ([v182 photosExactMatch])
            {

              v14 = v250;
LABEL_134:

              a1 = v261;
LABEL_135:
              *(*(*(a1 + 200) + 8) + 24) = 1;
            }

            else
            {
              v225 = [v175 rankingItem];
              v226 = [v225 L2FeatureVector];
              [v226 scoreForFeature:1928];
              v228 = v227;

              v16 = v251;
              _ZF = v228 == 1.0;
              v7 = -1.0;
              a1 = v261;
              v14 = v250;
              if (_ZF)
              {
                goto LABEL_135;
              }
            }
          }

          v183 = *(a1 + 80);
          (*(*(a1 + 184) + 16))();

          if (v172 == 1)
          {
LABEL_137:
            v5 = v236;
            [*(a1 + 88) setObject:v255 atIndexedSubscript:v236];
            if (*(a1 + 328))
            {
              v184 = 0;
LABEL_163:
              v201 = [v14 isEqualToString:@"com.apple.Preferences"];
              v202 = v201;
              if ((v184 & 1) == 0 && !v201)
              {
LABEL_165:
                v15 = v238;
                goto LABEL_195;
              }
            }

            else
            {
              if ([v14 hasPrefix:@"com.apple."])
              {
                v184 = [v14 isEqualToString:@"com.apple.CoreSuggestions"];
                goto LABEL_163;
              }

              v202 = [v14 isEqualToString:@"com.apple.Preferences"];
              v184 = 1;
            }

            v203 = [v16 objectAtIndexedSubscript:0];
            v204 = [v203 rankingItem];
            [*(a1 + 56) engagementProbabilityForCategory:v14];
            v206 = v205;
            if (v184)
            {
              v207 = v205;
              v208 = [v204 L2FeatureVector];
              [v208 scoreForFeature:1961];
              v210 = v209;

              v211 = [v204 L2FeatureVector];
              [v211 scoreForFeature:1955];

              v212 = [v204 L2FeatureVector];
              [v212 scoreForFeature:2084];
              v214 = v213;

              v215 = [v14 isEqualToString:@"com.apple.CoreSuggestions"];
              v216 = 0.01;
              if (v215)
              {
                v216 = 0.05;
              }

              _ZF = v216 <= v207 || v206 == -1.0;
              v218 = !_ZF;
              if (v214 == -1.0)
              {
                v15 = v238;
              }

              else
              {
                v15 = v238;
                if (v210 != -1.0)
                {
                  v219 = v214 <= v230;
                  if (v210 <= 5.0)
                  {
                    v219 = 1;
                  }

                  v218 &= v219;
                }
              }

              if (([v204 hasPolicyMultipleTermsPhraseMatch] & 1) == 0 && (objc_msgSend(v204, "hasPolicyMultipleTermsNearMatch") & 1) == 0 && (objc_msgSend(v204, "hasPolicySingleTermPhraseMatch") & 1) == 0 && ((v218 ^ 1) & 1) == 0)
              {
                [v203 setPlacement:2];
                v224 = SSSetTopHitWithReasonString(0, v203, @"Demote due to SFResultPlacementBottom", 1);
LABEL_193:
                [v203 setTopHit:v224];
              }
            }

            else
            {
              v220 = v202 & ~*(a1 + 329);
              v15 = v238;
              if ((v220 & 1) != 0 && v205 != -1.0)
              {
                [*(a1 + 56) maxEngagementProbability];
                v222 = v221;
                [*(a1 + 56) engagementProbabilityForCategory:@"com.apple.other:search_preferences"];
                if (v222 != -1.0 && (v206 == v222 || v223 == v222))
                {
                  [v204 setTopHitReason:15];
                  [v203 setPlacement:1];
                  v224 = SSSetTopHitWithReasonType(1, v203, 15, 1, 0);
                  goto LABEL_193;
                }
              }
            }

            v7 = -1.0;
            goto LABEL_195;
          }

          v185 = (v174 >> 15) & 1;
          v186 = 1;
          while (2)
          {
            v187 = [v16 objectAtIndex:v186];
            v188 = [v187 rankingItem];
            v189 = [v188 L2FeatureVector];
            if (v189)
            {
              v190 = [v187 rankingItem];
              v191 = [v190 L2FeatureVector];
              [v191 originalL2Score];
              v193 = v192;

              v14 = v250;
            }

            else
            {
              v193 = -3.4028e38;
            }

            v194 = [v187 rankingItem];
            v185 += ([v194 bundleIDType] >> 15) & 1;
            if (v193 > v171)
            {
              goto LABEL_148;
            }

            v195 = [v255 rankingItem];
            if (([v195 bundleIDType] & 0x8000) == 0)
            {
              v16 = v251;
              goto LABEL_153;
            }

            v196 = [v187 rankingItem];
            v197 = [v196 bundleIDType];

            v14 = v250;
            if (v197 < 0)
            {
              v7 = -1.0;
              v16 = v251;
            }

            else
            {
LABEL_148:
              v198 = [v238 maxInitiallyVisibleResults];
              if (v198)
              {
                v199 = v198;
              }

              else
              {
                v199 = v172;
              }

              v16 = v251;
              if ((v164 & 1) != 0 || ([v194 shouldHideUnderShowMore] & 1) == 0 && v186 < v199 + v185)
              {
                v195 = v255;
                v255 = v187;
                v171 = v193;
LABEL_153:
              }

              v7 = -1.0;
            }

            a1 = v261;
            v200 = *(v261 + 80);
            (*(*(v261 + 184) + 16))();

            if (v172 == ++v186)
            {
              goto LABEL_137;
            }

            continue;
          }
        }

LABEL_196:

        if (++v5 == v234)
        {
          goto LABEL_200;
        }
      }

      if ((*(*(*(a1 + 208) + 8) + 24) & 1) != 0 || ![v14 isEqualToString:@"com.apple.parsec.itunes.iosSoftware"])
      {
        v247 = 0;
      }

      else
      {
        v247 = 1;
        *(*(*(a1 + 208) + 8) + 24) = 1;
      }

      if ((*(*(*(a1 + 216) + 8) + 24) & 1) == 0 && [v14 isEqualToString:@"com.apple.parsec.weather"])
      {
        *(*(*(a1 + 216) + 8) + 24) = 1;
      }

      if ((*(*(*(a1 + 224) + 8) + 24) & 1) == 0 && [v14 isEqualToString:@"com.apple.parsec.web_images"])
      {
        *(*(*(a1 + 224) + 8) + 24) = 1;
      }

      v27 = [v15 results];
      v28 = [v27 count];

      v252 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v28];
      v239 = v15;
      v29 = [v15 results];
      v249 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v28];
      v254 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      [*(a1 + 56) engagementProbabilityForCategory:v14];
      v31 = *&v30;
      if (*&v30 != v7)
      {
        v32 = *(a1 + 96);
        v33 = [MEMORY[0x1E696AD98] numberWithFloat:v30];
        v257 = ([v32 indexOfObject:v33] + 1);

        v34 = *(a1 + 104);
        *&v35 = v31;
        v36 = [MEMORY[0x1E696AD98] numberWithFloat:v35];
        *&v242 = [v34 indexOfObject:v36] + 1;

        v37 = *(a1 + 112);
        *&v38 = v31;
        v39 = [MEMORY[0x1E696AD98] numberWithFloat:v38];
        v40 = [v37 indexOfObject:v39] + 1;

        v244 = v40;
      }

      v260 = objc_opt_new();
      v41 = objc_opt_new();
      v42 = [*(a1 + 120) indexOfObject:v14] + 1;
      v43 = [MEMORY[0x1E696AD98] numberWithDouble:{(v42 + v8) / objc_msgSend(*(a1 + 120), "count")}];
      v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v29, "count")}];
      [v41 setNumResults:v44];

      v256 = v42;
      v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v42];
      [v41 setOriginalOrderAbsRank:v45];

      v248 = v43;
      [v41 setOriginalOrderRelRank:v43];
      *&v46 = v31;
      v47 = [MEMORY[0x1E696AD98] numberWithFloat:v46];
      [v41 setCep:v47];

      v48 = 0x1E696A000uLL;
      if (v31 == -1.0)
      {
        [v41 setMaxCEPAbsRank:&unk_1F55B6CB8];
        [v41 setMaxCEPRelRank:&unk_1F55B6CB8];
        [v41 setCepMaxRatio:&unk_1F55B6CB8];
        [v41 setCepAllMaxRatio:&unk_1F55B6CB8];
      }

      else
      {
        v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v257];
        [v41 setMaxCEPAbsRank:v49];

        v50 = [MEMORY[0x1E696AD98] numberWithDouble:(v257 + v8) / *(a1 + 272)];
        [v41 setMaxCEPRelRank:v50];

        v51 = MEMORY[0x1E696AD98];
        [*(a1 + 128) doubleValue];
        v53 = [v51 numberWithDouble:v31 / v52];
        [v41 setCepMaxRatio:v53];

        v54 = MEMORY[0x1E696AD98];
        [*(a1 + 136) doubleValue];
        v56 = [v54 numberWithDouble:v31 / v55];
        [v41 setCepAllMaxRatio:v56];
      }

      v235 = v41;
      v237 = v5;
      [v254 setObject:v41 forKey:v14];
      v268 = 0u;
      v269 = 0u;
      v266 = 0u;
      v267 = 0u;
      obj = v29;
      v57 = [obj countByEnumeratingWithState:&v266 objects:v278 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v267;
        v60 = -1.0;
        do
        {
          for (j = 0; j != v58; ++j)
          {
            if (*v267 != v59)
            {
              objc_enumerationMutation(obj);
            }

            v62 = *(*(&v266 + 1) + 8 * j);
            [v62 rankingScore];
            [*(a1 + 32) roundedValueForScore:?];
            v64 = v63;
            v65 = [*(v48 + 3480) numberWithDouble:?];
            [v260 addObject:v65];

            if (v64 > v60)
            {
              v60 = v64;
            }

            v66 = [v62 sectionBundleIdentifier];
            if (v66)
            {
              v67 = [v254 objectForKey:v66];
              if (v67)
              {
                v68 = MEMORY[0x1E696AD98];
                v69 = [v62 blockId];
                v70 = [v67 blockIdValue];
                v71 = [v70 unsignedLongLongValue];

                a1 = v261;
                if (v69 <= v71)
                {
                  v72 = v71;
                }

                else
                {
                  v72 = v69;
                }

                v73 = [v68 numberWithUnsignedLongLong:v72];
                [v67 setBlockIdValue:v73];

                v48 = 0x1E696A000;
              }
            }
          }

          v58 = [obj countByEnumeratingWithState:&v266 objects:v278 count:16];
        }

        while (v58);
      }

      else
      {
        v60 = -1.0;
      }

      [v260 sortUsingComparator:&__block_literal_global_871];
      v74 = [*(v48 + 3480) numberWithDouble:v60];
      [v235 setMaxScore:v74];

      v75 = [v260 count];
      v262 = 0u;
      v263 = 0u;
      v264 = 0u;
      v265 = 0u;
      v76 = obj;
      v7 = -1.0;
      v16 = v252;
      v255 = v76;
      v253 = [v76 countByEnumeratingWithState:&v262 objects:v277 count:16];
      if (v253)
      {
        v246 = *v263;
        v77 = v257;
        v243 = *&v242;
        v78 = v257 + -1.0;
        v79 = -1.0;
        v242 = *&v242 + -1.0;
        do
        {
          for (k = 0; k != v253; ++k)
          {
            if (*v263 != v246)
            {
              objc_enumerationMutation(v255);
            }

            v81 = *(*(&v262 + 1) + 8 * k);
            v82 = [v81 rankingItem];
            if (!v82)
            {
              v83 = [PRSRankingItem alloc];
              v84 = [v81 sectionBundleIdentifier];
              v82 = [(PRSRankingItem *)v83 initForParsecResultWithBundleID:v84];

              [v81 setRankingItem:v82];
            }

            v257 = [v82 L2FeatureVector];
            v85 = [v81 sectionBundleIdentifier];
            if (v85)
            {
              v86 = [v254 objectForKey:v85];
              v88 = v86;
              if (v86)
              {
                v89 = [v86 blockIdValue];

                if (v89)
                {
                  v87 = [v81 blockId];
                  v90 = v81;
                  goto LABEL_56;
                }

                [v81 setFeedbackBlockId:?];
                [v88 setBlockIdValue:&unk_1F55B6CB8];
              }

              else
              {
                v90 = v81;
LABEL_56:
                [v90 setFeedbackBlockId:v87];
              }
            }

            obja = v82;
            memset(v276, 0, sizeof(v276));
            memset(&v275[4], 0, 48);
            memset(&v274[4] + 2, 0, 238);
            *(v274 + 2) = 0u;
            LOWORD(v274[0]) = 366;
            *v275 = v31;
            [*(a1 + 56) engagementProbabilityForCategory:@"com.apple.other.search_maps"];
            HIWORD(v274[0]) = 402;
            *&v275[4] = v91;
            [*(a1 + 56) engagementProbabilityForCategory:@"com.apple.other.search_app_store"];
            LOWORD(v274[1]) = 403;
            *&v275[8] = v92;
            [*(a1 + 56) engagementProbabilityForCategory:@"com.apple.other.search_appstore"];
            HIWORD(v274[1]) = 404;
            *&v275[12] = v93;
            [*(a1 + 56) engagementProbabilityForCategory:@"com.apple.other.search_web"];
            v274[2] = 24379797;
            *&v275[16] = v94;
            *&v275[20] = 1065353216;
            v95 = [*(a1 + 144) indexOfObject:v81];
            LOWORD(v274[3]) = 373;
            v96 = ((v95 + 1) + v79) / *(a1 + 280);
            *(&v274[3] + 2) = 24576374;
            *&v275[24] = (v95 + 1);
            *&v275[28] = v96;
            if (v31 == v7)
            {
              *(&v274[4] + 2) = 24707448;
              HIWORD(v274[5]) = 379;
              v100 = &v275[48];
              v99 = &v274[6];
              v101 = 12;
              *&v275[32] = v240;
            }

            else
            {
              v97 = v78 / *(a1 + 272);
              *&v275[32] = v77;
              *&v275[36] = v97;
              *&v275[40] = v243;
              *&v275[44] = v244;
              v98 = v242 / *(a1 + 288);
              *(&v274[4] + 2) = 0x17B0179017A0178;
              *&v275[48] = v98;
              v100 = v276;
              v99 = &v274[6] + 1;
              v101 = 13;
            }

            v102 = *(a1 + 304);
            *v99 = 380;
            *v100 = v102;
            *(v274 + 2 * v101 + 2) = 0x180017F017E017DLL;
            *&v275[4 * v101 + 4] = *v245;
            v103 = *(a1 + 324);
            *(&v274[2] + v101 + 1) = 385;
            v104 = v101 + 6;
            *&v275[4 * v101 + 20] = v103;
            v105 = *(v261 + 32);
            [v81 rankingScore];
            [v105 roundedValueForScore:?];
            v107 = v106;
            *(v274 + v104) = 386;
            *&v106 = v106;
            v108 = v101 + 7;
            *&v275[4 * v104] = LODWORD(v106);
            v109 = *(v261 + 152);
            v110 = [MEMORY[0x1E696AD98] numberWithDouble:v107];
            v111 = [v109 indexOfObject:v110] + 1;

            *(v274 + v108) = 387;
            *&v275[4 * v108] = v111;
            v112 = (v111 + -1.0) / *(v261 + 296);
            *(&v274[4] + v101) = 388;
            v113 = v101 + 9;
            *&v275[4 * v101 + 32] = v112;
            v114 = [MEMORY[0x1E696AD98] numberWithDouble:v107];
            v115 = [v260 indexOfObject:v114] + 1;

            *(v274 + v113) = 389;
            *&v275[4 * v113] = v115;
            v79 = -1.0;
            *(&v274[5] + v101) = 390;
            v116 = (v115 + -1.0) / v75;
            *&v275[4 * v101 + 40] = v116;
            v117 = *(v261 + 280);
            *(&v274[5] + v101 + 1) = 396;
            v118 = v101 + 12;
            *&v275[4 * v101 + 44] = v117;
            v119 = [v255 count];
            *(v274 + v118) = 399;
            *&v275[4 * v118] = v119;
            *(&v274[6] + v101 + 1) = 1776;
            v120 = v101 + 14;
            *&v275[4 * v101 + 52] = v256;
            [v248 floatValue];
            *(v274 + v120) = 1777;
            v121 = v101 + 15;
            *&v275[4 * v120] = v122;
            [*(v261 + 128) floatValue];
            *(v274 + v121) = 1778;
            v123 = v101 | 0x10;
            *&v275[4 * v121] = v124;
            a1 = v261;
            [*(v261 + 136) floatValue];
            *(v274 + v123) = 1780;
            v125 = v101 + 17;
            *&v275[4 * v123] = v126;
            v7 = -1.0;
            if (v31 == -1.0)
            {
              *(v274 + v125) = 1779;
              *(&v274[9] + v101) = 1781;
              *&v275[4 * v125] = v241;
              *(&v274[9] + v101 + 1) = 1980;
              v130 = -1.0;
              *&v275[4 * v101 + 76] = -1082130432;
            }

            else
            {
              [*(v261 + 128) floatValue];
              *(v274 + v125) = 1779;
              v128 = v101 | 0x12;
              *&v275[4 * v125] = v31 / v127;
              [*(v261 + 136) floatValue];
              *(v274 + v128) = 1781;
              *&v275[4 * v128] = v31 / v129;
              a1 = v261;
              *(&v274[9] + v101 + 1) = 1980;
              *&v275[4 * v101 + 76] = v77;
              v130 = v78 / *(v261 + 272);
            }

            v16 = v252;
            *(&v274[10] + v101) = 1981;
            *&v275[4 * v101 + 80] = v130;
            v131 = v101 + 21;
            if (v247)
            {
              [*(a1 + 56) numAppsDeduped];
              *(v274 + v131) = 2317;
              v132 = v101 + 22;
              *&v275[4 * v131] = v133;
              [*(a1 + 56) engagementProbabilityForCategory:@"com.apple.application"];
              if (v134 == -1.0)
              {
                v131 = v101 + 22;
              }

              else
              {
                *(v274 + v132) = 2318;
                v131 = v101 + 23;
                *&v275[4 * v132] = v134;
                if (v31 != -1.0 && v134 != 0.0)
                {
                  *(v274 + v131) = 2319;
                  *&v275[4 * v131] = v31 / v134;
                  v131 = v101 + 24;
                }
              }
            }

            [v257 setScores:v275 forFeatures:v274 count:v131];
            [v257 setBundleID:v250];
            [v249 addObject:v257];
            [v252 addObject:v81];
          }

          v76 = v255;
          v253 = [v255 countByEnumeratingWithState:&v262 objects:v277 count:16];
        }

        while (v253);
      }

      v5 = v237;
      if ([v249 count])
      {
        [*(a1 + 160) setObject:v249 atIndexedSubscript:v237];
        [*(a1 + 168) setObject:v16 atIndexedSubscript:v237];
      }

      v8 = -1.0;
      v14 = v250;
      v15 = v239;
      if ([v254 count])
      {
        [*(a1 + 176) setObject:v254 atIndexedSubscript:v237];
      }

      [*(a1 + 64) prepareParsecResults:v255 inBundle:v250];
      if ([v250 isEqualToString:@"com.apple.parsec.itunes.iosSoftware"])
      {
        v135 = *(*(a1 + 208) + 8);
        if ((*(v135 + 24) & 1) == 0)
        {
          *(v135 + 24) = 1;
        }

        if (![v255 count])
        {
          goto LABEL_93;
        }

        v136 = [v255 firstObject];
        v137 = [v136 rankingItem];
        v138 = v137;
        if (!v137 || ([v137 L2FeatureVector], (v139 = objc_claimAutoreleasedReturnValue()) == 0))
        {
LABEL_92:

LABEL_93:
LABEL_195:

          goto LABEL_196;
        }

        v140 = v139;
        [v139 scoreForFeature:2304];
        v142 = v232;
      }

      else
      {
        if (![v250 isEqualToString:@"com.apple.parsec.tv.tvShow"])
        {
          goto LABEL_93;
        }

        v143 = *(*(a1 + 240) + 8);
        if ((*(v143 + 24) & 1) == 0)
        {
          *(v143 + 24) = 1;
        }

        if (![v255 count])
        {
          goto LABEL_93;
        }

        v136 = [v255 firstObject];
        v144 = [v136 rankingItem];
        v138 = v144;
        if (!v144)
        {
          goto LABEL_92;
        }

        v145 = [v144 L2FeatureVector];
        if (!v145)
        {
          goto LABEL_92;
        }

        v140 = v145;
        [v145 scoreForFeature:2312];
        v142 = v231;
      }

      *(*(*v142 + 8) + 24) = v141;

      goto LABEL_92;
    }
  }

LABEL_200:
  objc_autoreleasePoolPop(context);
  v229 = *MEMORY[0x1E69E9840];
}

void __204__SSRankingManager_rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext___block_invoke_3_877(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    if (SSEnableSpotlightFullPageRanking())
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v15 = *(a1 + 88);
      v16 = [v15 countByEnumeratingWithState:&v58 objects:v62 count:16];
      if (v16)
      {
        v17 = *v59;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v59 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v58 + 1) + 8 * i);
            v20 = [v19 rankingItem];
            v21 = [v20 sectionBundleIdentifier];
            v22 = v21 == 0;

            if (!v22)
            {
              v23 = *(a1 + 96);
              v24 = [v19 rankingItem];
              v25 = [v24 sectionBundleIdentifier];
              v26 = [v23 objectForKey:v25];

              if (!v26)
              {
                v27 = *(a1 + 104);
                v28 = [v19 rankingItem];
                v29 = [v28 sectionBundleIdentifier];
                v30 = [v27 objectForKey:v29];

                if (v30)
                {
                  v31 = objc_alloc_init(SectionL3Scores);
                  if ([(SectionL3Scores *)v31 computeScore:v30 rankingConfig:*(a1 + 112) hasGoodLocalResult:*(*(*(a1 + 128) + 8) + 24) pos:0 queryContext:*(a1 + 120)])
                  {
                    *(*(*(a1 + 128) + 8) + 24) = 1;
                  }

                  v32 = *(a1 + 96);
                  v33 = [v19 rankingItem];
                  v34 = [v33 sectionBundleIdentifier];
                  [v32 setObject:v31 forKeyedSubscript:v34];
                }
              }
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v58 objects:v62 count:16];
        }

        while (v16);
      }
    }

    v35 = [SSRankingManager rankLocalBundles:*(a1 + 88) sectionMapping:*(a1 + 104) l3RankingScores:*(a1 + 96), v58];
    v36 = *(*(a1 + 136) + 8);
    v37 = *(v36 + 40);
    *(v36 + 40) = v35;
  }

  else if (a2 == 1)
  {
    [*(a1 + 80) sortWithOptions:1 usingComparator:&__block_literal_global_883];
  }

  else if (!a2 && [*(a1 + 32) count])
  {
    for (j = 0; ; ++j)
    {
      v4 = [*(a1 + 32) count];
      v5 = *(a1 + 32);
      if (j >= v4)
      {
        break;
      }

      v6 = [v5 objectAtIndexedSubscript:j];
      v7 = *(a1 + 40);
      v8 = [v6 bundleID];
      v9 = [v7 objectForKey:v8];

      v64 = 0;
      v65 = 0;
      v63 = 0;
      v10 = [v9 maxScoreAbsRank];
      [v10 floatValue];
      LODWORD(v64) = v11;

      LOWORD(v63) = 1650;
      v12 = [v9 maxScoreRelRank];
      [v12 floatValue];
      HIDWORD(v64) = v13;

      WORD1(v63) = 1651;
      if ([*(a1 + 48) hasParsecPolicyPhraseMatch])
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }

      *&v65 = v14;
      WORD2(v63) = 2089;
      [v6 setScores:&v64 forFeatures:&v63 count:3];
    }

    if ([v5 count])
    {
      if (*(a1 + 144) == 1)
      {
        v53 = PRSModelManagerAssociatedObjectKeyForType(0);
        for (k = 0; k < [*(a1 + 32) count]; ++k)
        {
          v55 = [*(a1 + 32) objectAtIndexedSubscript:k];
          v56 = [*(a1 + 56) objectAtIndexedSubscript:k];
          v57 = [v56 rankingItem];

          objc_setAssociatedObject(v55, v53, v57, 1);
        }
      }

      v39 = [*(a1 + 48) computeScoresForVectors:*(a1 + 32) withBundleFeatures:*(a1 + 40)];
      if (v39)
      {
        for (m = 0; m < [*(a1 + 32) count]; ++m)
        {
          v41 = [*(a1 + 32) objectAtIndexedSubscript:m];
          [v41 originalL2Score];
          v43 = v42;
          v44 = [*(a1 + 56) objectAtIndexedSubscript:m];
          LODWORD(v45) = v43;
          [v44 setL2score:v45];

          v46 = *(a1 + 64);
          v47 = [*(a1 + 56) objectAtIndexedSubscript:m];
          v48 = [v47 sectionBundleIdentifier];
          v49 = [v46 indexOfObject:v48];
          v50 = [*(a1 + 56) objectAtIndexedSubscript:m];
          [v50 setScore:{v49, 0}];
        }

        if (SPBlockGroupingEnabled_onceToken != -1)
        {
          __204__SSRankingManager_rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext___block_invoke_3_877_cold_1();
        }

        if (SPBlockGroupingEnabled__blockGroupingEnabled)
        {
          [*(a1 + 72) updateServerScoresUsingBlockOrder:*(a1 + 56) bundleFeatures:*(a1 + 40)];
        }

        free(v39);
      }
    }

    [*(a1 + 56) sortWithOptions:17 usingComparator:&__block_literal_global_880];
    for (n = 0; n < [*(a1 + 32) count]; ++n)
    {
      v52 = [*(a1 + 56) objectAtIndexedSubscript:n];
      [v52 setScore:{0, 0}];
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

uint64_t __204__SSRankingManager_rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext___block_invoke_5_881(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rankingItem];
  v6 = [v5 L2FeatureVector];
  [v6 originalL2Score];
  v8 = v7;

  v9 = [v4 rankingItem];

  v10 = [v9 L2FeatureVector];
  [v10 originalL2Score];
  v12 = v11;

  if (v8 <= v12)
  {
    return v12 > v8;
  }

  else
  {
    return -1;
  }
}

+ (void)determineTopHitsForSafariSection:(id)a3 forQuery:(id)a4
{
  v26[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v26[0] = 0;
  v26[1] = 0;
  v25[0] = 0;
  v25[1] = 0;
  v24 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v7 = [v5 resultSet];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__SSRankingManager_determineTopHitsForSafariSection_forQuery___block_invoke;
  v14[3] = &unk_1E8595A90;
  v8 = v6;
  v15 = v8;
  v16 = &v20;
  v17 = v25;
  v18 = &v24;
  v19 = v26;
  [v7 enumerateObjectsUsingBlock:v14];

  if (v21[3])
  {
    v9 = 0;
    do
    {
      v10 = v26[v9];
      [v10 setTopHit:{SSSetTopHitWithReasonString(1, v10, @"determineTopHitsForSafariSection", 1)}];
      [v10 setForceNoTopHit:0];
      [v10 setIsSafariTopHit:1];
      v11 = [v10 rankingItem];
      [v11 setIsSafariTopHit:1];

      v12 = [v10 rankingItem];
      [v12 setTopHitReason:12];

      ++v9;
    }

    while (v9 < v21[3]);
  }

  _Block_object_dispose(&v20, 8);
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __62__SSRankingManager_determineTopHitsForSafariSection_forQuery___block_invoke(void *a1, void *a2)
{
  v24 = a2;
  [v24 setTopHit:0];
  [v24 setForceNoTopHit:1];
  [v24 setIsSafariTopHit:0];
  v3 = [v24 rankingItem];
  [v3 setIsSafariTopHit:0];

  if ([v24 isSafariTopHitForQuery:a1[4]])
  {
    v4 = [v24 rankingItem];
    v5 = SSCompactRankingAttrsGetValue([v4 attributes], 9uLL);

    if (v5)
    {
      v6 = [v24 contentURL];
      v7 = [v6 length];

      v8 = [v24 contentType];
      v9 = [v8 isEqualToString:@"com.apple.safari.bookmark"];

      v10 = a1[5];
      if (*(*(v10 + 8) + 24))
      {
        v11 = 0;
        v12 = 0;
        v13 = v24;
        do
        {
          v14 = a1[6];
          v15 = a1[7];
          v16 = *(v14 + 8 * v11);
          v17 = *(v15 + v11);
          if (v7 >= v16)
          {
            v18 = *(v15 + v11);
          }

          else
          {
            v18 = 0;
          }

          if ((v9 & 1) != 0 && !v18 || v7 < v16 && (*(v15 + v11) & 1) == 0)
          {
            *(v14 + 8 * v11) = v7;
            *(v15 + v11) = v9 & 1;
            v19 = a1[8];
            v20 = *(v19 + 8 * v11);
            *(v19 + 8 * v11) = v13;
            v10 = a1[5];
            v12 = 1;
            v9 = v17;
            v7 = v16;
            v13 = v20;
          }

          ++v11;
          v21 = *(*(v10 + 8) + 24);
        }

        while (v11 < v21);
        if (v12)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v21 = 0;
        v13 = v24;
      }

      if (v21 <= 1)
      {
        v22 = a1[7];
        *(a1[6] + 8 * v21) = v7;
        *(v22 + *(*(a1[5] + 8) + 24)) = v9 & 1;
        *(a1[8] + 8 * (*(*(a1[5] + 8) + 24))++) = v13;
      }
    }

LABEL_19:
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)refineSectionShowingVisibleResultsWithBetterTextMatches:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 resultSet];
  v5 = [v4 count];

  if (v5 >= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v3 resultSet];
  v8 = [v7 array];

  if (!v5)
  {
    goto LABEL_10;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = [v8 objectAtIndexedSubscript:v10];
    v12 = [v11 rankingItem];
    v13 = v10 + 1;
    if (![v12 shouldHideUnderShowMore])
    {
      v9 = v10 + 1;
    }

    ++v10;
  }

  while (v6 != v13);
  if (!v9)
  {
LABEL_10:
    v14 = [v3 results];
    v15 = [v14 count];

    if (v15)
    {
      [v3 setIsInitiallyHidden:1];
      v16 = SSGeneralLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v3 bundleIdentifier];
        v18 = [v3 results];
        v23 = 138412546;
        v24 = v17;
        v25 = 2048;
        v26 = [v18 count];
        _os_log_impl(&dword_1D9F69000, v16, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] Marking section %@ (%lu result(s)) for isInitiallyHidden - all shouldHideUnderShowMore", &v23, 0x16u);
      }

      goto LABEL_20;
    }

    v9 = 0;
  }

  v19 = [v3 results];
  v20 = [v19 count];

  if (v20)
  {
    if (v9 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v9;
    }

    [v3 setMaxInitiallyVisibleResults:v21];
  }

LABEL_20:

  v22 = *MEMORY[0x1E69E9840];
}

- (id)applyTopSectionPolicy:(id)a3 withTopHitSection:(id)a4 isPeopleSearch:(BOOL)a5 queryKind:(unint64_t)a6 correction:(id)a7 queryLength:(unint64_t)a8 ranker:(id)a9
{
  v99 = a5;
  v148 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v98 = a7;
  v101 = a9;
  v14 = (a6 == 4 || a6 == 1) && [v12 count] > 1;
  v15 = v13;
  v16 = [v12 objectAtIndexedSubscript:v14];
  v17 = [v16 bundleIdentifier];
  v18 = [v17 isEqualToString:@"com.apple.spotlight.tophits"];

  v109 = v18;
  if ([v12 count] < 3)
  {
    v21 = 0;
  }

  else
  {
    v19 = [v12 objectAtIndexedSubscript:v14 + v18];
    v20 = [v19 bundleIdentifier];
    v21 = [v20 isEqualToString:@"com.apple.application"];
  }

  v137 = 0;
  v138 = &v137;
  v139 = 0x3032000000;
  v140 = __Block_byref_object_copy__1;
  v141 = __Block_byref_object_dispose__1;
  v142 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __115__SSRankingManager_applyTopSectionPolicy_withTopHitSection_isPeopleSearch_queryKind_correction_queryLength_ranker___block_invoke;
  aBlock[3] = &unk_1E8595AB8;
  v134 = &v137;
  v135 = v14;
  v136 = v21;
  v22 = v12;
  v133 = v22;
  v111 = _Block_copy(aBlock);
  v100 = +[SSRankingManager getLegacyTophitSection];
  v23 = [v100 containsObject:@"none"];
  v24 = a6 - 9;
  if ([v22 count])
  {
    v25 = [v15 results];
    if (v25)
    {
      v26 = [v15 results];
      v27 = [v26 count] == 0;

      if (!v27)
      {
        v28 = [v15 results];
        v97 = [v28 objectAtIndexedSubscript:0];

        v104 = [v97 sectionBundleIdentifier];
        v29 = [v22 mutableCopy];
        v30 = v138[5];
        v138[5] = v29;

        v130 = 0u;
        v131 = 0u;
        v128 = 0u;
        v129 = 0u;
        obj = v22;
        v31 = [obj countByEnumeratingWithState:&v128 objects:v147 count:16];
        v32 = v109;
        if (!v31)
        {
          goto LABEL_47;
        }

        v107 = *v129;
        v106 = (v24 < 0xFFFFFFFFFFFFFFFCLL) | v23 ^ 1;
        v102 = a6;
        while (1)
        {
          v33 = 0;
          v108 = v31;
          do
          {
            if (*v129 != v107)
            {
              objc_enumerationMutation(obj);
            }

            v34 = *(*(&v128 + 1) + 8 * v33);
            if ([v34 pinToTop] && objc_msgSend(v34, "resultsCount"))
            {
              v111[2](v111, v34, v32, 0);
              goto LABEL_45;
            }

            v35 = [v34 bundleIdentifier];
            if (([v35 isEqualToString:@"com.apple.application"] & v106) == 1)
            {
              v36 = [v34 resultsCount] == 0;

              if (v36)
              {
                goto LABEL_25;
              }

              v37 = [v34 results];
              v38 = [v37 objectAtIndexedSubscript:0];
              v35 = [v38 rankingItem];

              v39 = [v35 L2FeatureVector];
              [v39 scoreForFeature:1];
              v41 = v40;

              v42 = [v35 L2FeatureVector];
              [v42 scoreForFeature:41];
              v44 = v43;

              if (+[PRSRankingItemRanker spellCorrectedAppMinQueryLen]< a8 && v41 == 1.0 && v44 == 0.0)
              {
                goto LABEL_43;
              }
            }

LABEL_25:
            v45 = [v34 bundleIdentifier];
            v46 = [v45 isEqualToString:@"com.apple.application"];
            if (a6 == 4)
            {
              v47 = 0;
            }

            else
            {
              v47 = v46;
            }

            v32 = v109;
            if ((v47 & 1) == 0)
            {
              v35 = [v34 bundleIdentifier];
              if ([v35 isEqualToString:v104])
              {
                v48 = [v34 resultsCount] == 0;

                v32 = v109;
                if (v48)
                {
                  goto LABEL_45;
                }

                v49 = [v34 results];
                v35 = [v49 objectAtIndexedSubscript:0];

                v50 = [v35 rankingItem];
                v51 = [v50 shouldHideUnderShowMore];

                if (v51)
                {
                  v52 = [v15 results];
                  v53 = [v52 copy];

                  v126 = 0u;
                  v127 = 0u;
                  v124 = 0u;
                  v125 = 0u;
                  v54 = v53;
                  v55 = [v54 countByEnumeratingWithState:&v124 objects:v146 count:16];
                  if (v55)
                  {
                    LODWORD(v56) = 0;
                    v57 = *v125;
                    do
                    {
                      v58 = 0;
                      v56 = v56;
                      do
                      {
                        if (*v125 != v57)
                        {
                          objc_enumerationMutation(v54);
                        }

                        v59 = *(*(&v124 + 1) + 8 * v58);
                        [v34 addResults:v59 atIndex:v56];
                        [v15 removeResults:v59];
                        ++v58;
                        ++v56;
                      }

                      while (v55 != v58);
                      v55 = [v54 countByEnumeratingWithState:&v124 objects:v146 count:16];
                    }

                    while (v55);
                  }

                  a6 = v102;
                  if (v109)
                  {
                    [v138[5] removeObject:v15];
                  }

                  v111[2](v111, v34, 0, 1);
                }

                else if ((SSEnableSpotlightFullPageRanking() & 1) == 0)
                {
LABEL_43:
                  v111[2](v111, v34, v109, 0);
                }
              }

              v32 = v109;
            }

LABEL_45:
            ++v33;
          }

          while (v33 != v108);
          v31 = [obj countByEnumeratingWithState:&v128 objects:v147 count:16];
          if (!v31)
          {
LABEL_47:

            v22 = v138[5];
            goto LABEL_80;
          }
        }
      }
    }
  }

  if ([v22 count])
  {
    v60 = [v22 mutableCopy];
    v61 = v138[5];
    v138[5] = v60;

    if (v24 >= 0xFFFFFFFFFFFFFFFCLL && (v23 & 1) != 0)
    {
      v77 = v138[5];

      v22 = v77;
LABEL_68:
      v78 = [v22 mutableCopy];
      v79 = v138[5];
      v138[5] = v78;

      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v80 = v22;
      v81 = [v80 countByEnumeratingWithState:&v116 objects:v144 count:16];
      if (v81)
      {
        v82 = *v117;
        while (2)
        {
          for (i = 0; i != v81; ++i)
          {
            if (*v117 != v82)
            {
              objc_enumerationMutation(v80);
            }

            v84 = *(*(&v116 + 1) + 8 * i);
            if ([v84 pinToTop] && objc_msgSend(v84, "resultsCount"))
            {
              v111[2](v111, v84, 0, 0);
              goto LABEL_79;
            }
          }

          v81 = [v80 countByEnumeratingWithState:&v116 objects:v144 count:16];
          if (v81)
          {
            continue;
          }

          break;
        }
      }

LABEL_79:
      v97 = v80;

      v22 = v138[5];
LABEL_80:

      goto LABEL_81;
    }

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v110 = v22;
    v62 = [v110 countByEnumeratingWithState:&v120 objects:v145 count:16];
    if (v62)
    {
      v63 = *v121;
LABEL_52:
      v64 = 0;
      while (1)
      {
        if (*v121 != v63)
        {
          objc_enumerationMutation(v110);
        }

        v65 = *(*(&v120 + 1) + 8 * v64);
        v66 = [v65 bundleIdentifier];
        if (![v66 isEqualToString:@"com.apple.application"])
        {
          goto LABEL_61;
        }

        v67 = [v65 resultsCount] == 0;

        if (!v67)
        {
          break;
        }

LABEL_62:
        if (v62 == ++v64)
        {
          v62 = [v110 countByEnumeratingWithState:&v120 objects:v145 count:16];
          if (v62)
          {
            goto LABEL_52;
          }

          goto LABEL_64;
        }
      }

      v68 = [v65 results];
      v69 = [v68 objectAtIndexedSubscript:0];
      v66 = [v69 rankingItem];

      v70 = [v66 L2FeatureVector];
      [v70 scoreForFeature:1];
      v72 = v71;

      v73 = [v66 L2FeatureVector];
      [v73 scoreForFeature:41];
      v75 = v74;

      if (+[PRSRankingItemRanker spellCorrectedAppMinQueryLen](PRSRankingItemRanker, "spellCorrectedAppMinQueryLen") < a8 && v72 == 1.0 && v75 == 0.0 && ([v101 isSpellCorrectPrefixMatchOnlyTopHitExcludedQuery] & 1) == 0)
      {
        v111[2](v111, v65, v109, 0);

        v76 = 1;
        goto LABEL_67;
      }

LABEL_61:

      goto LABEL_62;
    }

LABEL_64:
    v76 = 0;
LABEL_67:

    v22 = v138[5];
    if ((v76 & 1) == 0)
    {
      goto LABEL_68;
    }
  }

LABEL_81:
  if (v99)
  {
    v85 = [v22 mutableCopy];
    v86 = v138[5];
    v138[5] = v85;

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v87 = v22;
    v88 = [v87 countByEnumeratingWithState:&v112 objects:v143 count:16];
    if (v88)
    {
      v89 = *v113;
      do
      {
        for (j = 0; j != v88; ++j)
        {
          if (*v113 != v89)
          {
            objc_enumerationMutation(v87);
          }

          v91 = *(*(&v112 + 1) + 8 * j);
          v92 = [v91 bundleIdentifier];
          v93 = [v92 isEqualToString:@"com.apple.MobileAddressBook"];

          if (v93)
          {
            v111[2](v111, v91, 0, 0);
          }
        }

        v88 = [v87 countByEnumeratingWithState:&v112 objects:v143 count:16];
      }

      while (v88);
    }

    v22 = v138[5];
  }

  v94 = v22;

  _Block_object_dispose(&v137, 8);
  v95 = *MEMORY[0x1E69E9840];

  return v94;
}

void __115__SSRankingManager_applyTopSectionPolicy_withTopHitSection_isPeopleSearch_queryKind_correction_queryLength_ranker___block_invoke(uint64_t a1, void *a2, int a3, char a4)
{
  v14 = a2;
  [*(*(*(a1 + 40) + 8) + 40) removeObject:?];
  v7 = *(a1 + 48) + a3;
  if ((a4 & 1) == 0 && *(a1 + 52) == 1 && [*(a1 + 32) count] >= 4)
  {
    v8 = [v14 bundleIdentifier];
    v9 = [v8 isEqualToString:@"com.apple.application"];

    if ((v9 & 1) == 0)
    {
      v7 = *(a1 + 48) + 2;
    }
  }

  if (v7)
  {
    v10 = [*(a1 + 32) objectAtIndexedSubscript:v7];
    v11 = [v10 bundleIdentifier];
    v12 = [v11 isEqualToString:@"com.apple.searchd.suggestions"];

    v13 = v7 + (v12 & 1);
  }

  else
  {
    v13 = 0;
  }

  [*(*(*(a1 + 40) + 8) + 40) insertObject:v14 atIndex:v13];
}

- (void)updateServerScoresUsingBlockOrder:(id)a3 bundleFeatures:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!self->_isCancelled)
  {
    v8 = objc_opt_new();
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v43 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v57 objects:v64 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v58;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v58 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v57 + 1) + 8 * i);
          v15 = [v14 sectionBundleIdentifier];
          v16 = [v7 objectForKey:v15];

          if (v16)
          {
            v17 = [v16 blockIdValue];

            if (v17)
            {
              v18 = [v16 blockIdValue];
              v19 = [v8 objectForKey:v18];

              if (!v19)
              {
                v19 = objc_opt_new();
              }

              [v19 addObject:v14];
              v20 = [v16 blockIdValue];
              [v8 setObject:v19 forKey:v20];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v57 objects:v64 count:16];
      }

      while (v11);
    }

    if ([v8 count])
    {
      v42 = v7;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = [v8 allKeys];
      v21 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v54;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v54 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = [v8 objectForKey:*(*(&v53 + 1) + 8 * j)];
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v26 = [v25 countByEnumeratingWithState:&v49 objects:v62 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = 0;
              v29 = *v50;
              v30 = 0.0;
              do
              {
                for (k = 0; k != v27; ++k)
                {
                  if (*v50 != v29)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v32 = *(*(&v49 + 1) + 8 * k);
                  [v32 l2score];
                  [v32 l2score];
                  v30 = v30 + v33;
                  ++v28;
                }

                v27 = [v25 countByEnumeratingWithState:&v49 objects:v62 count:16];
              }

              while (v27);
              v34 = v30 / v28;
            }

            else
            {
              v34 = NAN;
            }

            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v35 = v25;
            v36 = [v35 countByEnumeratingWithState:&v45 objects:v61 count:16];
            if (v36)
            {
              v38 = v36;
              v39 = *v46;
              do
              {
                for (m = 0; m != v38; ++m)
                {
                  if (*v46 != v39)
                  {
                    objc_enumerationMutation(v35);
                  }

                  *&v37 = v34;
                  [*(*(&v45 + 1) + 8 * m) setL2score:v37];
                }

                v38 = [v35 countByEnumeratingWithState:&v45 objects:v61 count:16];
              }

              while (v38);
            }
          }

          v22 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
        }

        while (v22);
      }

      v7 = v42;
    }

    v6 = v43;
  }

  v41 = *MEMORY[0x1E69E9840];
}

+ (void)extractThresholdABValues:(id)a3 forLanguage:(id)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = 0x1E695D000uLL;
  v9 = [MEMORY[0x1E695DF58] currentLocale];
  os_unfair_lock_lock(&_MergedGlobals);
  v10 = sLastLanguage;
  if (!v7)
  {
    sLastLanguage = 0;

    os_unfair_lock_unlock(&_MergedGlobals);
    goto LABEL_5;
  }

  if ([sLastLanguage isEqualToString:v7])
  {
    os_unfair_lock_unlock(&_MergedGlobals);
    goto LABEL_48;
  }

  objc_storeStrong(&sLastLanguage, a4);
  os_unfair_lock_unlock(&_MergedGlobals);
  v26 = [v9 localeIdentifier];
  if (!v26 || ([v9 localeIdentifier], v4 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v7, "isEqualToString:", v4)))
  {
    v33 = [v9 languageCode];
    if (v33)
    {
      v34 = v33;
      v35 = [v9 languageCode];
      v36 = [v7 isEqualToString:v35];

      if (v26)
      {
      }

      v8 = 0x1E695D000;
      if (v36)
      {
        goto LABEL_37;
      }
    }

    else if (v26)
    {
    }

    v40 = [v6 objectForKey:v7];
    if (v40)
    {
      v22 = v40;
      goto LABEL_47;
    }

    goto LABEL_37;
  }

LABEL_37:
  v41 = [v7 length];
  if (v41 >= 2)
  {
    v42 = 2;
  }

  else
  {
    v42 = v41;
  }

  v43 = [v7 substringToIndex:v42];

  v44 = [v6 objectForKey:v43];
  if (v44)
  {
    v22 = v44;
    v7 = v43;
    goto LABEL_47;
  }

  v7 = v43;
LABEL_5:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 localeIdentifier];
    v12 = [*(v8 + 3928) _deviceLanguage];
    v13 = [v9 languageCode];
    v14 = [v9 scriptCode];
    [v9 countryCode];
    v16 = v15 = v8;
    *v56 = 138413314;
    *&v56[4] = v11;
    *&v56[12] = 2112;
    *&v56[14] = v12;
    v57 = 2112;
    v58 = v13;
    v59 = 2112;
    v60 = v14;
    v61 = 2112;
    v62 = v16;
    _os_log_impl(&dword_1D9F69000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Looking for thresholds for %@/%@/%@/%@/%@", v56, 0x34u);

    v8 = v15;
  }

  if (!v7)
  {
    os_unfair_lock_lock(&_MergedGlobals);
    v17 = [v9 languageCode];
    v18 = sLastLanguage;
    sLastLanguage = v17;

    os_unfair_lock_unlock(&_MergedGlobals);
  }

  v19 = [v9 localeIdentifier];
  if (v19)
  {
    v20 = v19;
    v21 = [v9 localeIdentifier];
    v22 = [v6 objectForKey:v21];

    if (v22)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v9 localeIdentifier];
        *v56 = 138412290;
        *&v56[4] = v23;
        v24 = MEMORY[0x1E69E9C10];
        v25 = "Using thresholds for identifier %@";
        goto LABEL_46;
      }

LABEL_47:
      v47 = [SSCompactValueArray decodeFromDictionary:v22 nesting:1, *v56];
      os_unfair_lock_lock(&_MergedGlobals);
      v48 = qword_1EDBEA770;
      qword_1EDBEA770 = v47;
      v49 = v47;

      os_unfair_lock_unlock(&_MergedGlobals);
      goto LABEL_48;
    }
  }

  v27 = [*(v8 + 3928) _deviceLanguage];
  if (v27)
  {
    v28 = v27;
    v29 = [*(v8 + 3928) _deviceLanguage];
    v22 = [v6 objectForKey:v29];

    if (v22)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v23 = [*(v8 + 3928) _deviceLanguage];
        *v56 = 138412290;
        *&v56[4] = v23;
        v24 = MEMORY[0x1E69E9C10];
        v25 = "Using thresholds for system locale %@";
        goto LABEL_46;
      }

      goto LABEL_47;
    }
  }

  v30 = [v9 languageCode];
  if (v30)
  {
    v31 = v30;
    v32 = [v9 languageCode];
    v22 = [v6 objectForKey:v32];

    if (v22)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v9 languageCode];
        *v56 = 138412290;
        *&v56[4] = v23;
        v24 = MEMORY[0x1E69E9C10];
        v25 = "Using thresholds for language %@";
        goto LABEL_46;
      }

      goto LABEL_47;
    }
  }

  v37 = [v9 scriptCode];
  if (v37)
  {
    v38 = v37;
    v39 = [v9 scriptCode];
    v22 = [v6 objectForKey:v39];

    if (v22)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v9 scriptCode];
        *v56 = 138412290;
        *&v56[4] = v23;
        v24 = MEMORY[0x1E69E9C10];
        v25 = "Using thresholds for script %@";
        goto LABEL_46;
      }

      goto LABEL_47;
    }
  }

  v45 = [v9 countryCode];
  v22 = [v6 objectForKey:v45];

  v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (!v46)
    {
      goto LABEL_47;
    }

    v23 = [v9 countryCode];
    *v56 = 138412290;
    *&v56[4] = v23;
    v24 = MEMORY[0x1E69E9C10];
    v25 = "Using thresholds for country %@";
LABEL_46:
    _os_log_impl(&dword_1D9F69000, v24, OS_LOG_TYPE_DEFAULT, v25, v56, 0xCu);

    goto LABEL_47;
  }

  if (v46)
  {
    v51 = [v9 localeIdentifier];
    v52 = [*(v8 + 3928) _deviceLanguage];
    v53 = [v9 languageCode];
    v54 = [v9 scriptCode];
    v55 = [v9 countryCode];
    *v56 = 138413314;
    *&v56[4] = v51;
    *&v56[12] = 2112;
    *&v56[14] = v52;
    v57 = 2112;
    v58 = v53;
    v59 = 2112;
    v60 = v54;
    v61 = 2112;
    v62 = v55;
    _os_log_impl(&dword_1D9F69000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "no locale specific thresholds for %@/%@/%@/%@/%@", v56, 0x34u);
  }

LABEL_48:

  v50 = *MEMORY[0x1E69E9840];
}

+ (void)prepareTopHitsParametersForLanguage:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&_MergedGlobals);
  v5 = [sAllTopHitThresholds copy];
  os_unfair_lock_unlock(&_MergedGlobals);
  [a1 extractThresholdABValues:v5 forLanguage:v4];
}

+ (void)reloadTopHitsParametersFromTrial
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = SSDefaultsGetResources();
  v4 = [v3 filePathForKey:@"TopHitsThreshold"];

  v5 = SSDefaultsGetResources();
  v6 = [v5 filePathForKey:@"TopHitsContinuationThresholds"];

  v7 = SSDefaultsGetResources();
  v8 = [v7 filePathForKey:@"TopHitsFilterSectionsBundleIds"];

  v9 = SSValuesFromPlistWithPath(v4);
  v10 = SSValuesFromPlistWithPath(v6);
  v11 = [v10 objectForKey:@"thresholds"];
  v44 = v8;
  v12 = SSValuesFromPlistWithPath(v8);
  v13 = [v12 objectForKey:@"forbiddenSecondSections"];
  v14 = [v12 objectForKey:@"poorSecondSections"];
  if ([v9 count])
  {
    v41 = v10;
    v43 = v4;
    os_unfair_lock_lock(&_MergedGlobals);
    v15 = [v9 objectForKey:@"iOS"];
    v16 = sAllTopHitThresholds;
    sAllTopHitThresholds = v15;

    v17 = [sAllTopHitThresholds copy];
    os_unfair_lock_unlock(&_MergedGlobals);
    [a1 extractThresholdABValues:v17 forLanguage:0];
    v18 = [MEMORY[0x1E695DF58] currentLocale];
    v19 = [v17 objectForKey:@"default"];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    v42 = v6;
    if (v19)
    {
      if (v20)
      {
        [v18 localeIdentifier];
        v21 = v39 = v9;
        [MEMORY[0x1E695DF58] _deviceLanguage];
        v22 = v37 = v11;
        [v18 languageCode];
        v23 = v36 = v13;
        v24 = [v18 scriptCode];
        v25 = [v18 countryCode];
        *buf = 138413314;
        v46 = v21;
        v47 = 2112;
        v48 = v22;
        v49 = 2112;
        v50 = v23;
        v51 = 2112;
        v52 = v24;
        v53 = 2112;
        v54 = v25;
        _os_log_impl(&dword_1D9F69000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Getting fallback thresholds for %@/%@/%@/%@/%@", buf, 0x34u);

        v13 = v36;
        v9 = v39;

        v11 = v37;
      }
    }

    else
    {
      if (v20)
      {
        v40 = [v18 localeIdentifier];
        v38 = [MEMORY[0x1E695DF58] _deviceLanguage];
        v26 = [v18 languageCode];
        v27 = [v18 scriptCode];
        [v18 countryCode];
        *buf = 138413314;
        v46 = v40;
        v47 = 2112;
        v48 = v38;
        v49 = 2112;
        v50 = v26;
        v51 = 2112;
        v52 = v27;
        v54 = v53 = 2112;
        v28 = v54;
        _os_log_impl(&dword_1D9F69000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Error found no fallback thresholds for %@/%@/%@/%@/%@", buf, 0x34u);
      }

      v19 = &unk_1F55B7808;
    }

    v29 = [SSCompactValueArray decodeFromDictionary:v19 nesting:1];
    os_unfair_lock_lock(&_MergedGlobals);
    v30 = sFallbackTopHitsThreshold;
    sFallbackTopHitsThreshold = v29;

    os_unfair_lock_unlock(&_MergedGlobals);
    v6 = v42;
    v4 = v43;
    v10 = v41;
  }

  if ([v11 count])
  {
    os_unfair_lock_lock(&_MergedGlobals);
    objc_storeStrong(&sTopHitsContinuationThreshold, v11);
    os_unfair_lock_unlock(&_MergedGlobals);
  }

  if ([v13 count])
  {
    os_unfair_lock_lock(&_MergedGlobals);
    v31 = [MEMORY[0x1E695DFD8] setWithArray:v13];
    v32 = sForbiddenSecondSections;
    sForbiddenSecondSections = v31;

    os_unfair_lock_unlock(&_MergedGlobals);
  }

  if ([v14 count])
  {
    os_unfair_lock_lock(&_MergedGlobals);
    v33 = [MEMORY[0x1E695DFD8] setWithArray:v14];
    v34 = sPoorSecondSections;
    sPoorSecondSections = v33;

    os_unfair_lock_unlock(&_MergedGlobals);
  }

  v35 = *MEMORY[0x1E69E9840];
}

+ (void)reloadCommittedSearchParametersFromTrial
{
  v2 = SSDefaultsGetResources();
  v3 = [v2 filePathForKey:@"CommittedSearchDemotions"];

  v4 = SSValuesFromPlistWithPath(v3);
  obj = [v4 objectForKey:@"demoteNonExactMatchBundle"];
  v5 = [v4 objectForKey:@"legacyTophitSection"];
  if ([obj count])
  {
    os_unfair_lock_lock(&_MergedGlobals);
    objc_storeStrong(&sDemoteNonExactMatchBundle, obj);
    os_unfair_lock_unlock(&_MergedGlobals);
  }

  if ([v5 count])
  {
    os_unfair_lock_lock(&_MergedGlobals);
    v6 = [MEMORY[0x1E695DFD8] setWithArray:v5];
    v7 = sLegacyTophitSection;
    sLegacyTophitSection = v6;

    os_unfair_lock_unlock(&_MergedGlobals);
  }
}

+ (id)getForbiddenSecondSections
{
  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals);
  v0 = sForbiddenSecondSections;
  os_unfair_lock_unlock(&_MergedGlobals);

  return v0;
}

+ (id)getPoorSecondSections
{
  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals);
  v0 = sPoorSecondSections;
  os_unfair_lock_unlock(&_MergedGlobals);

  return v0;
}

+ (id)getDemoteNonExactMatchBundle
{
  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals);
  v0 = sDemoteNonExactMatchBundle;
  os_unfair_lock_unlock(&_MergedGlobals);

  return v0;
}

+ (id)getTopHitsThresholdsForBundleId:(unint64_t)a3 queryLength:(unint64_t)a4 queryTermCount:(char)a5 getFallback:
{
  v8 = a2;
  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals);
  if (a5)
  {
    v9 = sFallbackTopHitsThreshold;
  }

  else
  {
    v9 = qword_1EDBEA770;
    if (!qword_1EDBEA770)
    {
      os_unfair_lock_unlock(&_MergedGlobals);
      v10 = 0;
LABEL_4:
      v11 = 0;
      goto LABEL_5;
    }
  }

  v10 = getTrialDictionaryForLengthAndTermCount(v9, a3, a4);
  os_unfair_lock_unlock(&_MergedGlobals);
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = [v10 objectForKey:v8];
LABEL_5:

  return v11;
}

+ (id)getTopHitsContinuationThresholds
{
  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals);
  v0 = sTopHitsContinuationThreshold;
  os_unfair_lock_unlock(&_MergedGlobals);

  return v0;
}

+ (void)reloadSuggestionsRankingThresholds
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = SSDefaultsGetResources();
  v3 = [v2 filePathForKey:@"SuggestionsRankingThresholds"];

  if ([v3 length])
  {
    v4 = SSValuesFromPlistWithPath(v3);
    v5 = [v4 objectForKey:@"rankingparameters"];
    v6 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = MEMORY[0x1E696AD98];
          [*(*(&v17 + 1) + 8 * v11) doubleValue];
          v13 = [v12 numberWithDouble:?];
          [v6 addObject:v13];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v14 = v6;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  os_unfair_lock_lock(&_MergedGlobals);
  v15 = sSuggestionsRankingThresholds;
  sSuggestionsRankingThresholds = v14;

  os_unfair_lock_unlock(&_MergedGlobals);
  v16 = *MEMORY[0x1E69E9840];
}

+ (id)keyForIntervalType:(int64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E8595B78[a3];
  }
}

+ (uint64_t)getRecencyIntervalForBundleId:(uint64_t)a3 intervalType:(unint64_t)a4 indexRequired:
{
  v6 = a2;
  objc_opt_self();
  v7 = [objc_opt_class() keyForIntervalType:a3];
  if (v7)
  {
    pthread_rwlock_rdlock(&sIntervalsLock);
    v8 = [sRecencyThresholds objectForKey:v7];
    pthread_rwlock_unlock(&sIntervalsLock);
    if (v8)
    {
      v9 = [v8 objectForKey:v6];
      if (v9)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (a4 == -1 || (isKindOfClass & 1) == 0 || [v9 count] <= a4)
        {
          v11 = v9;
        }

        else
        {
          v11 = [v9 objectAtIndex:a4];
        }
      }

      else
      {
        v11 = [v8 objectForKey:@"default"];
      }

      v13 = v11;
      v12 = [v11 integerValue];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (uint64_t)getRecencyIntervalForBundleType:(uint64_t)a3 intervalType:(unint64_t)a4 indexRequired:
{
  v6 = a2;
  objc_opt_self();
  v7 = [objc_opt_class() keyForIntervalType:a3];
  if (v7)
  {
    pthread_rwlock_rdlock(&sIntervalsLock);
    v8 = [sRecencyThresholds objectForKey:v7];
    pthread_rwlock_unlock(&sIntervalsLock);
    if (v8)
    {
      v9 = [v6 stringValue];
      v10 = [v8 objectForKey:v9];

      if (v10)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (a4 == -1 || (isKindOfClass & 1) == 0 || [v10 count] <= a4)
        {
          v12 = v10;
        }

        else
        {
          v12 = [v10 objectAtIndex:a4];
        }
      }

      else
      {
        v12 = [v8 objectForKey:@"default"];
      }

      v14 = v12;
      v13 = [v12 integerValue];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (void)reloadRecencyThresholds
{
  v2 = SSDefaultsGetResources();
  v6 = [v2 filePathForKey:@"RecencyIntervals"];

  if ([v6 length])
  {
    v3 = SSValuesFromPlistWithPath(v6);
    pthread_rwlock_wrlock(&sIntervalsLock);
    v4 = [v3 objectForKey:@"iOS"];
    v5 = sRecencyThresholds;
    sRecencyThresholds = v4;

    if (!sRecencyThresholds)
    {
      objc_storeStrong(&sRecencyThresholds, v3);
    }

    pthread_rwlock_unlock(&sIntervalsLock);
  }

  MEMORY[0x1EEE66BB8]();
}

+ (uint64_t)isKeywordsHidingEnabledForLanguage:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  pthread_rwlock_rdlock(&sLocaleSpecificMatchingLock);
  v3 = [sLocaleSpecificMatchingKeywordsHiding objectForKey:v2];

  if (v3)
  {
    pthread_rwlock_unlock(&sLocaleSpecificMatchingLock);
LABEL_4:
    v4 = v3;
    v5 = [v4 BOOLValue];

    return v5;
  }

  v3 = [sLocaleSpecificMatchingKeywordsHiding objectForKey:@"default"];
  pthread_rwlock_unlock(&sLocaleSpecificMatchingLock);
  if (v3)
  {
    goto LABEL_4;
  }

  return 1;
}

+ (uint64_t)getMinMisspellingLengthForLanguage:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  pthread_rwlock_rdlock(&sLocaleSpecificMatchingLock);
  v3 = [sLocaleSpecificMatchingMinMisspellingLength objectForKey:v2];

  if (v3)
  {
    pthread_rwlock_unlock(&sLocaleSpecificMatchingLock);
LABEL_4:
    v4 = v3;
    v5 = [v4 integerValue];

    return v5;
  }

  v3 = [sLocaleSpecificMatchingMinMisspellingLength objectForKey:@"default"];
  pthread_rwlock_unlock(&sLocaleSpecificMatchingLock);
  if (v3)
  {
    goto LABEL_4;
  }

  return 4;
}

+ (void)reloadLocaleSpecificMatchingParameters
{
  v2 = SSDefaultsGetResources();
  v10 = [v2 filePathForKey:@"LocaleSpecificMatching"];

  if ([v10 length])
  {
    v3 = SSValuesFromPlistWithPath(v10);
    pthread_rwlock_wrlock(&sLocaleSpecificMatchingLock);
    v4 = [v3 objectForKey:@"keywords_hiding"];
    v5 = [v4 objectForKey:@"iOS"];
    v6 = sLocaleSpecificMatchingKeywordsHiding;
    sLocaleSpecificMatchingKeywordsHiding = v5;

    if (!sLocaleSpecificMatchingKeywordsHiding)
    {
      objc_storeStrong(&sLocaleSpecificMatchingKeywordsHiding, v4);
    }

    v7 = [v3 objectForKey:@"min_misspelling_length"];
    v8 = [v7 objectForKey:@"iOS"];
    v9 = sLocaleSpecificMatchingMinMisspellingLength;
    sLocaleSpecificMatchingMinMisspellingLength = v8;

    if (!sLocaleSpecificMatchingMinMisspellingLength)
    {
      objc_storeStrong(&sLocaleSpecificMatchingMinMisspellingLength, v7);
    }

    pthread_rwlock_unlock(&sLocaleSpecificMatchingLock);
  }

  MEMORY[0x1EEE66BB8]();
}

+ (id)getSuggestionsRankingThresholds
{
  os_unfair_lock_lock(&_MergedGlobals);
  v2 = sSuggestionsRankingThresholds;
  os_unfair_lock_unlock(&_MergedGlobals);

  return v2;
}

+ (void)reloadRankingParametersFromTrial
{
  [objc_opt_class() reloadTopHitsParametersFromTrial];
  [objc_opt_class() reloadCommittedSearchParametersFromTrial];
  [objc_opt_class() reloadSuggestionsRankingThresholds];
  [objc_opt_class() reloadRecencyThresholds];
  v2 = objc_opt_class();

  [v2 reloadLocaleSpecificMatchingParameters];
}

- (id)CEPValuesForTTR
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(SSRankingManager *)self rankingConfiguration];
  [v4 lock];

  v5 = [(SSRankingManager *)self rankingConfiguration];
  v6 = [v5 queryDependentCategoryProbabilities];

  if ([v6 count])
  {
    v20 = self;
    -[__CFString appendFormat:](v3, "appendFormat:", @"Got %lu CEP values from response: \n", [v6 count]);
    v7 = [v6 keysSortedByValueUsingSelector:sel_compare_];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v12 lowercaseString];
          v14 = [v6 objectForKey:v13];

          if (v14)
          {
            [(__CFString *)v3 appendFormat:@"%@\t:%@\n", v12, v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    [(__CFString *)v3 appendFormat:@"\n"];

    self = v20;
  }

  v15 = [(SSRankingManager *)self rankingConfiguration];
  [v15 unlock];

  if ([(__CFString *)v3 length])
  {
    v16 = v3;
  }

  else
  {
    v16 = &stru_1F556FE60;
  }

  v17 = v16;

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)addCEPValuesForTTR
{
  if (self->_logValues)
  {
    v3 = [(SSRankingManager *)self rankingConfiguration];
    v4 = [v3 queryDependentCategoryProbabilities];
    v5 = [v4 count];

    if (v5)
    {
      logValues = self->_logValues;
      v7 = [(SSRankingManager *)self CEPValuesForTTR];
      [(NSMutableString *)logValues appendString:v7];
    }
  }
}

- (void)finalizeLog
{
  if (isInternalDevice == 1)
  {
    [(SSRankingManager *)self addCEPValuesForTTR];
    v4 = SSDefaultsGetResources();
    v6 = [v4 getTTRLogs];

    v5 = v6;
    if (v6)
    {
      [(NSMutableString *)self->_logValues appendString:v6];
      v5 = v6;
    }
  }
}

+ (void)fillRankingPosition:(id)a3
{
  v18 = a3;
  if ([v18 count])
  {
    v3 = 0;
    LODWORD(v4) = 0;
    do
    {
      v5 = [v18 objectAtIndexedSubscript:v3];
      v6 = [v5 resultSet];
      v7 = [v6 count];

      v4 = (v4 + 1);
      if (v7)
      {
        v8 = 0;
        v9 = 1;
        do
        {
          v10 = [v5 resultSet];
          v11 = [v10 objectAtIndexedSubscript:v8];

          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
          [v11 setIndexOfSectionWhenRanked:v12];

          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9];
          [v11 setIndexOfResultInSectionWhenRanked:v13];

          v8 = v9;
          v14 = [v5 resultSet];
          v15 = [v14 count];

          v16 = v15 > v9;
          v9 = (v9 + 1);
        }

        while (v16);
      }

      v17 = [v18 count];
      v3 = v4;
    }

    while (v17 > v4);
  }
}

+ (id)processSearchToolFinalResults:(id)a3 queryContext:(id)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = SSSearchToolRankingLog();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D9F69000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SearchToolRanking", "Begin", buf, 2u);
  }

  v50 = v10;
  v51 = v8 - 1;
  if (processSearchToolFinalResults_queryContext__onceToken != -1)
  {
    +[SSRankingManager processSearchToolFinalResults:queryContext:];
  }

  v11 = SSGeneralLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v6 isAppEntitySearch];
    *buf = 67109120;
    LODWORD(v67) = v12;
    _os_log_impl(&dword_1D9F69000, v11, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] isAppEntitySearch=%d", buf, 8u);
  }

  spid = v8;

  v52 = v6;
  v13 = [v6 isSearchToolClient];
  v49 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v15)
  {
    v16 = v15;
    v47 = v13;
    obj = v14;
    v17 = 0;
    v18 = *v63;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v63 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v62 + 1) + 8 * i);
        [v20 setIsInitiallyHidden:0];
        v21 = [v20 resultSet];
        [v20 setMaxInitiallyVisibleResults:{objc_msgSend(v21, "count")}];

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v22 = [v20 resultSet];
        v23 = [v22 countByEnumeratingWithState:&v58 objects:v69 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v59;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v59 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = [*(*(&v58 + 1) + 8 * j) rankingItem];
              [v27 setShouldHideUnderShowMore:0];
            }

            v24 = [v22 countByEnumeratingWithState:&v58 objects:v69 count:16];
          }

          while (v24);
        }

        if (v17)
        {
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v28 = [v20 resultSet];
          v29 = [v28 countByEnumeratingWithState:&v54 objects:v68 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v55;
            do
            {
              for (k = 0; k != v30; ++k)
              {
                if (*v55 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v54 + 1) + 8 * k);
                v34 = [v17 resultSet];
                [v34 addObject:v33];

                [v17 setMaxInitiallyVisibleResults:{objc_msgSend(v17, "maxInitiallyVisibleResults") + 1}];
              }

              v30 = [v28 countByEnumeratingWithState:&v54 objects:v68 count:16];
            }

            while (v30);
          }
        }

        else
        {
          v17 = v20;
        }
      }

      v16 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
    }

    while (v16);
    v35 = obj;

    v13 = v47;
    if (v17)
    {
      v36 = v52;
      [SSRankingManager searchToolRanker:v17 queryContext:v52 searchToolBundles:processSearchToolFinalResults_queryContext__SEARCHTOOL_BUNDLES];
      [v17 setBundleIdentifier:@"com.apple.spotlight.tophits"];
      [v17 setTitle:@"Top Hit"];
      [v17 setGroupId:&unk_1F55B39D8];
      v37 = [v17 resultSet];
      [v17 setMaxInitiallyVisibleResults:{objc_msgSend(v37, "count")}];

      v38 = v49;
      [v49 addObject:v17];
      v39 = v51;
      goto LABEL_38;
    }
  }

  else
  {

    v35 = v14;
  }

  v40 = SSGeneralLog();
  v39 = v51;
  v36 = v52;
  v38 = v49;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = [v52 searchString];
    v42 = SSRedactStringClient(v41, 1, v13);
    *buf = 138412290;
    v67 = v42;
    _os_log_impl(&dword_1D9F69000, v40, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ No results to rank", buf, 0xCu);
  }

  v17 = 0;
LABEL_38:
  v43 = v50;
  v44 = v43;
  if (v39 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D9F69000, v44, OS_SIGNPOST_INTERVAL_BEGIN, spid, "SearchToolRanking", "End", buf, 2u);
  }

  v45 = *MEMORY[0x1E69E9840];

  return v38;
}

void __63__SSRankingManager_processSearchToolFinalResults_queryContext___block_invoke()
{
  v5[27] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"com.apple.DocumentsApp";
  v5[1] = @"com.apple.journal";
  v5[2] = @"com.apple.CloudDocs.MobileDocumentsFileProvider";
  v5[3] = @"com.apple.CloudDocs.iCloudDriveFileProvider";
  v5[4] = @"com.apple.CloudDocs.iCloudDriveFileProviderManaged";
  v5[5] = @"com.apple.mobilemail";
  v5[6] = @"com.apple.mobilecal";
  v5[7] = @"com.apple.MobileSMS";
  v5[8] = @"com.apple.reminders";
  v5[9] = @"com.apple.spotlight.events";
  v5[10] = @"com.apple.Passbook";
  v5[11] = @"com.apple.mobilenotes";
  v5[12] = @"com.apple.Music";
  v5[13] = @"com.apple.Keynote";
  v5[14] = @"com.apple.Pages";
  v5[15] = @"com.apple.searchd.syndicatedLinks";
  v5[16] = @"com.apple.searchd.syndicatedPhotos";
  v5[17] = @"com.apple.searchd.syndicatedPhotos.MobileSMS";
  v5[18] = @"com.apple.searchd.syndicatedPhotos.mobilenotes";
  v5[19] = @"com.apple.searchd.syndicatedPhotos.mobileslideshow";
  v5[20] = @"com.apple.mobileslideshow";
  v5[21] = @"com.apple.MobileAddressBook";
  v5[22] = @"com.apple.mobilesafari";
  v5[23] = @"com.apple.VoiceMemos";
  v5[24] = @"com.apple.mobilephone";
  v5[25] = @"com.apple.freeform";
  v5[26] = @"com.apple.iBooks";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:27];
  v2 = [v0 setWithArray:v1];
  v3 = processSearchToolFinalResults_queryContext__SEARCHTOOL_BUNDLES;
  processSearchToolFinalResults_queryContext__SEARCHTOOL_BUNDLES = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)searchToolDeduplicateResults:(id)a3
{
  v93 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v82 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v77 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v75 = [MEMORY[0x1E695DF90] dictionary];
  v79 = [MEMORY[0x1E695DF90] dictionary];
  v80 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if ([v3 count])
  {
    v78 = 0;
    v6 = 0;
    v76 = v3;
    v83 = v4;
    v81 = v5;
    while (1)
    {
      v7 = [v3 objectAtIndexedSubscript:v6];
      v8 = [v7 rankingItem];

      if (v8)
      {
        break;
      }

LABEL_68:

      if (++v6 >= [v3 count])
      {
        goto LABEL_69;
      }
    }

    v9 = [v7 rankingItem];
    v10 = SSCompactRankingAttrsGetValue([v9 attributes], 0xE6uLL);

    v11 = [v7 rankingItem];
    v12 = SSCompactRankingAttrsGetValue([v11 attributes], 0xE7uLL);

    v13 = [v7 rankingItem];
    v14 = SSCompactRankingAttrsGetValue([v13 attributes], 0x117uLL);

    v15 = [v7 rankingItem];
    v85 = SSCompactRankingAttrsGetValue([v15 attributes], 0x111uLL);

    v86 = v14;
    if (v10)
    {
      if ([v5 containsObject:v10])
      {
        v16 = SSGeneralLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v7 rankingItem];
          v18 = [v17 identifier];
          *buf = 138412546;
          v88 = v18;
          v89 = 2112;
          v90 = v10;
          _os_log_impl(&dword_1D9F69000, v16, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Dedupe] result %@ with com_apple_mail_messageID=%@", buf, 0x16u);

          v14 = v86;
        }

        v19 = 1;
        if (!v12)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }

      [v5 addObject:v10];
    }

    v19 = 0;
    if (!v12)
    {
      goto LABEL_16;
    }

LABEL_12:
    if (![v4 containsObject:v12])
    {
      [v4 addObject:v12];
      if (!v14)
      {
LABEL_18:
        v23 = [v7 rankingItem];
        v24 = [v23 identifier];
        v84 = v10;
        if (v24)
        {
          v25 = v24;
          v26 = [v7 rankingItem];
          if (([v26 bundleIDType] & 8) != 0)
          {
            v27 = [v7 rankingItem];
            v28 = [v27 identifier];
            v29 = [v82 containsObject:v28];

            v3 = v76;
            v14 = v86;
            if (!v29)
            {
              goto LABEL_28;
            }

            v23 = SSGeneralLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v30 = [v7 rankingItem];
              v31 = [v30 identifier];
              *buf = 138412290;
              v88 = v31;
              _os_log_impl(&dword_1D9F69000, v23, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Dedupe] result %@ with eventMessageIdentifier", buf, 0xCu);
            }

            v19 = 1;
          }

          else
          {

            v14 = v86;
          }
        }

LABEL_28:
        v32 = [v7 rankingItem];
        v33 = [v32 bundleIDType];

        if (v33 < 0)
        {
          v34 = [v7 rankingItem];
          v35 = SSCompactRankingAttrsGetValue([v34 attributes], 0xDuLL);

          v4 = v83;
          if ([v35 length])
          {
            if ([v77 containsObject:v35])
            {
              v36 = SSGeneralLog();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                v37 = [v7 rankingItem];
                v38 = [v37 identifier];
                *buf = 138412290;
                v88 = v38;
                _os_log_impl(&dword_1D9F69000, v36, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Dedupe] result %@ with MDItemContentURL", buf, 0xCu);

                v14 = v86;
              }

              v19 = 1;
            }

            else
            {
              [v77 addObject:v35];
            }
          }
        }

        else
        {
          v4 = v83;
        }

        v39 = [v7 rankingItem];
        v40 = [v39 bundleIDType];

        if ((v40 & 2) != 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v85 length])
            {
              if ((v78 & 1) != 0 && [v85 isEqualToString:@"FolderEntity"])
              {
                v41 = SSGeneralLog();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1D9F69000, v41, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Dedupe] removing FolderEntity (from notes bundle) as NoteEntity is present at a higher rank.", buf, 2u);
                }

                v19 = 1;
                v42 = 1;
              }

              else
              {
                v42 = [v85 isEqualToString:@"NoteEntity"] | v78;
              }

              v78 = v42;
            }
          }
        }

        v43 = [v7 rankingItem];
        v44 = [v43 bundleIDType];

        if ((v44 & 0x20000000000000) == 0)
        {
          if (!v19)
          {
            goto LABEL_67;
          }

          goto LABEL_66;
        }

        v45 = [v7 rankingItem];
        v46 = [v45 domainIdentifier];

        if ([v46 length])
        {
          v47 = [v7 rankingItem];
          v48 = [v47 eventSourceBundleIdentifier];
          v49 = [v48 isEqualToString:@"com.apple.mobilemail"];

          if (v49)
          {
            v50 = [v75 objectForKeyedSubscript:v46];

            if (!v50)
            {
              v51 = [MEMORY[0x1E696AD50] indexSet];
              [v75 setObject:v51 forKeyedSubscript:v46];
            }

            v52 = [v75 objectForKeyedSubscript:v46];
            [v52 addIndex:v6];

            v53 = [v79 objectForKeyedSubscript:v46];

            if (v53)
            {
              v54 = SSGeneralLog();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                v74 = [v79 objectForKeyedSubscript:v46];
                v55 = [v74 count];
                v73 = [v7 rankingItem];
                v56 = [v73 domainIdentifier];
                v57 = [v7 rankingItem];
                v58 = [v57 identifier];
                *buf = 134218498;
                v88 = v55;
                v89 = 2112;
                v90 = v56;
                v91 = 2112;
                v92 = v58;
                _os_log_impl(&dword_1D9F69000, v54, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Dedupe] %lu events from SearchIndexer with domainIdentifier %@ in favor of Mail result with identifier %@", buf, 0x20u);

                v4 = v83;
                v3 = v76;
              }

              v59 = [v79 objectForKeyedSubscript:v46];
              [v80 addIndexes:v59];
            }
          }

          else
          {
            v60 = [v7 rankingItem];
            v61 = [v60 eventSourceBundleIdentifier];
            v62 = [v61 isEqualToString:@"com.apple.email.SearchIndexer"];

            if (v62)
            {
              v63 = [v79 objectForKeyedSubscript:v46];

              if (!v63)
              {
                v64 = [MEMORY[0x1E696AD50] indexSet];
                [v79 setObject:v64 forKeyedSubscript:v46];
              }

              v65 = [v79 objectForKeyedSubscript:v46];
              [v65 addIndex:v6];

              v66 = [v75 objectForKeyedSubscript:v46];

              if (v66)
              {
                v67 = SSGeneralLog();
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                {
                  v68 = [v7 rankingItem];
                  v69 = [v68 identifier];
                  v70 = [v7 rankingItem];
                  v71 = [v70 domainIdentifier];
                  *buf = 138412546;
                  v88 = v69;
                  v89 = 2112;
                  v90 = v71;
                  _os_log_impl(&dword_1D9F69000, v67, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Dedupe] event from SearchIndexer with identifier %@ in favor of Mail result with domainIdentifier %@", buf, 0x16u);

                  v3 = v76;
                  v4 = v83;
                }

                v14 = v86;
                goto LABEL_66;
              }
            }
          }
        }

        v14 = v86;
        if ((v19 & 1) == 0)
        {
LABEL_67:

          v5 = v81;
          goto LABEL_68;
        }

LABEL_66:
        [v80 addIndex:v6];
        goto LABEL_67;
      }

LABEL_17:
      [v82 addObject:v14];
      goto LABEL_18;
    }

    v20 = SSGeneralLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v7 rankingItem];
      v22 = [v21 identifier];
      *buf = 138412546;
      v88 = v22;
      v89 = 2112;
      v90 = v12;
      _os_log_impl(&dword_1D9F69000, v20, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Dedupe] result %@ with com_apple_mail_message_id_header=%@", buf, 0x16u);

      v14 = v86;
    }

    v19 = 1;
LABEL_16:
    if (!v14)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_69:
  if ([v80 count])
  {
    [v3 removeObjectsAtIndexes:v80];
  }

  v72 = *MEMORY[0x1E69E9840];
}

+ (id)getArrivalLocationStringFromResult:(id)a3
{
  v3 = a3;
  v4 = [v3 rankingItem];
  v5 = SSCompactRankingAttrsGetValue([v4 attributes], 0xF1uLL);

  v6 = [v3 rankingItem];
  v7 = SSCompactRankingAttrsGetValue([v6 attributes], 0xF2uLL);

  v8 = [v3 rankingItem];
  v9 = SSCompactRankingAttrsGetValue([v8 attributes], 0xFAuLL);

  v10 = [v3 rankingItem];
  v11 = SSCompactRankingAttrsGetValue([v10 attributes], 0xFBuLL);

  v12 = [v3 rankingItem];
  v13 = SSCompactRankingAttrsGetValue([v12 attributes], 0xFCuLL);

  v14 = [v3 rankingItem];
  v15 = SSCompactRankingAttrsGetValue([v14 attributes], 0xFDuLL);

  v16 = [v3 rankingItem];
  v17 = SSCompactRankingAttrsGetValue([v16 attributes], 0x10DuLL);

  v18 = [v3 rankingItem];

  v19 = SSCompactRankingAttrsGetValue([v18 attributes], 0x10EuLL);

  v20 = &stru_1F556FE60;
  if (v5)
  {
    v21 = v5;
  }

  else
  {
    v21 = &stru_1F556FE60;
  }

  if (v7)
  {
    v22 = v7;
  }

  else
  {
    v22 = &stru_1F556FE60;
  }

  if (v9)
  {
    v23 = v9;
  }

  else
  {
    v23 = &stru_1F556FE60;
  }

  if (v11)
  {
    v24 = v11;
  }

  else
  {
    v24 = &stru_1F556FE60;
  }

  if (v13)
  {
    v25 = v13;
  }

  else
  {
    v25 = &stru_1F556FE60;
  }

  if (v15)
  {
    v26 = v15;
  }

  else
  {
    v26 = &stru_1F556FE60;
  }

  if (v17)
  {
    v27 = v17;
  }

  else
  {
    v27 = &stru_1F556FE60;
  }

  if (v19)
  {
    v20 = v19;
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@ %@ %@ %@ %@ %@", v21, v22, v23, v24, v25, v26, v27, v20];

  return v28;
}

+ (id)getDepartureLocationStringFromResult:(id)a3
{
  v3 = a3;
  v4 = [v3 rankingItem];
  v5 = SSCompactRankingAttrsGetValue([v4 attributes], 0xF3uLL);

  v6 = [v3 rankingItem];
  v7 = SSCompactRankingAttrsGetValue([v6 attributes], 0xF4uLL);

  v8 = [v3 rankingItem];
  v9 = SSCompactRankingAttrsGetValue([v8 attributes], 0xFEuLL);

  v10 = [v3 rankingItem];
  v11 = SSCompactRankingAttrsGetValue([v10 attributes], 0xFFuLL);

  v12 = [v3 rankingItem];
  v13 = SSCompactRankingAttrsGetValue([v12 attributes], 0x100uLL);

  v14 = [v3 rankingItem];
  v15 = SSCompactRankingAttrsGetValue([v14 attributes], 0x101uLL);

  v16 = [v3 rankingItem];
  v17 = SSCompactRankingAttrsGetValue([v16 attributes], 0x10BuLL);

  v18 = [v3 rankingItem];

  v19 = SSCompactRankingAttrsGetValue([v18 attributes], 0x10CuLL);

  v20 = &stru_1F556FE60;
  if (v5)
  {
    v21 = v5;
  }

  else
  {
    v21 = &stru_1F556FE60;
  }

  if (v7)
  {
    v22 = v7;
  }

  else
  {
    v22 = &stru_1F556FE60;
  }

  if (v9)
  {
    v23 = v9;
  }

  else
  {
    v23 = &stru_1F556FE60;
  }

  if (v11)
  {
    v24 = v11;
  }

  else
  {
    v24 = &stru_1F556FE60;
  }

  if (v13)
  {
    v25 = v13;
  }

  else
  {
    v25 = &stru_1F556FE60;
  }

  if (v15)
  {
    v26 = v15;
  }

  else
  {
    v26 = &stru_1F556FE60;
  }

  if (v17)
  {
    v27 = v17;
  }

  else
  {
    v27 = &stru_1F556FE60;
  }

  if (v19)
  {
    v20 = v19;
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@ %@ %@ %@ %@ %@", v21, v22, v23, v24, v25, v26, v27, v20];

  return v28;
}

+ (id)getLocationStringFromResult:(id)a3
{
  v4 = a3;
  v5 = [v4 rankingItem];
  v6 = SSCompactRankingAttrsGetValue([v5 attributes], 0xD2uLL);

  v7 = [v4 rankingItem];
  v8 = SSCompactRankingAttrsGetValue([v7 attributes], 0xCuLL);

  v9 = [a1 getArrivalLocationStringFromResult:v4];
  v10 = [a1 getDepartureLocationStringFromResult:v4];

  v11 = &stru_1F556FE60;
  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = &stru_1F556FE60;
  }

  if (v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = &stru_1F556FE60;
  }

  if (v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = &stru_1F556FE60;
  }

  if (v10)
  {
    v11 = v10;
  }

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@ %@", v12, v13, v14, v11];

  return v15;
}

+ (BOOL)searchToolShouldFilterEventBeforeRanking:(id)a3 queryContext:(id)a4 matchQUIntent:(BOOL)a5 searchToolBundles:(id)a6 useLLMQU:(BOOL)a7 hasEventTypeFromQU:(BOOL)a8
{
  v279 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v245 = [v12 isSearchToolClient];
  v13 = [v11 rankingItem];
  v14 = SSCompactRankingAttrsGetValue([v13 attributes], 0xE8uLL);

  v15 = [a1 getEventIntentFallbackTokens];
  v261[0] = MEMORY[0x1E69E9820];
  v261[1] = 3221225472;
  v261[2] = __134__SSRankingManager_searchToolShouldFilterEventBeforeRanking_queryContext_matchQUIntent_searchToolBundles_useLLMQU_hasEventTypeFromQU___block_invoke;
  v261[3] = &unk_1E8595AE0;
  v16 = v12;
  v262 = v16;
  v17 = [v15 indexOfObjectPassingTest:v261];
  v252 = v16;
  if (!a8 && v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = SSGeneralLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v246 = [v16 searchString];
      v19 = 1;
      v20 = SSRedactStringClient(v246, 1, v245);
      v239 = [v11 title];
      v234 = [v239 text];
      v21 = SSRedactStringClient(v234, 1, v245);
      v229 = [v11 rankingItem];
      v217 = [v229 identifier];
      SSRedactStringClient(v217, 1, v245);
      v23 = v22 = v15;
      v24 = [v11 rankingItem];
      SSCompactRankingAttrsGetValue([v24 attributes], 1uLL);
      v25 = v224 = v11;
      v26 = SSRedactStringClient(v25, 1, v245);
      *buf = 138413314;
      v266 = v20;
      v267 = 2112;
      v268 = v14;
      v269 = 2112;
      v270 = v21;
      v271 = 2112;
      v272 = v23;
      v273 = 2112;
      v274 = v26;
      _os_log_impl(&dword_1D9F69000, v18, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [personal answers] for query=%@, filtered eventType=%@ with title=%@ identifier=%@ MDItemIdentifier=%@ due to no eventTypeFromQU or fallbackIntent", buf, 0x34u);

      v15 = v22;
      v11 = v224;

LABEL_140:
      goto LABEL_141;
    }

    goto LABEL_139;
  }

  if (([v16 llmQUIntentType] & 0x20000) == 0)
  {
    v27 = [v11 rankingItem];
    v28 = [v27 detectedEventType];
    v29 = [v252 llmQUIntentType] & v28;

    if (!v29)
    {
      v18 = SSGeneralLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v250 = [v252 searchString];
        v232 = SSRedactStringClient(v250, 1, v245);
        v243 = [v11 title];
        v237 = [v243 text];
        v227 = SSRedactStringClient(v237, 1, v245);
        v188 = [v11 rankingItem];
        v189 = [v188 identifier];
        v190 = SSRedactStringClient(v189, 1, v245);
        v191 = [v11 rankingItem];
        v192 = SSCompactRankingAttrsGetValue([v191 attributes], 1uLL);
        SSRedactStringClient(v192, 1, v245);
        v193 = v222 = v15;
        *buf = 138413314;
        v266 = v232;
        v267 = 2112;
        v268 = v14;
        v269 = 2112;
        v270 = v227;
        v271 = 2112;
        v272 = v190;
        v273 = 2112;
        v274 = v193;
        _os_log_impl(&dword_1D9F69000, v18, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [personal answers] for query=%@, filtered eventType=%@ with title=%@ identifier=%@ MDItemIdentifier=%@ due to no match with QU predicted Intent", buf, 0x34u);

        v15 = v222;
        v19 = 1;
        goto LABEL_140;
      }

LABEL_139:
      v19 = 1;
      goto LABEL_140;
    }
  }

  v30 = [v252 arrivalLocationFromQU];
  if (v30)
  {
    v31 = v30;
    v32 = [v252 arrivalLocationFromQU];
    v33 = [v32 length];

    if (v33)
    {
      v18 = [a1 getArrivalLocationStringFromResult:v11];
      v34 = [v252 arrivalLocationFromQU];
      v35 = [v18 localizedCaseInsensitiveContainsString:v34];

      if ((v35 & 1) == 0)
      {
        v173 = SSGeneralLog();
        if (!os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_138;
        }

        v248 = [v252 searchString];
        v211 = SSRedactStringClient(v248, 1, v245);
        v241 = [v11 title];
        v236 = [v241 text];
        v174 = SSRedactStringClient(v236, 1, v245);
        v230 = [v11 rankingItem];
        v215 = [v230 identifier];
        v175 = SSRedactStringClient(v215, 1, v245);
        v208 = [v11 rankingItem];
        SSCompactRankingAttrsGetValue([v208 attributes], 1uLL);
        v176 = v226 = v11;
        SSRedactStringClient(v176, 1, v245);
        v177 = v218 = v14;
        [v252 arrivalLocationFromQU];
        v178 = v221 = v15;
        v179 = SSRedactStringClient(v178, 1, v245);
        v180 = SSRedactStringClient(v18, 1, v245);
        *buf = 138413826;
        v266 = v211;
        v267 = 2112;
        v268 = v218;
        v269 = 2112;
        v270 = v174;
        v271 = 2112;
        v272 = v175;
        v273 = 2112;
        v274 = v177;
        v275 = 2112;
        v276 = v179;
        v277 = 2112;
        v278 = v180;
        v181 = "[SpotlightRanking] [SearchTool] [personal answers] for query=%@, filtered eventType=%@ with title=%@ identifier=%@ MDItemIdentifier=%@ as arrivalLocationFromQU=%@ does not match arrivalLocationsText=%@";
        goto LABEL_134;
      }
    }
  }

  v36 = [v252 departureLocationFromQU];
  if (v36)
  {
    v37 = v36;
    v38 = [v252 departureLocationFromQU];
    v39 = [v38 length];

    if (v39)
    {
      v18 = [a1 getDepartureLocationStringFromResult:v11];
      v40 = [v252 departureLocationFromQU];
      v41 = [v18 localizedCaseInsensitiveContainsString:v40];

      if (v41)
      {

        goto LABEL_15;
      }

      v173 = SSGeneralLog();
      if (!os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_138;
      }

      v248 = [v252 searchString];
      v211 = SSRedactStringClient(v248, 1, v245);
      v241 = [v11 title];
      v236 = [v241 text];
      v174 = SSRedactStringClient(v236, 1, v245);
      v230 = [v11 rankingItem];
      v215 = [v230 identifier];
      v175 = SSRedactStringClient(v215, 1, v245);
      v208 = [v11 rankingItem];
      SSCompactRankingAttrsGetValue([v208 attributes], 1uLL);
      v176 = v226 = v11;
      SSRedactStringClient(v176, 1, v245);
      v177 = v218 = v14;
      [v252 departureLocationFromQU];
      v178 = v221 = v15;
      v179 = SSRedactStringClient(v178, 1, v245);
      v180 = SSRedactStringClient(v18, 1, v245);
      *buf = 138413826;
      v266 = v211;
      v267 = 2112;
      v268 = v218;
      v269 = 2112;
      v270 = v174;
      v271 = 2112;
      v272 = v175;
      v273 = 2112;
      v274 = v177;
      v275 = 2112;
      v276 = v179;
      v277 = 2112;
      v278 = v180;
      v181 = "[SpotlightRanking] [SearchTool] [personal answers] for query=%@, filtered eventType=%@ with title=%@ identifier=%@ MDItemIdentifier=%@ as departureLocationFromQU=%@ does not match departureLocationsText=%@";
LABEL_134:
      _os_log_impl(&dword_1D9F69000, v173, OS_LOG_TYPE_DEFAULT, v181, buf, 0x48u);

      v15 = v221;
      v11 = v226;

      v14 = v218;
      v194 = v211;
LABEL_137:

      goto LABEL_138;
    }
  }

LABEL_15:
  v42 = [v252 locationFromQU];
  if (v42)
  {
    v43 = v42;
    v44 = [v252 locationFromQU];
    v45 = [v44 length];

    if (v45)
    {
      v18 = [a1 getLocationStringFromResult:v11];
      v46 = [v252 locationFromQU];
      v47 = [v18 localizedCaseInsensitiveContainsString:v46];

      if (v47)
      {

        goto LABEL_19;
      }

      v173 = SSGeneralLog();
      if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
      {
        v244 = [v252 searchString];
        v251 = SSRedactStringClient(v244, 1, v245);
        v238 = [v11 title];
        v233 = [v238 text];
        v210 = SSRedactStringClient(v233, 1, v245);
        v223 = [v11 rankingItem];
        v216 = [v223 identifier];
        v195 = SSRedactStringClient(v216, 1, v245);
        [v11 rankingItem];
        v213 = v228 = v11;
        v196 = SSCompactRankingAttrsGetValue([v213 attributes], 1uLL);
        SSRedactStringClient(v196, 1, v245);
        v197 = v219 = v14;
        v198 = SSRedactStringClient(v18, 1, v245);
        [v252 locationFromQU];
        v200 = v199 = v15;
        v201 = SSRedactStringClient(v200, 1, v245);
        *buf = 138413826;
        v266 = v251;
        v267 = 2112;
        v268 = v219;
        v269 = 2112;
        v270 = v210;
        v271 = 2112;
        v272 = v195;
        v273 = 2112;
        v274 = v197;
        v275 = 2112;
        v276 = v198;
        v202 = v198;
        v277 = 2112;
        v278 = v201;
        _os_log_impl(&dword_1D9F69000, v173, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [personal answers] for query=%@, filtered eventType=%@ with title=%@ identifier=%@ MDItemIdentifier=%@ as locationTextFromItem=%@ does not contain locationFromQU=%@", buf, 0x48u);

        v15 = v199;
        v11 = v228;

        v14 = v219;
        v194 = v251;
        goto LABEL_137;
      }

LABEL_138:

      goto LABEL_139;
    }
  }

LABEL_19:
  v48 = [v252 parsedArgSearchTermsFromQU];
  v49 = [v48 count];

  if (v49)
  {
    v50 = [MEMORY[0x1E695DFA8] set];
    v51 = [v11 rankingItem];
    v52 = SSCompactRankingAttrsGetValue([v51 attributes], 0xEAuLL);
    v53 = v52;
    if (v52)
    {
      v54 = v52;
    }

    else
    {
      v54 = &stru_1F556FE60;
    }

    [v50 addObject:v54];

    v55 = [v11 rankingItem];
    v56 = SSCompactRankingAttrsGetValue([v55 attributes], 0xEDuLL);
    v57 = v56;
    if (v56)
    {
      v58 = v56;
    }

    else
    {
      v58 = &stru_1F556FE60;
    }

    [v50 addObject:v58];

    v59 = [v11 rankingItem];
    v60 = SSCompactRankingAttrsGetValue([v59 attributes], 0xF3uLL);
    v61 = v60;
    if (v60)
    {
      v62 = v60;
    }

    else
    {
      v62 = &stru_1F556FE60;
    }

    [v50 addObject:v62];

    v63 = [v11 rankingItem];
    v64 = SSCompactRankingAttrsGetValue([v63 attributes], 0xF4uLL);
    v65 = v64;
    if (v64)
    {
      v66 = v64;
    }

    else
    {
      v66 = &stru_1F556FE60;
    }

    [v50 addObject:v66];

    v67 = [v11 rankingItem];
    v68 = SSCompactRankingAttrsGetValue([v67 attributes], 0xF1uLL);
    v69 = v68;
    if (v68)
    {
      v70 = v68;
    }

    else
    {
      v70 = &stru_1F556FE60;
    }

    [v50 addObject:v70];

    v71 = [v11 rankingItem];
    v72 = SSCompactRankingAttrsGetValue([v71 attributes], 0xF2uLL);
    v73 = v72;
    if (v72)
    {
      v74 = v72;
    }

    else
    {
      v74 = &stru_1F556FE60;
    }

    [v50 addObject:v74];

    v75 = [v11 rankingItem];
    v76 = SSCompactRankingAttrsGetValue([v75 attributes], 0xFEuLL);
    v77 = v76;
    if (v76)
    {
      v78 = v76;
    }

    else
    {
      v78 = &stru_1F556FE60;
    }

    [v50 addObject:v78];

    v79 = [v11 rankingItem];
    v80 = SSCompactRankingAttrsGetValue([v79 attributes], 0xFAuLL);
    v81 = v80;
    if (v80)
    {
      v82 = v80;
    }

    else
    {
      v82 = &stru_1F556FE60;
    }

    [v50 addObject:v82];

    v83 = [v11 rankingItem];
    v84 = SSCompactRankingAttrsGetValue([v83 attributes], 0xFBuLL);
    v85 = v84;
    if (v84)
    {
      v86 = v84;
    }

    else
    {
      v86 = &stru_1F556FE60;
    }

    [v50 addObject:v86];

    v87 = [v11 rankingItem];
    v88 = SSCompactRankingAttrsGetValue([v87 attributes], 0xFDuLL);
    v89 = v88;
    if (v88)
    {
      v90 = v88;
    }

    else
    {
      v90 = &stru_1F556FE60;
    }

    [v50 addObject:v90];

    v91 = [v11 rankingItem];
    v92 = SSCompactRankingAttrsGetValue([v91 attributes], 0xF5uLL);
    v93 = v92;
    if (v92)
    {
      v94 = v92;
    }

    else
    {
      v94 = &stru_1F556FE60;
    }

    [v50 addObject:v94];

    v95 = [v11 rankingItem];
    v96 = SSCompactRankingAttrsGetValue([v95 attributes], 0x103uLL);
    v97 = v96;
    if (v96)
    {
      v98 = v96;
    }

    else
    {
      v98 = &stru_1F556FE60;
    }

    [v50 addObject:v98];

    v99 = [v11 rankingItem];
    v100 = SSCompactRankingAttrsGetValue([v99 attributes], 0xD2uLL);
    v101 = v100;
    if (v100)
    {
      v102 = v100;
    }

    else
    {
      v102 = &stru_1F556FE60;
    }

    [v50 addObject:v102];

    v103 = [v11 rankingItem];
    v104 = SSCompactRankingAttrsGetValue([v103 attributes], 0x109uLL);
    v105 = v104;
    if (v104)
    {
      v106 = v104;
    }

    else
    {
      v106 = &stru_1F556FE60;
    }

    [v50 addObject:v106];

    v107 = [v11 rankingItem];
    v108 = SSCompactRankingAttrsGetValue([v107 attributes], 0x129uLL);
    v109 = v108;
    if (v108)
    {
      v110 = v108;
    }

    else
    {
      v110 = &stru_1F556FE60;
    }

    [v50 addObject:v110];

    v111 = [v11 rankingItem];
    v112 = SSCompactRankingAttrsGetValue([v111 attributes], 0x12DuLL);
    v113 = v112;
    if (v112)
    {
      v114 = v112;
    }

    else
    {
      v114 = &stru_1F556FE60;
    }

    [v50 addObject:v114];

    v115 = [v11 rankingItem];
    v116 = SSCompactRankingAttrsGetValue([v115 attributes], 0x12EuLL);
    v117 = v116;
    if (v116)
    {
      v118 = v116;
    }

    else
    {
      v118 = &stru_1F556FE60;
    }

    [v50 addObject:v118];

    v119 = [v11 rankingItem];
    v120 = SSCompactRankingAttrsGetValue([v119 attributes], 0x10BuLL);
    v121 = v120;
    if (v120)
    {
      v122 = v120;
    }

    else
    {
      v122 = &stru_1F556FE60;
    }

    [v50 addObject:v122];

    v123 = [v11 rankingItem];
    v124 = SSCompactRankingAttrsGetValue([v123 attributes], 0x10CuLL);
    v125 = v124;
    if (v124)
    {
      v126 = v124;
    }

    else
    {
      v126 = &stru_1F556FE60;
    }

    [v50 addObject:v126];

    v127 = [v11 rankingItem];
    v128 = SSCompactRankingAttrsGetValue([v127 attributes], 0x10DuLL);
    v129 = v128;
    if (v128)
    {
      v130 = v128;
    }

    else
    {
      v130 = &stru_1F556FE60;
    }

    [v50 addObject:v130];

    v131 = [v11 rankingItem];
    v132 = SSCompactRankingAttrsGetValue([v131 attributes], 0x10EuLL);
    v133 = v132;
    if (v132)
    {
      v134 = v132;
    }

    else
    {
      v134 = &stru_1F556FE60;
    }

    [v50 addObject:v134];

    v135 = [v11 rankingItem];
    v136 = SSCompactRankingAttrsGetValue([v135 attributes], 0xCuLL);
    v137 = v136;
    if (v136)
    {
      v138 = v136;
    }

    else
    {
      v138 = &stru_1F556FE60;
    }

    [v50 addObject:v138];

    v139 = [v11 rankingItem];
    v140 = SSCompactRankingAttrsGetValue([v139 attributes], 0xE8uLL);
    v141 = v140;
    if (v140)
    {
      v142 = v140;
    }

    else
    {
      v142 = &stru_1F556FE60;
    }

    [v50 addObject:v142];

    v143 = [v11 rankingItem];
    v144 = SSCompactRankingAttrsGetValue([v143 attributes], 0x11AuLL);
    v145 = v144;
    if (v144)
    {
      v146 = v144;
    }

    else
    {
      v146 = &stru_1F556FE60;
    }

    [v50 addObject:v146];

    v147 = [v11 rankingItem];
    v148 = SSCompactRankingAttrsGetValue([v147 attributes], 0x108uLL);
    v149 = v148;
    if (v148)
    {
      v150 = v148;
    }

    else
    {
      v150 = &stru_1F556FE60;
    }

    [v50 addObject:v150];

    v151 = [v11 rankingItem];
    v152 = SSCompactRankingAttrsGetValue([v151 attributes], 0x151uLL);
    v153 = v152;
    if (v152)
    {
      v154 = v152;
    }

    else
    {
      v154 = &stru_1F556FE60;
    }

    [v50 addObject:v154];

    v225 = v11;
    v155 = [v11 rankingItem];
    v156 = SSCompactRankingAttrsGetValue([v155 attributes], 0xF6uLL);

    if (v156)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v157 = [v156 componentsJoinedByString:{@", "}];
        [v50 addObject:v157];
      }
    }

    v214 = v156;
    v220 = v15;
    v158 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v257 = 0u;
    v258 = 0u;
    v259 = 0u;
    v260 = 0u;
    v18 = v50;
    v159 = [v18 countByEnumeratingWithState:&v257 objects:v264 count:16];
    if (v159)
    {
      v160 = v159;
      v161 = *v258;
      do
      {
        for (i = 0; i != v160; ++i)
        {
          if (*v258 != v161)
          {
            objc_enumerationMutation(v18);
          }

          [v158 appendFormat:@"%@ ", *(*(&v257 + 1) + 8 * i)];
        }

        v160 = [v18 countByEnumeratingWithState:&v257 objects:v264 count:16];
      }

      while (v160);
    }

    v255 = 0u;
    v256 = 0u;
    v253 = 0u;
    v254 = 0u;
    v163 = [v252 parsedArgSearchTermsFromQU];
    v247 = [v163 countByEnumeratingWithState:&v253 objects:v263 count:16];
    if (v247)
    {
      v164 = *v254;
      v235 = v163;
      while (2)
      {
        v165 = 0;
        do
        {
          if (*v254 != v164)
          {
            objc_enumerationMutation(v163);
          }

          v166 = isOptionalSearchTermForPreExtractionFilter_onceToken;
          v167 = *(*(&v253 + 1) + 8 * v165);
          if (v166 != -1)
          {
            +[SSRankingManager searchToolShouldFilterEventBeforeRanking:queryContext:matchQUIntent:searchToolBundles:useLLMQU:hasEventTypeFromQU:];
          }

          v168 = [isOptionalSearchTermForPreExtractionFilter_OptionalSearchTerms containsObject:v167];

          if (v168)
          {
            v169 = SSGeneralLog();
            if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
            {
              v240 = [v252 searchString];
              v170 = SSRedactStringClient(v240, 1, v245);
              v171 = SSRedactStringClient(v167, 1, v245);
              *buf = 138412546;
              v266 = v170;
              v172 = v170;
              v267 = 2112;
              v268 = v171;
              _os_log_impl(&dword_1D9F69000, v169, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [personal answers] for query=%@, skipped filtering event due to optional search term =%@", buf, 0x16u);

              v163 = v235;
            }
          }

          else if (([v158 localizedCaseInsensitiveContainsString:v167] & 1) == 0)
          {
            v182 = SSGeneralLog();
            if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
            {
              v242 = [v252 searchString];
              v206 = SSRedactStringClient(v242, 1, v245);
              v231 = [v225 title];
              v212 = [v231 text];
              v249 = SSRedactStringClient(v212, 1, v245);
              v209 = [v225 rankingItem];
              v207 = [v209 identifier];
              v183 = SSRedactStringClient(v207, 1, v245);
              v205 = [v225 rankingItem];
              v184 = SSCompactRankingAttrsGetValue([v205 attributes], 1uLL);
              v185 = SSRedactStringClient(v184, 1, v245);
              v186 = SSRedactStringClient(v158, 1, v245);
              v187 = SSRedactStringClient(v167, 1, v245);
              *buf = 138413826;
              v266 = v206;
              v267 = 2112;
              v268 = v14;
              v269 = 2112;
              v270 = v249;
              v271 = 2112;
              v272 = v183;
              v273 = 2112;
              v274 = v185;
              v275 = 2112;
              v276 = v186;
              v277 = 2112;
              v278 = v187;
              _os_log_impl(&dword_1D9F69000, v182, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [personal answers] for query=%@, filtered eventType=%@ with title=%@ identifier=%@ MDItemIdentifier=%@ as concantenatedTextFromItem=%@ does not contain parsedArgSearchTermFromQU=%@", buf, 0x48u);

              v163 = v235;
            }

            v19 = 1;
            v11 = v225;
            goto LABEL_129;
          }

          ++v165;
        }

        while (v247 != v165);
        v247 = [v163 countByEnumeratingWithState:&v253 objects:v263 count:16];
        if (v247)
        {
          continue;
        }

        break;
      }
    }

    v19 = 0;
    v11 = v225;
LABEL_129:
    v15 = v220;
    goto LABEL_140;
  }

  v19 = 0;
LABEL_141:

  v203 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t __134__SSRankingManager_searchToolShouldFilterEventBeforeRanking_queryContext_matchQUIntent_searchToolBundles_useLLMQU_hasEventTypeFromQU___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 searchString];
  v5 = [v4 localizedCaseInsensitiveContainsString:v3];

  return v5;
}

+ (BOOL)searchToolShouldFilterWalletResultBeforeRanking:(id)a3 queryContext:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 isSearchToolClient];
  if ([v6 earliestTokenFromQU])
  {
    v8 = [v5 rankingItem];
    if ([v8 cardExpirationDateToNowInSeconds])
    {
      v9 = [v5 rankingItem];
      v10 = [v9 cardExpirationDateToNowInSeconds];

      if (v10 >= 1)
      {
        v11 = [v5 rankingItem];
        v12 = SSCompactRankingAttrsGetValue([v11 attributes], 0x13BuLL);

        v13 = SSGeneralLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          log = [v6 searchString];
          v14 = SSRedactStringClient(log, 1, v7);
          v35 = [v5 title];
          v33 = [v35 text];
          v15 = SSRedactStringClient(v33, 1, v7);
          v31 = [v5 rankingItem];
          v29 = [v31 identifier];
          v16 = SSRedactStringClient(v29, 1, v7);
          v17 = [v5 rankingItem];
          v18 = SSCompactRankingAttrsGetValue([v17 attributes], 1uLL);
          v19 = SSRedactStringClient(v18, 1, v7);
          *buf = 138413314;
          v40 = v14;
          v41 = 2112;
          v42 = v15;
          v43 = 2112;
          v44 = v16;
          v45 = 2112;
          v46 = v19;
          v47 = 2112;
          v48 = v12;
          _os_log_impl(&dword_1D9F69000, v13, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Pre-filtering] [Wallet] for future-seeking query=%@, filtered wallet item with title=%@ identifier=%@ MDItemIdentifier=%@ due to expiration date = %@ in the past", buf, 0x34u);

LABEL_12:
          goto LABEL_13;
        }

        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  v20 = [v5 rankingItem];
  v12 = SSCompactRankingAttrsGetValue([v20 attributes], 0x153uLL);

  if (!v12 || ([v6 isCardEventSearch] & 1) == 0 && !objc_msgSend(v6, "earliestTokenFromQU"))
  {
    v26 = 0;
    goto LABEL_15;
  }

  v13 = SSGeneralLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [v6 searchString];
    v14 = SSRedactStringClient(v36, 1, v7);
    v34 = [v5 title];
    v32 = [v34 text];
    v15 = SSRedactStringClient(v32, 1, v7);
    v30 = [v5 rankingItem];
    v21 = [v30 identifier];
    SSRedactStringClient(v21, 1, v7);
    v22 = loga = v13;
    v23 = [v5 rankingItem];
    v24 = SSCompactRankingAttrsGetValue([v23 attributes], 1uLL);
    v25 = SSRedactStringClient(v24, 1, v7);
    *buf = 138413058;
    v40 = v14;
    v41 = 2112;
    v42 = v15;
    v43 = 2112;
    v44 = v22;
    v45 = 2112;
    v46 = v25;
    _os_log_impl(&dword_1D9F69000, loga, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Pre-filtering] [Wallet] for future-seeking or card event query=%@, filtered wallet item with title=%@ identifier=%@ MDItemIdentifier=%@ due to non-null transaction type", buf, 0x2Au);

    v13 = loga;
    goto LABEL_12;
  }

LABEL_13:

  v26 = 1;
LABEL_15:

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

+ (float)computeThresholdWithScale:(float)a3 bias:(float)a4 cutoffOffset:(float)a5
{
  if (a3 == 0.0)
  {
    return 3.4028e38;
  }

  else
  {
    return (a5 - a4) / a3;
  }
}

+ (void)calculateLikelihoodForSearchTool:(id)a3 queryContext:(id)a4 isQUInferredIntent:(id)a5 isEventSearchIntent:(BOOL)a6
{
  v202 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v140 = a5;
  v145 = v8;
  [v8 sortWithOptions:16 usingComparator:&__block_literal_global_1285];
  v181 = 0u;
  v182 = 0u;
  v179 = 0u;
  v180 = 0u;
  v10 = [v9 parsedArgSearchTermsFromQU];
  v11 = [v10 countByEnumeratingWithState:&v179 objects:v201 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v180;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v180 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v179 + 1) + 8 * i);
        v17 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        v18 = [v16 componentsSeparatedByCharactersInSet:v17];

        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v175 objects:v200 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v176;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v176 != v22)
              {
                objc_enumerationMutation(v19);
              }

              if ([*(*(&v175 + 1) + 8 * j) length])
              {
                ++v13;
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v175 objects:v200 count:16];
          }

          while (v21);
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v179 objects:v201 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v136 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v24 = v145;
  v25 = [v24 countByEnumeratingWithState:&v171 objects:v199 count:16];
  obj = v24;
  if (!v25)
  {
    v137 = 0;
    v27 = 0;
    v129 = 0;
    goto LABEL_69;
  }

  v26 = v25;
  v137 = 0;
  v27 = 0;
  v129 = 0;
  v28 = *v172;
  v130 = *v172;
  do
  {
    v29 = 0;
    v133 = v26;
    do
    {
      if (*v172 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v30 = [*(*(&v171 + 1) + 8 * v29) rankingItem];
      if (([v30 bundleIDType] & 4) != 0)
      {
        [v30 engagementScore];
        v51 = v50;
        [v30 freshnessScore];
        v53 = v52 * 0.8;
        [v30 topicalityScore];
        [v30 setLikelihood:v53 * v54 + v51 * 0.2];
        goto LABEL_63;
      }

      v141 = v30;
      if (([v9 isLLMQUIntentEventSearch] & 1) == 0)
      {
        [v30 normalizedSparseScore];
        if (v31 > 1.0)
        {
          if (([v30 bundleIDType] & 0x100000) != 0 && (v32 = @"kMDItemSubject", (objc_msgSend(v9, "llmQUIntentType") & 2) != 0) || (objc_msgSend(v30, "bundleIDType") & 8) != 0 && (v32 = @"kMDItemTextContent", (objc_msgSend(v9, "llmQUIntentType") & 8) != 0))
          {
            v33 = [v30 matchInfo];
            v34 = [v33 objectForKeyedSubscript:v32];

            if (v34)
            {
              v134 = v29;
              v169 = 0u;
              v170 = 0u;
              v167 = 0u;
              v168 = 0u;
              v143 = v34;
              v35 = [v143 countByEnumeratingWithState:&v167 objects:v198 count:16];
              if (v35)
              {
                v36 = v35;
                v37 = 0;
                v146 = *v168;
                do
                {
                  for (k = 0; k != v36; ++k)
                  {
                    if (*v168 != v146)
                    {
                      objc_enumerationMutation(v143);
                    }

                    v39 = *(*(&v167 + 1) + 8 * k);
                    v40 = [v39 original];
                    v41 = [v40 length];

                    if (v41)
                    {
                      v42 = [v39 original];
                      v43 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
                      v44 = [v42 componentsSeparatedByCharactersInSet:v43];

                      v165 = 0u;
                      v166 = 0u;
                      v163 = 0u;
                      v164 = 0u;
                      v45 = v44;
                      v46 = [v45 countByEnumeratingWithState:&v163 objects:v197 count:16];
                      if (v46)
                      {
                        v47 = v46;
                        v48 = *v164;
                        do
                        {
                          for (m = 0; m != v47; ++m)
                          {
                            if (*v164 != v48)
                            {
                              objc_enumerationMutation(v45);
                            }

                            if ([*(*(&v163 + 1) + 8 * m) length])
                            {
                              ++v37;
                            }
                          }

                          v47 = [v45 countByEnumeratingWithState:&v163 objects:v197 count:16];
                        }

                        while (v47);
                      }
                    }
                  }

                  v36 = [v143 countByEnumeratingWithState:&v167 objects:v198 count:16];
                }

                while (v36);
              }

              else
              {
                v37 = 0;
              }

              v55 = v37 < v13;
              v28 = v130;
              v26 = v133;
              v29 = v134;
              if (!v55)
              {
                if (!v129)
                {
                  v30 = v141;
                  v129 = [[Bucket alloc] initWithItem:v141 isPerfectScoreBucket:1];
                  goto LABEL_63;
                }

                if ([(Bucket *)v129 addOne:v141])
                {
                  v30 = v141;
                  goto LABEL_63;
                }
              }
            }
          }
        }
      }

      v30 = v141;
      v56 = [v141 sectionBundleIdentifier];
      v57 = [v136 objectForKeyedSubscript:v56];

      if (v57)
      {
        v58 = [v57 lastObject];

        if ([(Bucket *)v58 addOne:v141])
        {
          v137 = v58;
        }

        else
        {
          v61 = v29;
          v62 = [[Bucket alloc] initWithItem:v141 isPerfectScoreBucket:0];

          v137 = v62;
          v63 = v62;
          v29 = v61;
          [v57 addObject:v63];
        }

        v27 = v57;
      }

      else
      {
        v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v59 = [[Bucket alloc] initWithItem:v141 isPerfectScoreBucket:0];

        [v27 addObject:v59];
        v60 = [v141 sectionBundleIdentifier];
        [v136 setObject:v27 forKeyedSubscript:v60];

        v137 = v59;
      }

LABEL_63:

      v29 = v29 + 1;
    }

    while (v29 != v26);
    v64 = [obj countByEnumeratingWithState:&v171 objects:v199 count:16];
    v26 = v64;
  }

  while (v64);
LABEL_69:

  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v65 = v136;
  v66 = [v136 allValues];
  v67 = [v66 countByEnumeratingWithState:&v159 objects:v196 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v160;
    do
    {
      for (n = 0; n != v68; ++n)
      {
        if (*v160 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v71 = *(*(&v159 + 1) + 8 * n);

        v157 = 0u;
        v158 = 0u;
        v155 = 0u;
        v156 = 0u;
        v27 = v71;
        v72 = [v27 countByEnumeratingWithState:&v155 objects:v195 count:16];
        if (v72)
        {
          v73 = v72;
          v74 = *v156;
          do
          {
            for (ii = 0; ii != v73; ++ii)
            {
              if (*v156 != v74)
              {
                objc_enumerationMutation(v27);
              }

              [*(*(&v155 + 1) + 8 * ii) calculateLikelihood:v9];
            }

            v73 = [v27 countByEnumeratingWithState:&v155 objects:v195 count:16];
          }

          while (v73);
        }
      }

      v68 = [v66 countByEnumeratingWithState:&v159 objects:v196 count:16];
    }

    while (v68);
  }

  [(Bucket *)v129 calculateLikelihood:v9];
  v131 = [v9 isSearchToolClient];
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v135 = obj;
  v76 = a6;
  v142 = [v135 countByEnumeratingWithState:&v151 objects:v194 count:16];
  if (v142)
  {
    obja = *v152;
    *&v77 = 138413314;
    v128 = v77;
    do
    {
      v78 = 0;
      do
      {
        if (*v152 != obja)
        {
          objc_enumerationMutation(v135);
        }

        v144 = v78;
        v79 = [*(*(&v151 + 1) + 8 * v78) rankingItem];
        v80 = [v79 sectionBundleIdentifier];
        v81 = [v140 objectForKeyedSubscript:v80];
        v82 = [v81 BOOLValue];

        if (v82)
        {
          [v79 likelihood];
          [v79 setLikelihood:v83 + *&inferredAppEntityMatchBoosting];
          v84 = SSGeneralLog();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
          {
            v85 = [v79 identifier];
            v86 = SSRedactStringClient(v85, 1, v131);
            [v79 likelihood];
            *buf = 138412546;
            v184 = v86;
            v185 = 2048;
            v186 = v87;
            _os_log_impl(&dword_1D9F69000, v84, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Boosting] Boosted likelihood for inferred app entity match for item=%@ likelihhod=%0.2f", buf, 0x16u);
          }
        }

        if (v76 || (v88 = [v9 llmQUIntentType], ((objc_msgSend(v9, "inferredLlmQUIntentType") | v88) & 0x4000004) != 0))
        {
          if (([v79 bundleIDType] & 0x100000) != 0)
          {
            v89 = SSCompactRankingAttrsGetValue([v79 attributes], 0x23uLL);
            v90 = extractStringFromArray(v89, 0);
            v91 = [v90 lowercaseString];

            if (v91)
            {
              v149 = 0u;
              v150 = 0u;
              v147 = 0u;
              v148 = 0u;
              v92 = emailUpdatesSenderList;
              v93 = [v92 countByEnumeratingWithState:&v147 objects:v193 count:16];
              if (v93)
              {
                v94 = v93;
                v95 = *v148;
                do
                {
                  for (jj = 0; jj != v94; ++jj)
                  {
                    if (*v148 != v95)
                    {
                      objc_enumerationMutation(v92);
                    }

                    if ([v91 hasSuffix:*(*(&v147 + 1) + 8 * jj)])
                    {
                      [v79 likelihood];
                      [v79 setLikelihood:{fmax(v97 - *&emailUpdatesDemotion, 0.0)}];
                      v98 = SSCompactRankingAttrsGetValue([v79 attributes], 4uLL);
                      v99 = SSGeneralLog();
                      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                      {
                        v100 = [v79 identifier];
                        [v79 likelihood];
                        *buf = 138412802;
                        v184 = v100;
                        v185 = 2112;
                        v186 = v98;
                        v187 = 2048;
                        v188 = v101;
                        _os_log_impl(&dword_1D9F69000, v99, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Demotion] Demoted likelihood for email update item=%@ subject=[%@] likelihood=%0.2f", buf, 0x20u);
                      }
                    }
                  }

                  v94 = [v92 countByEnumeratingWithState:&v147 objects:v193 count:16];
                }

                while (v94);
              }

              v76 = a6;
              v65 = v136;
            }
          }
        }

        v102 = [v9 queryDateStringStartDate];
        if (v102)
        {
          v103 = v102;
          v104 = [v9 queryDateStringEndDate];
          if (!v104)
          {
            goto LABEL_134;
          }

          v105 = v104;
          v106 = [v79 bundleIDType] & 0x20000000000060;

          if (v106)
          {
            goto LABEL_135;
          }

          if (v76)
          {
            v103 = SSCompactRankingAttrsGetValue([v79 attributes], 0x11uLL);
            v107 = SSCompactRankingAttrsGetValue([v79 attributes], 0x12uLL);
            v108 = v107;
            if (v103 | v107)
            {
              if (v107)
              {
                v109 = [v9 queryDateStringStartDate];
                if ([v108 compare:v109] == -1)
                {

                  goto LABEL_130;
                }

                v130 = v109;
                if (!v103)
                {
                  goto LABEL_132;
                }

LABEL_126:
                v121 = [v9 queryDateStringEndDate];
                v122 = [v103 compare:v121];

                v109 = v130;
                if (v108)
                {
                }

                if (v122 == 1)
                {
LABEL_130:
                  [v79 setLikelihood:0.0];
                  v123 = SSGeneralLog();
                  v130 = v123;
                  if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
                  {
                    v124 = [v79 identifier];
                    v125 = [v9 queryDateStringStartDate];
                    v126 = [v9 queryDateStringEndDate];
                    *buf = v128;
                    v184 = v124;
                    v185 = 2112;
                    v186 = v103;
                    v187 = 2112;
                    v188 = v108;
                    v189 = 2112;
                    v190 = v125;
                    v191 = 2112;
                    v192 = v126;
                    _os_log_impl(&dword_1D9F69000, v123, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Demotion] Demoted item=%@ likelihood=0.0 pre-extraction startDate=%@ endDate=%@ is not within user specified time startDate=%@ endDate=%@", buf, 0x34u);
                  }

LABEL_132:

                  v130 = v109;
                }
              }

              else if (v103)
              {
                goto LABEL_126;
              }
            }

            v76 = a6;
LABEL_134:

            goto LABEL_135;
          }

          v110 = [v79 creationDate];
          if (!v110)
          {
            goto LABEL_135;
          }

          v111 = v110;
          v112 = [v79 creationDate];
          v113 = [v9 queryDateStringStartDate];
          if ([v112 compare:v113] == -1)
          {

LABEL_123:
            [v79 setLikelihood:0.0];
            v103 = SSGeneralLog();
            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
            {
              v117 = [v79 identifier];
              v118 = [v79 creationDate];
              v119 = [v9 queryDateStringStartDate];
              v120 = [v9 queryDateStringEndDate];
              *buf = 138413058;
              v184 = v117;
              v185 = 2112;
              v186 = v118;
              v187 = 2112;
              v188 = v119;
              v189 = 2112;
              v190 = v120;
              _os_log_impl(&dword_1D9F69000, v103, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Demotion] Demoted item=%@ likelihood=0.0 content creation date=%@ is not within user specified time startDate=%@ endDate=%@", buf, 0x2Au);
            }

            goto LABEL_134;
          }

          v114 = [v79 creationDate];
          v115 = [v9 queryDateStringEndDate];
          v116 = [v114 compare:v115];

          if (v116 == 1)
          {
            goto LABEL_123;
          }
        }

LABEL_135:

        v78 = v144 + 1;
      }

      while (v144 + 1 != v142);
      v142 = [v135 countByEnumeratingWithState:&v151 objects:v194 count:16];
    }

    while (v142);
  }

  v127 = *MEMORY[0x1E69E9840];
}

uint64_t __105__SSRankingManager_calculateLikelihoodForSearchTool_queryContext_isQUInferredIntent_isEventSearchIntent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 rankingItem];
  [v6 topicalityScore];
  v8 = v7;
  v9 = [v5 rankingItem];
  [v9 topicalityScore];
  v11 = v10;

  if (v8 <= v11)
  {
    v13 = [v4 rankingItem];
    [v13 topicalityScore];
    v15 = v14;
    v16 = [v5 rankingItem];
    [v16 topicalityScore];
    v18 = v17;

    if (v15 < v18)
    {
      v12 = 1;
      goto LABEL_7;
    }

    v19 = [v4 rankingItem];
    [v19 freshnessScore];
    v21 = v20;
    v22 = [v5 rankingItem];
    [v22 freshnessScore];
    v24 = v23;

    if (v21 <= v24)
    {
      v25 = [v4 rankingItem];
      [v25 freshnessScore];
      v27 = v26;
      v28 = [v5 rankingItem];
      [v28 freshnessScore];
      v12 = v27 < v29;

      goto LABEL_7;
    }
  }

  v12 = -1;
LABEL_7:

  return v12;
}

+ (id)getSearchToolL2ModelManager
{
  if (getSearchToolL2ModelManager_onceToken != -1)
  {
    +[SSRankingManager getSearchToolL2ModelManager];
  }

  v3 = getSearchToolL2ModelManager_searchToolL2ModelManager;

  return v3;
}

uint64_t __47__SSRankingManager_getSearchToolL2ModelManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = getSearchToolL2ModelManager_searchToolL2ModelManager;
  getSearchToolL2ModelManager_searchToolL2ModelManager = v0;

  v2 = getSearchToolL2ModelManager_searchToolL2ModelManager;

  return [v2 loadModel];
}

+ (void)searchToolFilterResultsAfterRanking:(id)a3 queryContext:(id)a4
{
  v282 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (SSEnableSearchToolAbsoluteThresholding() && ([v8 isAppEntitySearch] & 1) == 0)
  {
    v11 = ([v8 hasSearchTerm] & 1) != 0 || (objc_msgSend(v8, "isLLMQUIntentEventSearch") & 1) != 0 || objc_msgSend(v8, "llmQUIntentType") || objc_msgSend(v8, "inferredLlmQUIntentType") != 0;
    v260 = v11;
  }

  else
  {
    v260 = 0;
  }

  v252 = [v8 isSearchToolClient];
  v258 = v8;
  v261 = v9;
  v245 = v10;
  if (![v8 isSingle])
  {
    goto LABEL_45;
  }

  v12 = [v8 parsedArgSearchTermsFromQU];
  v13 = [v12 count];
  if (v13)
  {
    v4 = [v7 objectAtIndexedSubscript:0];
    v5 = [v4 rankingItem];
    if (([v5 bundleIDType] & 0x20) == 0)
    {

      goto LABEL_45;
    }
  }

  v14 = [v7 objectAtIndexedSubscript:0];
  v15 = [v14 rankingItem];
  [v15 topicalityScore];
  if (v16 <= 0.999999881)
  {
    v17 = [v7 objectAtIndexedSubscript:0];
    v18 = [v17 rankingItem];
    [v18 pommesL1Score];
    if (v19 <= 1.0)
    {
      if ([v7 count] < 2)
      {
        v20 = 0;
      }

      else
      {
        v266 = [v7 objectAtIndexedSubscript:0];
        v264 = [v266 rankingItem];
        [v264 topicalityScore];
        v22 = v21 * 0.5;
        v262 = [v7 objectAtIndexedSubscript:1];
        [v262 rankingItem];
        v23 = v268 = v17;
        [v23 topicalityScore];
        v20 = v22 > v24;

        v17 = v268;
      }
    }

    else
    {
      v20 = 1;
    }

    if (v13)
    {
    }

    v9 = v261;
    v10 = v245;
    if (!v20)
    {
      goto LABEL_45;
    }
  }

  else
  {

    if (v13)
    {
    }

    v9 = v261;
    v10 = v245;
  }

  v25 = [v7 objectAtIndexedSubscript:0];
  v26 = [v25 rankingItem];
  v27 = [v26 bundleIDType];

  v255 = 0;
  if ((v27 & 0x20) != 0)
  {
    v28 = [v7 objectAtIndexedSubscript:0];
    v255 = [v28 rankingItem];
  }

  if ([v7 count] < 2)
  {
    goto LABEL_44;
  }

  v29 = v10;
  v30 = 0;
  v31 = 2;
  v32 = 1;
  do
  {
    v33 = [v7 objectAtIndexedSubscript:v32];
    v34 = [v33 rankingItem];

    if (v255)
    {
      v35 = [v7 objectAtIndexedSubscript:v32];
      v36 = [v35 rankingItem];
      if (([v36 bundleIDType] & 0x20) != 0 && (objc_msgSend(v34, "rankedInLowerTier") & 1) == 0 && (v37 = objc_msgSend(v255, "startDueDateToNowInSeconds"), v37 == objc_msgSend(v34, "startDueDateToNowInSeconds")) && (objc_msgSend(v255, "likelihood"), v39 = v38, objc_msgSend(v34, "likelihood"), v39 <= v40 + 2.22044605e-16))
      {
        [v255 topicalityScore];
        v47 = v46;
        [v34 topicalityScore];
        v49 = v48 + 2.22044605e-16;

        if (v47 <= v49)
        {
          goto LABEL_38;
        }
      }

      else
      {
      }
    }

    [v261 addIndex:v32];
    v41 = SSGeneralLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v43 = [v258 searchString];
      v44 = SSRedactStringClient(v43, 1, v252);
      v45 = [v34 identifier];
      *buf = 138412546;
      v271 = v44;
      v272 = 2112;
      v273 = v45;
      _os_log_debug_impl(&dword_1D9F69000, v41, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Post-filtering] query=%@ filter result identifier=%@ due to singular condition", buf, 0x16u);
    }

    v30 = 1;
LABEL_38:

    v32 = v31;
    v42 = [v7 count] > v31++;
  }

  while (v42);
  v50 = v258;
  v9 = v261;
  v10 = v29;
  if (v30)
  {
    [v29 addObject:@"singular"];
    goto LABEL_157;
  }

LABEL_44:

LABEL_45:
  v255 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v51 = [v7 objectAtIndexedSubscript:0];
  v52 = [v51 rankingItem];
  v53 = [v52 bundleIDType];

  v257 = 0;
  if (SSEnableSearchToolL2Ranking())
  {
    v257 = +[SSRankingManager getSearchToolL2ModelManager];
  }

  if ([v7 count])
  {
    v54 = 0;
    v265 = 0;
    v267 = 0;
    v263 = 0;
    v269 = 0;
    v55 = 1;
    while (1)
    {
      v56 = [v7 objectAtIndexedSubscript:v54];
      v57 = [v56 rankingItem];
      if (([v57 bundleIDType] & 0x800) != 0 && !v265)
      {
        v58 = [v7 objectAtIndexedSubscript:v54];
        v59 = [v58 rankingItem];
        v265 = [v59 searchTermsMatchTitle] == 2;
      }

      v60 = [v7 objectAtIndexedSubscript:v54];
      v61 = [v60 rankingItem];
      if (([v61 bundleIDType] & 2) != 0 && !v267)
      {
        v62 = [v7 objectAtIndexedSubscript:v54];
        v63 = [v62 rankingItem];
        v267 = [v63 searchTermsMatchTitle] < 2;
      }

      v64 = [v7 objectAtIndexedSubscript:v54];
      v65 = [v64 rankingItem];
      if (([v65 bundleIDType] & 0x40) != 0 && !v269)
      {
        v66 = [v7 objectAtIndexedSubscript:v54];
        v67 = [v66 rankingItem];
        v269 = [v67 searchTermsMatchTitle] < 2;
      }

      v68 = [v7 objectAtIndexedSubscript:v54];
      v69 = [v68 rankingItem];
      v70 = v263;
      if (([v69 bundleIDType] & 0x1000000000000000) != 0 && !v263)
      {
        v71 = [v7 objectAtIndexedSubscript:v54];
        v72 = [v71 rankingItem];
        v70 = [v72 searchTermsMatchTitle] < 2;
      }

      if (v267 && v265 && v70 && v269)
      {
        break;
      }

      v263 = v70;
      v54 = v55;
      v42 = [v7 count] > v55++;
      if (!v42)
      {
        goto LABEL_63;
      }
    }

    LOBYTE(v269) = 1;
    LOBYTE(v263) = 1;
    LOBYTE(v267) = 1;
    LOBYTE(v265) = 1;
  }

  else
  {
    LOBYTE(v269) = 0;
    LOBYTE(v263) = 0;
    LOBYTE(v267) = 0;
    LOBYTE(v265) = 0;
  }

LABEL_63:
  if (![v7 count])
  {
    goto LABEL_156;
  }

  v74 = 0;
  v244 = 0;
  v253 = 0;
  v254 = 0;
  v250 = 0;
  v256 = 0;
  v259 = v53 & 0x20000000000060;
  v75 = 1;
  *&v73 = 138413058;
  v243 = v73;
  v76 = v258;
  while (2)
  {
    if (!v260)
    {
      goto LABEL_91;
    }

    if (v257)
    {
      v77 = [v7 objectAtIndexedSubscript:v74];
      v78 = [v77 rankingItem];
      [v78 searchToolL2Score];
      v80 = v79;

      if (v80 > 0.0)
      {
        v81 = [v7 objectAtIndexedSubscript:v74];
        v82 = [v81 rankingItem];
        [v257 getThreshold:{objc_msgSend(v82, "bundleIDType")}];
        v84 = v83;

        if (v84 > 0.0)
        {
          v85 = [v7 objectAtIndexedSubscript:v74];
          v86 = [v85 rankingItem];
          [v86 searchToolL2Score];
          v88 = v87;

          if (v84 > v88)
          {
            [v9 addIndex:v74];
            v89 = SSGeneralLog();
            if (!os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
            {
              v244 = 1;
              goto LABEL_89;
            }

            v249 = [v76 searchString];
            v244 = 1;
            v177 = SSRedactStringClient(v249, 1, v252);
            v182 = [v7 objectAtIndexedSubscript:v74];
            v183 = [v182 rankingItem];
            v184 = [v183 identifier];
            v185 = [v7 objectAtIndexedSubscript:v74];
            v186 = [v185 rankingItem];
            [v186 searchToolL2Score];
            *buf = v243;
            v271 = v177;
            v272 = 2112;
            v273 = v184;
            v274 = 2048;
            v275 = v187;
            v276 = 2048;
            v277 = v84;
            _os_log_debug_impl(&dword_1D9F69000, v89, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Post-filtering] query=%@ filter result identifier=%@ due to absolute threshold on L2. score=%f threshold=%f", buf, 0x2Au);

            v9 = v261;
            v76 = v258;

LABEL_139:
            goto LABEL_89;
          }
        }

        goto LABEL_91;
      }
    }

    v90 = [v7 objectAtIndexedSubscript:{v74, v243}];
    v91 = [v90 rankingItem];
    v92 = [v91 sectionBundleIdentifier];
    IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos(v92);

    v94 = [v7 objectAtIndexedSubscript:v74];
    v95 = [v94 rankingItem];
    v96 = v95;
    if (IsSyndicatedPhotos)
    {
      [v95 topicalityScore];
      v98 = v97;
      v99 = inBundleAbsoluteThresholdForPhotos;
      goto LABEL_74;
    }

    v101 = [v95 sectionBundleIdentifier];
    v102 = [v101 isEqualToString:@"com.apple.DocumentsApp"];

    v103 = [v7 objectAtIndexedSubscript:v74];
    v104 = [v103 rankingItem];
    v105 = v104;
    if (!v102)
    {
      v107 = [v104 sectionBundleIdentifier];
      if ([v107 isEqualToString:@"com.apple.MobileSMS"])
      {
        v108 = [v7 objectAtIndexedSubscript:v74];
        v109 = [v108 rankingItem];
        if ([v109 isPromotedSharedLink])
        {

LABEL_133:
          v94 = [v7 objectAtIndexedSubscript:v74];
          v96 = [v94 rankingItem];
          [v96 topicalityScore];
          v98 = v155;
          v99 = inBundleAbsoluteThresholdForSharedLinkMatches;
LABEL_74:
          v100 = *&v99;

          goto LABEL_77;
        }

        v153 = [v7 objectAtIndexedSubscript:v74];
        v154 = [v153 rankingItem];
        v248 = [v154 isInferredSharedLink];

        v9 = v261;
        if (v248)
        {
          goto LABEL_133;
        }
      }

      else
      {
      }

      v110 = [v7 objectAtIndexedSubscript:v74];
      v111 = [v110 rankingItem];
      v112 = [v111 sectionBundleIdentifier];
      if ([v112 isEqualToString:@"com.apple.MobileAddressBook"])
      {
      }

      else
      {
        v113 = [v7 objectAtIndexedSubscript:v74];
        v114 = [v113 rankingItem];
        v115 = [v114 sectionBundleIdentifier];
        v116 = [v115 isEqualToString:@"com.apple.spotlight.events"];

        v9 = v261;
        if ((v116 & 1) == 0)
        {
          v94 = [v7 objectAtIndexedSubscript:v74];
          v96 = [v94 rankingItem];
          [v96 topicalityScore];
          v98 = v181;
          v99 = acrossBundleAbsoluteThreshold;
          goto LABEL_74;
        }
      }

LABEL_86:
      if ((v256 & 1) == 0)
      {
        v256 = 0;
        v76 = v258;
        goto LABEL_91;
      }

      goto LABEL_87;
    }

    [v104 topicalityScore];
    v98 = v106;
    v100 = *&inBundleAbsoluteThresholdForFiles;

LABEL_77:
    if (v98 >= v100)
    {
      goto LABEL_86;
    }

    [v9 addIndex:v74];
LABEL_87:
    v89 = SSGeneralLog();
    v76 = v258;
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
    {
      v176 = [v258 searchString];
      v256 = 1;
      v177 = SSRedactStringClient(v176, 1, v252);
      v178 = [v7 objectAtIndexedSubscript:v74];
      v179 = [v178 rankingItem];
      v180 = [v179 identifier];
      *buf = 138412546;
      v271 = v177;
      v272 = 2112;
      v273 = v180;
      _os_log_debug_impl(&dword_1D9F69000, v89, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Post-filtering] query=%@ filter result identifier=%@ due to absolute threshold", buf, 0x16u);

      v76 = v258;
      goto LABEL_139;
    }

    v256 = 1;
LABEL_89:

LABEL_91:
    v117 = [v7 objectAtIndexedSubscript:{v74, v243}];
    v118 = [v117 rankingItem];
    if (([v118 bundleIDType] & 0x800) == 0 || !v265)
    {

      goto LABEL_96;
    }

    v119 = [v7 objectAtIndexedSubscript:v74];
    v120 = [v119 rankingItem];
    v121 = [v120 searchTermsMatchTitle];

    if (v121 != 2)
    {
      [v9 addIndex:v74];
      v117 = SSGeneralLog();
      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
      {
        v156 = [v76 searchString];
        LOBYTE(v253) = 1;
        v157 = SSRedactStringClient(v156, 1, v252);
        v158 = [v7 objectAtIndexedSubscript:v74];
        v159 = [v158 rankingItem];
        v160 = [v159 identifier];
        *buf = 138412546;
        v271 = v157;
        v272 = 2112;
        v273 = v160;
        _os_log_debug_impl(&dword_1D9F69000, v117, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Post-filtering] query=%@ filter result identifier=%@ due to perfect match document availability.", buf, 0x16u);

        v76 = v258;
      }

      else
      {
        LOBYTE(v253) = 1;
      }

LABEL_96:
    }

    v122 = [v7 objectAtIndexedSubscript:v74];
    v123 = [v122 rankingItem];
    if (([v123 bundleIDType] & 2) == 0 || !v267)
    {

      goto LABEL_102;
    }

    v124 = [v7 objectAtIndexedSubscript:v74];
    v125 = [v124 rankingItem];
    v126 = [v125 searchTermsMatchTitle];

    if (v126 >= 2)
    {
      [v9 addIndex:v74];
      v122 = SSGeneralLog();
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
      {
        v161 = [v76 searchString];
        BYTE4(v253) = 1;
        v162 = SSRedactStringClient(v161, 1, v252);
        v163 = [v7 objectAtIndexedSubscript:v74];
        v164 = [v163 rankingItem];
        v165 = [v164 identifier];
        *buf = 138412546;
        v271 = v162;
        v272 = 2112;
        v273 = v165;
        _os_log_debug_impl(&dword_1D9F69000, v122, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Post-filtering] query=%@ filter result identifier=%@ due to perfect title match note availability.", buf, 0x16u);

        v76 = v258;
      }

      else
      {
        BYTE4(v253) = 1;
      }

LABEL_102:
    }

    v127 = [v7 objectAtIndexedSubscript:v74];
    v128 = [v127 rankingItem];
    if (([v128 bundleIDType] & 0x1000000000000000) == 0 || !v263)
    {

      goto LABEL_108;
    }

    v129 = [v7 objectAtIndexedSubscript:v74];
    v130 = [v129 rankingItem];
    v131 = [v130 searchTermsMatchTitle];

    if (v131 >= 2)
    {
      [v9 addIndex:v74];
      v127 = SSGeneralLog();
      if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
      {
        v166 = [v76 searchString];
        BYTE4(v254) = 1;
        v167 = SSRedactStringClient(v166, 1, v252);
        v168 = [v7 objectAtIndexedSubscript:v74];
        v169 = [v168 rankingItem];
        v170 = [v169 identifier];
        *buf = 138412546;
        v271 = v167;
        v272 = 2112;
        v273 = v170;
        _os_log_debug_impl(&dword_1D9F69000, v127, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Post-filtering] query=%@ filter result identifier=%@ due to perfect title match freeform availability.", buf, 0x16u);

        v76 = v258;
      }

      else
      {
        BYTE4(v254) = 1;
      }

LABEL_108:
    }

    v132 = [v7 objectAtIndexedSubscript:v74];
    v133 = [v132 rankingItem];
    if (([v133 bundleIDType] & 0x40) == 0 || !v269)
    {

      goto LABEL_114;
    }

    v134 = [v7 objectAtIndexedSubscript:v74];
    v135 = [v134 rankingItem];
    v136 = [v135 searchTermsMatchTitle];

    if (v136 >= 2)
    {
      [v9 addIndex:v74];
      v132 = SSGeneralLog();
      if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
      {
        v171 = [v76 searchString];
        LOBYTE(v254) = 1;
        v172 = SSRedactStringClient(v171, 1, v252);
        v173 = [v7 objectAtIndexedSubscript:v74];
        v174 = [v173 rankingItem];
        v175 = [v174 identifier];
        *buf = 138412546;
        v271 = v172;
        v272 = 2112;
        v273 = v175;
        _os_log_debug_impl(&dword_1D9F69000, v132, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Post-filtering] query=%@ filter result identifier=%@ due to perfect title match reminders availability.", buf, 0x16u);

        v76 = v258;
      }

      else
      {
        LOBYTE(v254) = 1;
      }

LABEL_114:
    }

    if (v259 && v75 != 1)
    {
      v137 = [v7 objectAtIndexedSubscript:v74];
      v138 = [v137 rankingItem];

      v139 = SSCompactRankingAttrsGetValue([v138 attributes], 0x11uLL);
      if (v139)
      {
        if ([v76 earliestTokenFromQU] && (objc_msgSend(v139, "timeIntervalSinceReferenceDate"), v141 = v140, objc_msgSend(v76, "currentTime"), v141 < v142) || objc_msgSend(v76, "latestTokenFromQU") && (objc_msgSend(v139, "timeIntervalSinceReferenceDate"), v144 = v143, objc_msgSend(v76, "currentTime"), v144 > v145))
        {
          [v261 addIndex:v74];
          v146 = SSCompactRankingAttrsGetValue([v138 attributes], 7uLL);
          if (!v146)
          {
            v146 = SSCompactRankingAttrsGetValue([v138 attributes], 0xCuLL);
            if (!v146)
            {
              v146 = SSCompactRankingAttrsGetValue([v138 attributes], 4uLL);
              if (!v146)
              {
                v146 = SSCompactRankingAttrsGetValue([v138 attributes], 6uLL);
              }
            }
          }

          v147 = v146;
          v148 = SSGeneralLog();
          if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
          {
            v247 = [v258 queryIdent];
            v251 = [v258 searchString];
            v149 = SSRedactStringClient(v251, 1, v252);
            SSRedactStringClient(v147, 1, v252);
            v150 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v151 = [v138 sectionBundleIdentifier];
            v246 = [v138 identifier];
            v152 = SSRedactStringClient(v246, 1, v252);
            *buf = 134219266;
            v271 = v247;
            v272 = 2112;
            v273 = v149;
            v274 = 2112;
            v275 = v150;
            v276 = 2112;
            v277 = *&v151;
            v278 = 2112;
            v279 = v152;
            v280 = 2112;
            v281 = v139;
            _os_log_impl(&dword_1D9F69000, v148, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Post-filtering] qid=[%llu] query=[%@] filter based on pre-extraction date name=[%@] bundle=%@ identifier=%@ startDate=%@", buf, 0x3Eu);
          }

          v250 = 1;
          v76 = v258;
        }
      }

      v9 = v261;
    }

    v74 = v75;
    v42 = [v7 count] > v75++;
    if (v42)
    {
      continue;
    }

    break;
  }

  v10 = v245;
  if (v256)
  {
    [v245 addObject:@"thresholding_by_absolute_value"];
  }

  if (v244)
  {
    [v245 addObject:@"thresholding_by_absolute_value_l2"];
  }

  if (v250)
  {
    [v245 addObject:@"filtering_by_pre_extraction_date"];
  }

  if (v253)
  {
    [v245 addObject:@"filtered_document_due_to_better_document_title_match"];
  }

  if ((v253 & 0x100000000) != 0)
  {
    [v245 addObject:@"filtered_note_due_to_better_note_title_match"];
  }

  if (v254)
  {
    [v245 addObject:@"filtered_reminder_due_to_better_reminder_title_match"];
  }

  if ((v254 & 0x100000000) != 0)
  {
    [v245 addObject:@"filtered_freeform_due_to_better_freeform_title_match"];
  }

LABEL_156:

  v50 = v258;
LABEL_157:

  v188 = [v50 queryUnderstandingOutput];
  v189 = [v188 objectForKeyedSubscript:@"embeddingScale"];

  v190 = [v50 queryUnderstandingOutput];
  v191 = [v190 objectForKeyedSubscript:@"embeddingBias"];

  if (![v7 count])
  {
    goto LABEL_165;
  }

  v192 = 0;
  while (2)
  {
    v193 = [v7 objectAtIndexedSubscript:v192];
    v194 = [v193 rankingItem];
    v195 = [v194 sectionBundleIdentifier];
    v196 = SSSectionIsSyndicatedPhotos(v195);

    if (!v196)
    {
LABEL_164:
      if (++v192 >= [v7 count])
      {
        goto LABEL_165;
      }

      continue;
    }

    break;
  }

  v197 = [v7 objectAtIndexedSubscript:v192];
  v198 = [v197 rankingItem];
  [v198 pommesL1Score];
  if (v199 <= 10.0)
  {

    goto LABEL_164;
  }

  v200 = [v7 objectAtIndexedSubscript:v192];
  v201 = [v200 rankingItem];
  [v201 pommesL1Score];
  v203 = v202;

  if (v203 >= 50.0)
  {
    goto LABEL_164;
  }

  [v189 floatValue];
  v212 = v211;
  [v191 floatValue];
  LODWORD(v214) = v213;
  LODWORD(v215) = 1060457624;
  LODWORD(v216) = v212;
  [SSRankingManager computeThresholdWithScale:v216 bias:v214 cutoffOffset:v215];
  v218 = v217;
  if (![v7 count])
  {
    goto LABEL_165;
  }

  v219 = 0;
  v220 = 0;
  while (2)
  {
    v221 = [v7 objectAtIndexedSubscript:v219];
    v222 = [v221 rankingItem];
    v223 = [v222 sectionBundleIdentifier];
    v224 = SSSectionIsSyndicatedPhotos(v223);

    if (!v224)
    {
      goto LABEL_183;
    }

    v225 = [v7 objectAtIndexedSubscript:v219];
    v226 = [v225 rankingItem];
    v227 = [v226 retrievalType];
    v228 = [v227 intValue];

    v229 = [v7 objectAtIndexedSubscript:v219];
    v230 = [v229 rankingItem];
    v231 = v230;
    if (v228 == 2)
    {
      [v230 embeddingSimilarity];
      v233 = v232;

      goto LABEL_175;
    }

    v234 = [v230 retrievalType];
    v235 = [v234 intValue];

    v236 = [v7 objectAtIndexedSubscript:v219];
    v237 = [v236 rankingItem];
    [v237 pommesL1Score];
    v239 = v238;
    if (v235 != 3)
    {

      if (v239 >= 10.0)
      {
        goto LABEL_183;
      }

      goto LABEL_181;
    }

    if (v238 >= 10.0)
    {

      goto LABEL_183;
    }

    v240 = [v7 objectAtIndexedSubscript:v219];
    v241 = [v240 rankingItem];
    [v241 embeddingSimilarity];
    v233 = v242;

LABEL_175:
    if (v233 < v218)
    {
LABEL_181:
      [v261 addIndex:v219];
      v220 = 1;
    }

LABEL_183:
    if (++v219 < [v7 count])
    {
      continue;
    }

    break;
  }

  if (v220)
  {
    [v10 addObject:@"exactMatchFilter"];
  }

LABEL_165:
  v204 = v258;
  if ([v261 count])
  {
    v205 = SSGeneralLog();
    if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
    {
      v206 = [v258 searchString];
      v207 = SSRedactStringClient(v206, 1, [v258 isSearchToolClient]);
      v208 = [v261 count];
      [v10 componentsJoinedByString:{@", "}];
      v209 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412802;
      v271 = v207;
      v272 = 2048;
      v273 = v208;
      v274 = 2112;
      v275 = v209;
      _os_log_impl(&dword_1D9F69000, v205, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Post-filtering] query=%@ filter %lu result for [%@]", buf, 0x20u);

      v204 = v258;
    }

    [v7 removeObjectsAtIndexes:v261];
  }

  v210 = *MEMORY[0x1E69E9840];
}

+ (id)searchToolPopulateResultsForBiomeForTTRWithResult:(id)a3 queryContext:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v28 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    v11 = 1;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v31 != v10)
      {
        objc_enumerationMutation(v7);
      }

      if (v11 > 0x14)
      {
        break;
      }

      v13 = [*(*(&v30 + 1) + 8 * v12) rankingItem];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 serializeToDictForBiomeDonation];
        if ([v15 count])
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rank %lu", v11];
          [v6 setObject:v15 forKey:v16];
          ++v11;
        }
      }

      if (v9 == ++v12)
      {
        v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v17 = [v28 queryUnderstandingOutput];
  v18 = [v17 objectForKey:@"kQPParseResultEcrGroundedOutput"];

  if ([v18 count])
  {
    if ([MEMORY[0x1E696ACB0] isValidJSONObject:v18])
    {
      [v6 setObject:v18 forKey:@"kQPParseResultEcrGroundedOutput"];
    }

    else
    {
      v19 = SSGeneralLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        +[SSRankingManager searchToolPopulateResultsForBiomeForTTRWithResult:queryContext:];
      }
    }
  }

  v29 = 0;
  v20 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:0 error:&v29];
  v21 = v29;
  v22 = [v20 length];
  v23 = SSGeneralLog();
  v24 = v23;
  if (!v22 || v21)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      +[SSRankingManager searchToolPopulateResultsForBiomeForTTRWithResult:queryContext:];
    }

    v25 = 0;
  }

  else
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [SSRankingManager searchToolPopulateResultsForBiomeForTTRWithResult:v28 queryContext:?];
    }

    v25 = v20;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (void)searchToolDonateResultsToBiomeForTTRWithData:(id)a3 forQuery:(id)a4
{
  v5 = searchToolDonateResultsToBiomeForTTRWithData_forQuery__onceToken;
  v6 = a4;
  v7 = a3;
  if (v5 != -1)
  {
    +[SSRankingManager searchToolDonateResultsToBiomeForTTRWithData:forQuery:];
  }

  v8 = [MEMORY[0x1E695DF00] date];
  [searchToolDonateResultsToBiomeForTTRWithData_forQuery__ssSearchToolDonation donateSpotlightRankingItemsWithQuery:v6 data:v7 timestamp:v8 requestID:&stru_1F556FE60];
}

uint64_t __74__SSRankingManager_searchToolDonateResultsToBiomeForTTRWithData_forQuery___block_invoke()
{
  searchToolDonateResultsToBiomeForTTRWithData_forQuery__ssSearchToolDonation = objc_alloc_init(SSSearchToolDonation);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)searchToolSortResults:(id)a3 isQUIntent:(id)a4 isQUInferredIntent:(id)a5 queryContext:(id)a6 searchToolBundles:(id)a7 eventSearchIntent:(BOOL)a8 maxTopicalityPerBundle:(id)a9 preExtractionBoost:(BOOL)a10
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v20 = a3;
  LOBYTE(a3) = [v17 isSearchToolClient];
  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke;
  v32[3] = &unk_1E8595B08;
  v33 = v15;
  v34 = v16;
  v22 = v17;
  v35 = v22;
  v36 = v18;
  v39 = a8;
  v37 = v19;
  v38 = v21;
  v40 = a10;
  v41 = a3;
  v23 = v21;
  v24 = v19;
  v25 = v18;
  v26 = v16;
  v27 = v15;
  [v20 sortWithOptions:16 usingComparator:v32];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_3;
  v29[3] = &unk_1E8595B30;
  v30 = v22;
  v31 = a3;
  v28 = v22;
  [v23 enumerateKeysAndObjectsUsingBlock:v29];
}

uint64_t __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v548[3] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = [v4 rankingItem];
  v7 = [v6 sectionBundleIdentifier];
  if (v7)
  {
    v8 = [v4 rankingItem];
    v9 = [v8 sectionBundleIdentifier];
  }

  else
  {
    v8 = [v4 resultBundleId];
    v9 = v8;
  }

  v10 = [v5 rankingItem];
  v11 = [v10 sectionBundleIdentifier];
  if (v11)
  {
    v12 = [v5 rankingItem];
    v13 = [v12 sectionBundleIdentifier];
  }

  else
  {
    v12 = [v5 resultBundleId];
    v13 = v12;
  }

  if (v9)
  {
    v14 = a1;
    v15 = [*(a1 + 32) objectForKeyedSubscript:v9];
    v16 = [v15 BOOLValue];

    if (v13)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
    v14 = a1;
    if (v13)
    {
LABEL_9:
      v17 = [v14[4] objectForKeyedSubscript:v13];
      v18 = [v17 BOOLValue];

      if (v9)
      {
        goto LABEL_10;
      }

LABEL_14:
      v20 = 0;
      if (v13)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }
  }

  v18 = 0;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_10:
  v19 = [v14[5] objectForKeyedSubscript:v9];
  v20 = [v19 BOOLValue];

  if (v13)
  {
LABEL_11:
    v21 = [v14[5] objectForKeyedSubscript:v13];
    v22 = [v21 BOOLValue];

    goto LABEL_16;
  }

LABEL_15:
  v22 = 0;
LABEL_16:
  v505 = [v14[6] llmQUIntentType];
  v23 = [v4 rankingItem];
  v503 = [v23 detectedEventType];

  v501 = [v14[6] llmQUIntentType];
  v24 = [v5 rankingItem];
  v499 = [v24 detectedEventType];

  v25 = [v4 rankingItem];
  v511 = [v25 isMailCategoryPromotions];

  v527 = v5;
  v26 = [v5 rankingItem];
  v508 = [v26 isMailCategoryPromotions];

  v519 = v9;
  v27 = [v9 isEqualToString:@"com.apple.MobileAddressBook"];
  v518 = v13;
  v28 = [v13 isEqualToString:@"com.apple.MobileAddressBook"];
  v29 = [v4 rankingItem];
  v30 = [v29 preExtractedCardType];
  if (v30)
  {
    v31 = [v4 rankingItem];
    v497 = [v31 cardExpirationDateToNowInSeconds] > 0;
  }

  else
  {
    v497 = 0;
  }

  v32 = [v527 rankingItem];
  v33 = [v32 preExtractedCardType];
  if (v33)
  {
    v34 = [v527 rankingItem];
    v495 = [v34 cardExpirationDateToNowInSeconds] > 0;
  }

  else
  {
    v495 = 0;
  }

  v35 = [v4 rankingItem];
  v36 = SSCompactRankingAttrsGetValue([v35 attributes], 7uLL);

  v37 = [v4 rankingItem];
  v38 = SSCompactRankingAttrsGetValue([v37 attributes], 0xCuLL);

  v39 = [v4 rankingItem];
  v525 = SSCompactRankingAttrsGetValue([v39 attributes], 4uLL);

  v40 = [v4 rankingItem];
  v524 = SSCompactRankingAttrsGetValue([v40 attributes], 6uLL);

  v41 = v36;
  v514 = v38;
  v515 = v36;
  if (v36 || (v41 = v38) != 0)
  {
    v517 = v41;
  }

  else
  {
    v55 = v525;
    if (!v525)
    {
      v55 = v524;
    }

    v56 = v55;
    v57 = &stru_1F556FE60;
    if (v56)
    {
      v57 = v56;
    }

    v517 = v57;
  }

  v42 = [v527 rankingItem];
  v43 = SSCompactRankingAttrsGetValue([v42 attributes], 7uLL);

  v44 = [v527 rankingItem];
  v526 = SSCompactRankingAttrsGetValue([v44 attributes], 0xCuLL);

  v45 = [v527 rankingItem];
  v523 = SSCompactRankingAttrsGetValue([v45 attributes], 4uLL);

  v46 = [v527 rankingItem];
  v522 = SSCompactRankingAttrsGetValue([v46 attributes], 6uLL);

  v47 = v43;
  v513 = v43;
  if (v43 || (v47 = v526) != 0)
  {
    v516 = v47;
  }

  else
  {
    v58 = v523;
    if (!v523)
    {
      v58 = v522;
    }

    v59 = v58;
    v60 = &stru_1F556FE60;
    if (v59)
    {
      v60 = v59;
    }

    v516 = v60;
  }

  v48 = [v4 rankingItem];
  if ([v48 isPromotedInstantAnswer])
  {
    v49 = [v527 rankingItem];
    v50 = [v49 isPromotedInstantAnswer];

    if (!v50)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  v51 = [v4 rankingItem];
  if ([v51 isPromotedInstantAnswer])
  {
  }

  else
  {
    v52 = [v527 rankingItem];
    v53 = [v52 isPromotedInstantAnswer];

    if (v53)
    {
      goto LABEL_52;
    }
  }

  if (!(v18 & 1 | ((v16 & 1) == 0)))
  {
    goto LABEL_39;
  }

  if (!(v16 & 1 | ((v18 & 1) == 0)))
  {
    goto LABEL_52;
  }

  if (!(v22 & 1 | ((v20 & 1) == 0)) && v27 == 1)
  {
    goto LABEL_39;
  }

  if (!(v20 & 1 | ((v22 & 1) == 0)) && v28 == 1)
  {
LABEL_52:
    v54 = 1;
    goto LABEL_53;
  }

  v65 = a1;
  v66 = v527;
  v62 = v518;
  v61 = v519;
  if (([*(a1 + 48) isAppEntitySearch] & 1) == 0 && objc_msgSend(*(a1 + 56), "containsObject:", v519) && !objc_msgSend(*(a1 + 56), "containsObject:", v518))
  {
LABEL_299:
    v54 = -1;
    goto LABEL_54;
  }

  if ([*(a1 + 48) isAppEntitySearch] & 1) == 0 && (objc_msgSend(*(a1 + 56), "containsObject:", v519) & 1) == 0 && (objc_msgSend(*(a1 + 56), "containsObject:", v518))
  {
LABEL_84:
    v54 = 1;
    goto LABEL_54;
  }

  v67 = [v4 rankingItem];
  v68 = [v67 sectionBundleIdentifier];
  v69 = [v527 rankingItem];
  v70 = [v69 sectionBundleIdentifier];
  if (![v68 isEqualToString:v70])
  {

    goto LABEL_74;
  }

  v71 = [v4 rankingItem];
  v72 = [v71 sectionBundleIdentifier];
  if ([v72 isEqualToString:@"com.apple.mobilecal"])
  {
    goto LABEL_67;
  }

  v73 = [v4 rankingItem];
  v74 = [v73 sectionBundleIdentifier];
  if ([v74 isEqualToString:@"com.apple.reminders"])
  {
LABEL_66:

    v66 = v527;
LABEL_67:

    v62 = v518;
    v61 = v519;
    goto LABEL_68;
  }

  v491 = v71;
  v493 = v73;
  v75 = [v4 rankingItem];
  v76 = [v75 sectionBundleIdentifier];
  if ([v76 isEqualToString:@"com.apple.spotlight.events"])
  {

    v71 = v491;
    v73 = v493;
    goto LABEL_66;
  }

  v487 = v76;
  v489 = v75;
  v485 = [v4 rankingItem];
  v129 = [v485 sectionBundleIdentifier];
  v130 = [v129 isEqualToString:@"com.apple.mobilemail"];
  if ((v130 & 1) == 0)
  {
    v480 = [v4 rankingItem];
    v478 = [v480 sectionBundleIdentifier];
    if (![v478 isEqualToString:@"com.apple.MobileSMS"])
    {
      LOBYTE(v482) = 0;
      goto LABEL_289;
    }
  }

  if (([*(a1 + 48) llmQUIntentType] & 0xA) != 0)
  {
    v482 = [*(a1 + 48) hasSearchTerm] ^ 1;
    if (v130)
    {
      goto LABEL_290;
    }

LABEL_289:

    goto LABEL_290;
  }

  LOBYTE(v482) = 0;
  if ((v130 & 1) == 0)
  {
    goto LABEL_289;
  }

LABEL_290:

  v62 = v518;
  v61 = v519;
  v66 = v527;
  if ((v482 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_68:
  v77 = [v4 rankingItem];
  [v77 topicalityScore];
  v79 = v78;

  v80 = [v66 rankingItem];
  [v80 topicalityScore];
  v82 = v81;

  if (*(a1 + 80))
  {
    v83 = [v4 rankingItem];
    v84 = [v83 sectionBundleIdentifier];
    if ([v84 isEqualToString:@"com.apple.spotlight.events"])
    {
      v85 = [v66 rankingItem];
      v86 = [v85 sectionBundleIdentifier];
      v87 = [v86 isEqualToString:@"com.apple.spotlight.events"];

      v65 = a1;
      v88 = (v87 & 1) == 0;
      v66 = v527;
      if (!v88)
      {
        v79 = 10000.0;
        v82 = 9999.0;
      }
    }

    else
    {
    }
  }

  v102 = [v4 rankingItem];
  v103 = [v102 sectionBundleIdentifier];
  v104 = 0.5;
  if (([v103 isEqualToString:@"com.apple.spotlight.events"] & 1) == 0)
  {
    v105 = *(v65 + 64);
    v106 = [v4 rankingItem];
    v107 = [v106 sectionBundleIdentifier];
    v108 = [v105 objectForKeyedSubscript:v107];
    [v108 floatValue];
    v104 = v109 * 0.85;

    v65 = a1;
  }

  if ([*(v65 + 48) latestTokenFromQU])
  {
    v110 = [v4 rankingItem];
    if ([v110 startDueDateToNowInSeconds] < 0)
    {
      v121 = [v66 rankingItem];
      v122 = [v121 startDueDateToNowInSeconds];

      if (v122 >= 1)
      {
LABEL_296:
        v244 = v66;
LABEL_297:
        v97 = [v244 rankingItem];
        [v97 setRankedInLowerTier:1];
        goto LABEL_298;
      }
    }

    else
    {
    }

    v111 = [v4 rankingItem];
    if ([v111 startDueDateToNowInSeconds] <= 0)
    {
    }

    else
    {
      v112 = [v66 rankingItem];
      v113 = [v112 startDueDateToNowInSeconds];

      if (v113 < 0)
      {
        goto LABEL_380;
      }
    }

    v123 = [v4 rankingItem];
    if (([v123 bundleIDType] & 0x60) != 0)
    {
      v124 = [v4 rankingItem];
      if ([v124 searchTermsMatchTitle] < 3)
      {
        v125 = [v66 rankingItem];
        v126 = [v125 searchTermsMatchTitle];

        if (v126 >= 3 && v79 > v104)
        {
          v548[0] = @"[Promotion]";
          v548[1] = v517;
          v548[2] = @"Calender/Reminder matched title";
          v127 = MEMORY[0x1E695DEC8];
          v128 = v548;
LABEL_134:
          v141 = [v127 arrayWithObjects:v128 count:3];
          v142 = *(a1 + 72);
          v143 = [v4 rankingItem];
          v144 = [v143 identifier];
          [v142 setObject:v141 forKeyedSubscript:v144];

          goto LABEL_296;
        }

LABEL_137:
        v145 = [v4 rankingItem];
        if (([v145 bundleIDType] & 0x60) != 0)
        {
          v146 = [v4 rankingItem];
          if ([v146 searchTermsMatchTitle] > 2)
          {
            v147 = [v66 rankingItem];
            v148 = [v147 searchTermsMatchTitle];

            if (v148 <= 2 && v82 > v104)
            {
              v547[0] = @"[Promotion]";
              v547[1] = v516;
              v547[2] = @"Calender/Reminder matched title";
              v149 = MEMORY[0x1E695DEC8];
              v150 = v547;
LABEL_207:
              v190 = [v149 arrayWithObjects:v150 count:3];
              v191 = *(a1 + 72);
              v192 = v66;
LABEL_379:
              v304 = [v192 rankingItem];
              v305 = [v304 identifier];
              [v191 setObject:v190 forKeyedSubscript:v305];

              goto LABEL_380;
            }

            goto LABEL_144;
          }
        }

LABEL_144:
        v151 = [v4 rankingItem];
        if (([v151 bundleIDType] & 0x20) == 0)
        {
LABEL_151:

LABEL_152:
          v155 = [v4 rankingItem];
          if (([v155 bundleIDType] & 0x20) == 0)
          {
LABEL_157:

            goto LABEL_158;
          }

          v156 = [v4 rankingItem];
          if ([v156 isLLMQUPersonMatchedInRecipient])
          {
LABEL_156:

            goto LABEL_157;
          }

          v157 = [v4 rankingItem];
          if ([v157 isLLMQUPersonMatchedInAuthor])
          {

            goto LABEL_156;
          }

          v259 = [v527 rankingItem];
          if ([v259 isLLMQUPersonMatchedInRecipient])
          {
            v260 = v82 > v104;
          }

          else
          {
            v276 = [v527 rankingItem];
            v277 = [v276 isLLMQUPersonMatchedInAuthor];
            if (v82 > v104)
            {
              v260 = v277;
            }

            else
            {
              v260 = 0;
            }
          }

          if (!v260)
          {
LABEL_158:
            v158 = [v4 rankingItem];
            v159 = [v158 startDueDateToNowInSeconds];
            if (v159 >= 0)
            {
              v160 = v159;
            }

            else
            {
              v160 = -v159;
            }

            v66 = v527;
            v161 = [v527 rankingItem];
            v162 = [v161 startDueDateToNowInSeconds];
            if (v162 >= 0)
            {
              v163 = v162;
            }

            else
            {
              v163 = -v162;
            }

            if (v160 >= v163 || v79 <= v104)
            {
            }

            else
            {
              v164 = [*(a1 + 48) orderByTimeAscending];

              if ((v164 & 1) == 0)
              {
                goto LABEL_296;
              }
            }

            v165 = [v4 rankingItem];
            v166 = [v165 startDueDateToNowInSeconds];
            if (v166 >= 0)
            {
              v167 = v166;
            }

            else
            {
              v167 = -v166;
            }

            v168 = [v527 rankingItem];
            v169 = [v168 startDueDateToNowInSeconds];
            if (v169 >= 0)
            {
              v170 = v169;
            }

            else
            {
              v170 = -v169;
            }

            if (v167 <= v170 || v82 <= v104)
            {
            }

            else
            {
              v171 = [*(a1 + 48) orderByTimeAscending];

              if ((v171 & 1) == 0)
              {
                goto LABEL_380;
              }
            }

            v174 = [v4 rankingItem];
            v175 = [v174 startDueDateToNowInSeconds];
            v176 = [v527 rankingItem];
            if (v175 >= [v176 startDueDateToNowInSeconds] || v79 <= v104)
            {
            }

            else
            {
              v177 = [*(a1 + 48) orderByTimeAscending];

              if (v177)
              {
                goto LABEL_296;
              }
            }

            v67 = [v4 rankingItem];
            v180 = [v67 startDueDateToNowInSeconds];
            v68 = [v527 rankingItem];
            if (v180 > [v68 startDueDateToNowInSeconds])
            {
              v65 = a1;
              if (v82 > v104)
              {
                v181 = [*(a1 + 48) orderByTimeAscending];
                goto LABEL_312;
              }

              goto LABEL_74;
            }

            goto LABEL_314;
          }

          v545[0] = @"[Promotion]";
          v545[1] = v516;
          v545[2] = @"Calender/Reminder matched recipient/author";
          v278 = MEMORY[0x1E695DEC8];
          v279 = v545;
LABEL_378:
          v190 = [v278 arrayWithObjects:v279 count:3];
          v191 = *(a1 + 72);
          v192 = v527;
          goto LABEL_379;
        }

        v152 = [v4 rankingItem];
        v153 = [v152 isLLMQUPersonMatchedInRecipient];
        if ((v153 & 1) == 0)
        {
          v103 = [v4 rankingItem];
          if (![v103 isLLMQUPersonMatchedInAuthor])
          {
            goto LABEL_149;
          }
        }

        v154 = [v66 rankingItem];
        if ([v154 isLLMQUPersonMatchedInRecipient])
        {

          if (v153)
          {
LABEL_150:

            goto LABEL_151;
          }

LABEL_149:

          goto LABEL_150;
        }

        v193 = [v66 rankingItem];
        v194 = [v193 isLLMQUPersonMatchedInAuthor];
        if (v79 <= v104)
        {
          v195 = 1;
        }

        else
        {
          v195 = v194;
        }

        if ((v153 & 1) == 0)
        {
        }

        v196 = a1;
        if (v195)
        {
          goto LABEL_152;
        }

        v546[0] = @"[Promotion]";
        v546[1] = v517;
        v546[2] = @"Calender/Reminder matched recipient/author";
        v197 = MEMORY[0x1E695DEC8];
        v198 = v546;
LABEL_333:
        v269 = [v197 arrayWithObjects:v198 count:3];
        v270 = *(v196 + 72);
        v271 = [v4 rankingItem];
        v272 = [v271 identifier];
        [v270 setObject:v269 forKeyedSubscript:v272];

        v244 = v527;
        goto LABEL_297;
      }
    }

    goto LABEL_137;
  }

  v114 = [*(v65 + 48) earliestTokenFromQU];
  v115 = [v4 rankingItem];
  v116 = [v115 startDueDateToNowInSeconds];
  if (v114)
  {
    if (v116 <= 0)
    {
    }

    else
    {
      v117 = [v66 rankingItem];
      v118 = [v117 startDueDateToNowInSeconds];

      if (v118 < 0)
      {
        goto LABEL_296;
      }
    }

    v131 = [v4 rankingItem];
    if ([v131 startDueDateToNowInSeconds] < 0)
    {
      v172 = [v66 rankingItem];
      v173 = [v172 startDueDateToNowInSeconds];

      if (v173 >= 1)
      {
LABEL_380:
        v306 = [v4 rankingItem];
        v54 = 1;
        [v306 setRankedInLowerTier:1];

        goto LABEL_54;
      }
    }

    else
    {
    }

    v132 = [v4 rankingItem];
    if (([v132 bundleIDType] & 0x60) != 0)
    {
      v133 = [v4 rankingItem];
      if ([v133 searchTermsMatchTitle] < 3)
      {
        v134 = [v66 rankingItem];
        v135 = [v134 searchTermsMatchTitle];

        if (v135 >= 3 && v79 > v104)
        {
          v544[0] = @"[Promotion]";
          v544[1] = v517;
          v544[2] = @"Calender/Reminder matched title";
          v127 = MEMORY[0x1E695DEC8];
          v128 = v544;
          goto LABEL_134;
        }

LABEL_195:
        v182 = [v4 rankingItem];
        if (([v182 bundleIDType] & 0x60) != 0)
        {
          v183 = [v4 rankingItem];
          if ([v183 searchTermsMatchTitle] > 2)
          {
            v184 = [v66 rankingItem];
            v185 = [v184 searchTermsMatchTitle];

            if (v185 <= 2 && v82 > v104)
            {
              v543[0] = @"[Promotion]";
              v543[1] = v516;
              v543[2] = @"Calender/Reminder matched title";
              v149 = MEMORY[0x1E695DEC8];
              v150 = v543;
              goto LABEL_207;
            }

LABEL_217:
            v199 = [v4 rankingItem];
            if (([v199 bundleIDType] & 0x20) != 0)
            {
              v200 = [v4 rankingItem];
              v201 = [v200 isLLMQUPersonMatchedInRecipient];
              if ((v201 & 1) == 0)
              {
                v103 = [v4 rankingItem];
                if (![v103 isLLMQUPersonMatchedInAuthor])
                {
                  goto LABEL_222;
                }
              }

              v202 = [v66 rankingItem];
              if (([v202 isLLMQUPersonMatchedInRecipient] & 1) == 0)
              {
                v263 = [v66 rankingItem];
                v264 = [v263 isLLMQUPersonMatchedInAuthor];
                if (v79 <= v104)
                {
                  v265 = 1;
                }

                else
                {
                  v265 = v264;
                }

                if ((v201 & 1) == 0)
                {
                }

                v196 = a1;
                if ((v265 & 1) == 0)
                {
                  v542[0] = @"[Promotion]";
                  v542[1] = v517;
                  v542[2] = @"Calender/Reminder matched recipient/author";
                  v197 = MEMORY[0x1E695DEC8];
                  v198 = v542;
                  goto LABEL_333;
                }

LABEL_225:
                v203 = [v4 rankingItem];
                if (([v203 bundleIDType] & 0x20) != 0)
                {
                  v204 = [v4 rankingItem];
                  if (([v204 isLLMQUPersonMatchedInRecipient] & 1) == 0)
                  {
                    v205 = [v4 rankingItem];
                    if (![v205 isLLMQUPersonMatchedInAuthor])
                    {
                      v274 = [v527 rankingItem];
                      if ([v274 isLLMQUPersonMatchedInRecipient])
                      {
                        v275 = v82 > v104;
                      }

                      else
                      {
                        v300 = [v527 rankingItem];
                        v301 = [v300 isLLMQUPersonMatchedInAuthor];
                        if (v82 > v104)
                        {
                          v275 = v301;
                        }

                        else
                        {
                          v275 = 0;
                        }
                      }

                      if (v275)
                      {
                        v541[0] = @"[Promotion]";
                        v541[1] = v516;
                        v541[2] = @"Calender/Reminder matched recipient/author";
                        v278 = MEMORY[0x1E695DEC8];
                        v279 = v541;
                        goto LABEL_378;
                      }

LABEL_231:
                      v206 = [v4 rankingItem];
                      v207 = [v206 startDueDateToNowInSeconds];
                      if (v207 >= 0)
                      {
                        v208 = v207;
                      }

                      else
                      {
                        v208 = -v207;
                      }

                      v66 = v527;
                      v209 = [v527 rankingItem];
                      v210 = [v209 startDueDateToNowInSeconds];
                      if (v210 >= 0)
                      {
                        v211 = v210;
                      }

                      else
                      {
                        v211 = -v210;
                      }

                      if (v208 >= v211 || v79 <= v104)
                      {
                      }

                      else
                      {
                        v212 = [*(a1 + 48) orderByTimeDescending];

                        if ((v212 & 1) == 0)
                        {
                          goto LABEL_296;
                        }
                      }

                      v213 = [v4 rankingItem];
                      v214 = [v213 startDueDateToNowInSeconds];
                      if (v214 >= 0)
                      {
                        v215 = v214;
                      }

                      else
                      {
                        v215 = -v214;
                      }

                      v216 = [v527 rankingItem];
                      v217 = [v216 startDueDateToNowInSeconds];
                      if (v217 >= 0)
                      {
                        v218 = v217;
                      }

                      else
                      {
                        v218 = -v217;
                      }

                      if (v215 <= v218 || v82 <= v104)
                      {
                      }

                      else
                      {
                        v219 = [*(a1 + 48) orderByTimeDescending];

                        if ((v219 & 1) == 0)
                        {
                          goto LABEL_380;
                        }
                      }

                      v240 = [v4 rankingItem];
                      v241 = [v240 startDueDateToNowInSeconds];
                      v242 = [v527 rankingItem];
                      if (v241 <= [v242 startDueDateToNowInSeconds] || v79 <= v104)
                      {
                      }

                      else
                      {
                        v243 = [*(a1 + 48) orderByTimeDescending];

                        if (v243)
                        {
                          goto LABEL_296;
                        }
                      }

                      v67 = [v4 rankingItem];
                      v257 = [v67 startDueDateToNowInSeconds];
                      v68 = [v527 rankingItem];
                      if (v257 < [v68 startDueDateToNowInSeconds])
                      {
                        v65 = a1;
                        if (v82 > v104)
                        {
                          v181 = [*(a1 + 48) orderByTimeDescending];
LABEL_312:
                          v258 = v181;

                          if (v258)
                          {
                            goto LABEL_380;
                          }

                          goto LABEL_75;
                        }

LABEL_74:

                        goto LABEL_75;
                      }

LABEL_314:
                      v65 = a1;
                      goto LABEL_74;
                    }
                  }
                }

                goto LABEL_231;
              }

              if ((v201 & 1) == 0)
              {
LABEL_222:
              }
            }

            goto LABEL_225;
          }
        }

        goto LABEL_217;
      }
    }

    goto LABEL_195;
  }

  if (v116 <= 0)
  {
  }

  else
  {
    v119 = [v66 rankingItem];
    v120 = [v119 startDueDateToNowInSeconds];

    if (v120 < 0 && v79 > v104)
    {
      goto LABEL_296;
    }
  }

  v136 = [v4 rankingItem];
  if ([v136 startDueDateToNowInSeconds] < 0)
  {
    v178 = [v66 rankingItem];
    v179 = [v178 startDueDateToNowInSeconds];

    if (v179 >= 1 && v82 > v104)
    {
      goto LABEL_380;
    }
  }

  else
  {
  }

  v137 = [v4 rankingItem];
  if (([v137 bundleIDType] & 0x60) == 0)
  {
    goto LABEL_201;
  }

  v138 = [v4 rankingItem];
  if ([v138 searchTermsMatchTitle] >= 3)
  {

LABEL_201:
    goto LABEL_202;
  }

  v139 = [v66 rankingItem];
  v140 = [v139 searchTermsMatchTitle];

  if (v140 >= 3 && v79 > v104)
  {
    v540[0] = @"[Promotion]";
    v540[1] = v517;
    v540[2] = @"Calender/Reminder matched title";
    v127 = MEMORY[0x1E695DEC8];
    v128 = v540;
    goto LABEL_134;
  }

LABEL_202:
  v186 = [v4 rankingItem];
  if (([v186 bundleIDType] & 0x60) == 0)
  {
LABEL_255:

    goto LABEL_256;
  }

  v187 = [v4 rankingItem];
  if ([v187 searchTermsMatchTitle] <= 2)
  {

    goto LABEL_255;
  }

  v188 = [v66 rankingItem];
  v189 = [v188 searchTermsMatchTitle];

  if (v189 <= 2 && v82 > v104)
  {
    v539[0] = @"[Promotion]";
    v539[1] = v516;
    v539[2] = @"Calender/Reminder matched title";
    v149 = MEMORY[0x1E695DEC8];
    v150 = v539;
    goto LABEL_207;
  }

LABEL_256:
  v220 = [v4 rankingItem];
  if (([v220 bundleIDType] & 0x20) == 0)
  {
LABEL_263:

    goto LABEL_264;
  }

  v221 = [v4 rankingItem];
  v222 = [v221 isLLMQUPersonMatchedInRecipient];
  if ((v222 & 1) == 0)
  {
    v103 = [v4 rankingItem];
    if (![v103 isLLMQUPersonMatchedInAuthor])
    {
      goto LABEL_261;
    }
  }

  v223 = [v66 rankingItem];
  if ([v223 isLLMQUPersonMatchedInRecipient])
  {

    if (v222)
    {
LABEL_262:

      goto LABEL_263;
    }

LABEL_261:

    goto LABEL_262;
  }

  v266 = [v66 rankingItem];
  v267 = [v266 isLLMQUPersonMatchedInAuthor];
  if (v79 <= v104)
  {
    v268 = 1;
  }

  else
  {
    v268 = v267;
  }

  if ((v222 & 1) == 0)
  {
  }

  v196 = a1;
  if ((v268 & 1) == 0)
  {
    v538[0] = @"[Promotion]";
    v538[1] = v517;
    v538[2] = @"Calender/Reminder matched recipient/author";
    v197 = MEMORY[0x1E695DEC8];
    v198 = v538;
    goto LABEL_333;
  }

LABEL_264:
  v224 = [v4 rankingItem];
  if (([v224 bundleIDType] & 0x20) == 0)
  {
LABEL_269:

    goto LABEL_270;
  }

  v225 = [v4 rankingItem];
  if ([v225 isLLMQUPersonMatchedInRecipient])
  {
LABEL_268:

    goto LABEL_269;
  }

  v226 = [v4 rankingItem];
  if ([v226 isLLMQUPersonMatchedInAuthor])
  {

    goto LABEL_268;
  }

  v280 = [v527 rankingItem];
  if ([v280 isLLMQUPersonMatchedInRecipient])
  {
    v281 = v82 > v104;
  }

  else
  {
    v302 = [v527 rankingItem];
    v303 = [v302 isLLMQUPersonMatchedInAuthor];
    if (v82 > v104)
    {
      v281 = v303;
    }

    else
    {
      v281 = 0;
    }
  }

  if (v281)
  {
    v537[0] = @"[Promotion]";
    v537[1] = v516;
    v537[2] = @"Calender/Reminder matched recipient/author";
    v278 = MEMORY[0x1E695DEC8];
    v279 = v537;
    goto LABEL_378;
  }

LABEL_270:
  v227 = [v4 rankingItem];
  v228 = [v227 startDueDateToNowInSeconds];
  if (v228 >= 0)
  {
    v229 = v228;
  }

  else
  {
    v229 = -v228;
  }

  v66 = v527;
  v230 = [v527 rankingItem];
  v231 = [v230 startDueDateToNowInSeconds];
  if (v231 >= 0)
  {
    v232 = v231;
  }

  else
  {
    v232 = -v231;
  }

  if (v229 < v232 && v79 > v104)
  {
    goto LABEL_296;
  }

  v233 = [v4 rankingItem];
  v234 = [v233 startDueDateToNowInSeconds];
  if (v234 >= 0)
  {
    v235 = v234;
  }

  else
  {
    v235 = -v234;
  }

  v236 = [v527 rankingItem];
  v237 = [v236 startDueDateToNowInSeconds];
  if (v237 >= 0)
  {
    v238 = v237;
  }

  else
  {
    v238 = -v237;
  }

  v239 = v235 > v238;
  v65 = a1;
  if (v239 && v82 > v104)
  {
    goto LABEL_380;
  }

LABEL_75:
  if (!(v508 & 1 | ((v511 & 1) == 0)))
  {
    v536[0] = @"[Demotion]";
    v536[1] = v517;
    v536[2] = @"Email Label: Promotional";
    v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v536 count:3];
    v93 = *(v65 + 72);
    v94 = v4;
LABEL_83:
    v95 = [v94 rankingItem];
    v96 = [v95 identifier];
    [v93 setObject:v92 forKeyedSubscript:v96];

    goto LABEL_84;
  }

  if (!(v511 & 1 | ((v508 & 1) == 0)))
  {
    v535[0] = @"[Demotion]";
    v535[1] = v516;
    v535[2] = @"Email Label: Promotional";
    v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v535 count:3];
    v98 = *(v65 + 72);
    v99 = v66;
LABEL_87:
    v100 = [v99 rankingItem];
    v101 = [v100 identifier];
    [v98 setObject:v97 forKeyedSubscript:v101];

LABEL_298:
    goto LABEL_299;
  }

  if ([v61 isEqualToString:@"com.apple.spotlight.events"] && objc_msgSend(v62, "isEqualToString:", @"com.apple.spotlight.events"))
  {
    v89 = [v4 rankingItem];
    if ([v89 startDueDateToNowInSeconds] <= 0)
    {
    }

    else
    {
      v90 = [v66 rankingItem];
      v91 = [v90 startDueDateToNowInSeconds];

      if (v91 < 0)
      {
        goto LABEL_299;
      }
    }

    v245 = [v4 rankingItem];
    if ([v245 startDueDateToNowInSeconds] < 0)
    {
      v261 = [v66 rankingItem];
      v262 = [v261 startDueDateToNowInSeconds];

      if (v262 > 0)
      {
        goto LABEL_84;
      }
    }

    else
    {
    }

    v246 = [v4 rankingItem];
    if ([v246 startDueDateToNowInSeconds] <= 0)
    {
    }

    else
    {
      v247 = [v66 rankingItem];
      v248 = [v247 startDueDateToNowInSeconds];

      if (v248 >= 1)
      {
        v249 = [v4 rankingItem];
        v250 = [v249 startDueDateToNowInSeconds];
        v251 = [v66 rankingItem];
        v252 = [v251 startDueDateToNowInSeconds];

        if (v250 > v252)
        {
          goto LABEL_84;
        }

        v253 = [v4 rankingItem];
        v254 = [v253 startDueDateToNowInSeconds];
        v255 = [v66 rankingItem];
        v256 = [v255 startDueDateToNowInSeconds];

        if (v254 < v256)
        {
          goto LABEL_299;
        }

        goto LABEL_348;
      }
    }

    v273 = [v4 rankingItem];
    if ([v273 startDueDateToNowInSeconds] < 0)
    {
      v282 = [v66 rankingItem];
      v283 = [v282 startDueDateToNowInSeconds];

      if (v283 < 0)
      {
        v421 = [v4 rankingItem];
        v422 = [v421 startDueDateToNowInSeconds];
        v423 = [v66 rankingItem];
        v424 = [v423 startDueDateToNowInSeconds];

        if (v422 > v424)
        {
          goto LABEL_39;
        }

        v425 = [v4 rankingItem];
        v426 = [v425 startDueDateToNowInSeconds];
        v66 = v527;
        v427 = [v527 rankingItem];
        v428 = [v427 startDueDateToNowInSeconds];

        v62 = v518;
        v61 = v519;
        if (v426 < v428)
        {
          goto LABEL_84;
        }
      }
    }

    else
    {
    }
  }

LABEL_348:
  v284 = a1;
  if (([*(a1 + 48) llmQUIntentType] & 0x207DC000) != 0)
  {
    v285 = [v4 rankingItem];
    v286 = [v285 sectionBundleIdentifier];
    if (SSSectionIsSyndicatedPhotos(v286))
    {
      v287 = [v66 rankingItem];
      v288 = [v287 bundleIDType] & 0x20000200100068;

      if (v288)
      {
        goto LABEL_84;
      }
    }

    else
    {
    }

    v289 = [v66 rankingItem];
    v290 = [v289 sectionBundleIdentifier];
    if (SSSectionIsSyndicatedPhotos(v290))
    {
      v291 = [v4 rankingItem];
      v292 = [v291 bundleIDType] & 0x20000200100068;

      v284 = a1;
      if (v292)
      {
        goto LABEL_299;
      }
    }

    else
    {

      v284 = a1;
    }
  }

  if (*(v284 + 81) == 1)
  {
    v293 = v499 & v501;
    if ((v503 & v505) != 0 && !v293)
    {
      goto LABEL_299;
    }

    if ((v503 & v505) == 0 && v293)
    {
      goto LABEL_84;
    }

    v294 = [*(a1 + 48) llmQUIntentType];
    if ((([*(a1 + 48) inferredLlmQUIntentType] | v294) & 0x4000004) != 0)
    {
      v295 = [v4 rankingItem];
      v296 = [v295 preExtractedCardType];
      if (v296)
      {
        v297 = v296;
        v298 = [v66 rankingItem];
        v299 = [v298 preExtractedCardType];

        if (!v299)
        {
          goto LABEL_299;
        }
      }

      else
      {
      }

      v307 = [v4 rankingItem];
      v308 = [v307 preExtractedCardType];
      if (v308)
      {
      }

      else
      {
        v419 = [v66 rankingItem];
        v420 = [v419 preExtractedCardType];

        if (v420)
        {
          goto LABEL_84;
        }
      }
    }
  }

  v309 = [v4 rankingItem];
  if ([v309 isPromotedSharedLink])
  {
    v310 = [v66 rankingItem];
    v311 = [v310 isPromotedSharedLink];

    if ((v311 & 1) == 0)
    {
      v534[0] = @"[Promotion] [Shared Link]";
      v534[1] = v517;
      v534[2] = @"shared link type and QU Inferred entity match";
      v312 = MEMORY[0x1E695DEC8];
      v313 = v534;
LABEL_395:
      v97 = [v312 arrayWithObjects:v313 count:3];
      v98 = *(a1 + 72);
      v99 = v4;
      goto LABEL_87;
    }
  }

  else
  {
  }

  v314 = [v4 rankingItem];
  if ([v314 isPromotedSharedLink])
  {
  }

  else
  {
    v315 = [v66 rankingItem];
    v316 = [v315 isPromotedSharedLink];

    if (v316)
    {
      v533[0] = @"[Promotion] [Shared Link]";
      v533[1] = v516;
      v533[2] = @"shared link type and QU Inferred entity match";
      v317 = MEMORY[0x1E695DEC8];
      v318 = v533;
LABEL_401:
      v92 = [v317 arrayWithObjects:v318 count:3];
      v93 = *(a1 + 72);
      v94 = v66;
      goto LABEL_83;
    }
  }

  v319 = [v4 rankingItem];
  if ([v319 isInferredSharedLink])
  {
    v320 = [v66 rankingItem];
    v321 = [v320 isInferredSharedLink];

    if ((v321 & 1) == 0)
    {
      v532[0] = @"[Promotion] [Shared Link]";
      v532[1] = v517;
      v532[2] = @"QU Inferred entity match";
      v312 = MEMORY[0x1E695DEC8];
      v313 = v532;
      goto LABEL_395;
    }
  }

  else
  {
  }

  v322 = [v4 rankingItem];
  if ([v322 isInferredSharedLink])
  {

    goto LABEL_402;
  }

  v323 = [v66 rankingItem];
  v324 = [v323 isInferredSharedLink];

  if (v324)
  {
    v531[0] = @"[Promotion] [Shared Link]";
    v531[1] = v516;
    v531[2] = @"QU Inferred entity match";
    v317 = MEMORY[0x1E695DEC8];
    v318 = v531;
    goto LABEL_401;
  }

LABEL_402:
  v325 = [v4 rankingItem];
  v326 = [v325 preExtractedCardType];
  if (!v326)
  {
LABEL_417:

    v334 = a1;
    goto LABEL_418;
  }

  v327 = v326;
  v328 = [v66 rankingItem];
  v329 = [v328 preExtractedCardType];
  if (!v329)
  {
LABEL_416:

    goto LABEL_417;
  }

  v330 = v329;
  v331 = [v4 rankingItem];
  if (![v331 cardExpirationDateToNowInSeconds])
  {

    goto LABEL_416;
  }

  v332 = [v66 rankingItem];
  v333 = [v332 cardExpirationDateToNowInSeconds];

  v334 = a1;
  if (v333)
  {
    v335 = [v4 rankingItem];
    v336 = SSCompactRankingAttrsGetValue([v335 attributes], 0x11CuLL);
    v337 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v336, v336);

    v338 = [v527 rankingItem];
    v339 = SSCompactRankingAttrsGetValue([v338 attributes], 0x11CuLL);
    v506 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v339, v339);

    v340 = [v4 rankingItem];
    v341 = SSCompactRankingAttrsGetValue([v340 attributes], 0x137uLL);
    v504 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v341, v341);

    v342 = [v527 rankingItem];
    v343 = SSCompactRankingAttrsGetValue([v342 attributes], 0x137uLL);
    v502 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v343, v343);

    v344 = [v4 rankingItem];
    v345 = SSCompactRankingAttrsGetValue([v344 attributes], 0x13CuLL);
    v486 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v345, v345);

    v346 = [v527 rankingItem];
    v347 = SSCompactRankingAttrsGetValue([v346 attributes], 0x13CuLL);
    v490 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v347, v347);

    v348 = [v4 rankingItem];
    v349 = SSCompactRankingAttrsGetValue([v348 attributes], 0x136uLL);
    v488 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v349, v349);

    v350 = [v527 rankingItem];
    v351 = SSCompactRankingAttrsGetValue([v350 attributes], 0x136uLL);
    v492 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v351, v351);

    v352 = [v4 rankingItem];
    v353 = SSCompactRankingAttrsGetValue([v352 attributes], 0x13EuLL);
    v500 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v353, v353);

    v354 = [v527 rankingItem];
    v355 = SSCompactRankingAttrsGetValue([v354 attributes], 0x13EuLL);
    v494 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v355, v355);

    v356 = [v4 rankingItem];
    v357 = SSCompactRankingAttrsGetValue([v356 attributes], 0x13DuLL);
    v512 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v357, v357);

    v358 = [v527 rankingItem];
    v359 = SSCompactRankingAttrsGetValue([v358 attributes], 0x13DuLL);
    v509 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v359, v359);

    v360 = v337;
    if ([v337 length] && objc_msgSend(v337, "isEqualToString:", v506) && objc_msgSend(v504, "length") && objc_msgSend(v504, "isEqualToString:", v502) && objc_msgSend(v500, "length") && objc_msgSend(v500, "isEqualToString:", v494))
    {
      if ([v488 length] && (objc_msgSend(v488, "isEqualToString:", v492) & 1) != 0)
      {
        v361 = 1;
LABEL_476:
        if (([v360 isEqualToString:*MEMORY[0x1E6963A80]] & 1) != 0 || objc_msgSend(v360, "isEqualToString:", *MEMORY[0x1E6963A88]))
        {
          v54 = -1;
          v461 = 1;
          if (!v512 || !v509 || ([v512 isEqualToString:v509] & v361 & 1) == 0)
          {
LABEL_489:

            v62 = v518;
            v61 = v519;
            v334 = a1;
            if ((v461 & 1) == 0)
            {
              goto LABEL_54;
            }

            goto LABEL_418;
          }
        }

        else if (!v361)
        {
LABEL_485:
          v54 = -1;
          v461 = 1;
          goto LABEL_489;
        }

        if (v497 || !v495)
        {
          if (v495 || !v497)
          {
            goto LABEL_485;
          }

          v529 = @"[Demotion]";
          v462 = &v529;
          v54 = 1;
          v463 = v517;
          v464 = v360;
          v465 = v504;
          v466 = v500;
          v467 = v486;
          v474 = v488;
          v483 = v527;
          v498 = v4;
        }

        else
        {
          v530 = @"[Demotion]";
          v54 = -1;
          v462 = &v530;
          v463 = v516;
          v464 = v506;
          v465 = v502;
          v466 = v494;
          v467 = v490;
          v474 = v492;
          v483 = v4;
          v498 = v527;
        }

        v462[1] = v463;
        v476 = MEMORY[0x1E696AEC0];
        v496 = SSRedactStringClient(v464, 1, *(a1 + 82));
        v481 = SSRedactStringClient(v465, 1, *(a1 + 82));
        v479 = SSRedactStringClient(v466, 1, *(a1 + 82));
        v477 = SSRedactStringClient(v467, 1, *(a1 + 82));
        v468 = SSRedactStringClient(v474, 1, *(a1 + 82));
        v484 = [v483 rankingItem];
        v475 = SSCompactRankingAttrsGetValue([v484 attributes], 0x13BuLL);
        v469 = [v476 stringWithFormat:@"Expired card (subType: %@, name: %@, country: %@, issued by: %@ or provided by: %@) demoted in favor of renewed card with expiry date: %@", v496, v481, v479, v477, v468, v475];
        v462[2] = v469;
        v470 = [MEMORY[0x1E695DEC8] arrayWithObjects:v462 count:3];
        v471 = *(a1 + 72);
        v472 = [v498 rankingItem];
        v473 = [v472 identifier];
        [v471 setObject:v470 forKeyedSubscript:v473];

        v461 = 0;
        goto LABEL_489;
      }

      if ([v486 length])
      {
        v361 = [v486 isEqualToString:v490];
        goto LABEL_476;
      }
    }

    v361 = 0;
    goto LABEL_476;
  }

LABEL_418:
  if (*(v334 + 80) != 1 || ![*(v334 + 48) hasPersonIsSelfTokenFromLLMQU])
  {
    goto LABEL_426;
  }

  v362 = [v4 rankingItem];
  v363 = [v362 sectionBundleIdentifier];
  if (![v363 isEqualToString:@"com.apple.mobilemail"])
  {
LABEL_425:

    goto LABEL_426;
  }

  v364 = [v527 rankingItem];
  v365 = [v364 sectionBundleIdentifier];
  if (![v365 isEqualToString:@"com.apple.mobilemail"])
  {
LABEL_424:

    v62 = v518;
    v61 = v519;
    goto LABEL_425;
  }

  v366 = [v4 rankingItem];
  if ([v366 hasPreExtractedCustomerNames])
  {

    goto LABEL_424;
  }

  v429 = [v527 rankingItem];
  v430 = [v429 hasPreExtractedCustomerNames];

  v62 = v518;
  v61 = v519;
  if (v430)
  {
    goto LABEL_426;
  }

  v431 = [v4 rankingItem];
  if ([v431 isMeCardEmailInPrimaryRecipients])
  {
    v432 = [v4 rankingItem];
    v433 = [v432 isMeCardEmailInAdditionalRecipients] ^ 1;
  }

  else
  {
    v433 = 0;
  }

  v434 = [v527 rankingItem];
  if ([v434 isMeCardEmailInPrimaryRecipients])
  {
    v435 = [v527 rankingItem];
    v436 = [v435 isMeCardEmailInAdditionalRecipients];
  }

  else
  {
    v436 = 1;
  }

  v437 = [v4 rankingItem];
  if ([v437 isMeCardEmailInAdditionalRecipients])
  {
    v438 = [v4 rankingItem];
    v439 = [v438 isMeCardEmailInPrimaryRecipients];
  }

  else
  {
    v439 = 1;
  }

  v440 = [v527 rankingItem];
  if (([v440 isMeCardEmailInAdditionalRecipients] & 1) == 0)
  {

    v62 = v518;
    v61 = v519;
    v443 = a1;
    if (((v436 | v439) & 1) == 0)
    {
      goto LABEL_457;
    }

LABEL_426:
    v367 = [v4 rankingItem];
    [v367 likelihood];
    v369 = v368;

    v370 = [v527 rankingItem];
    [v370 likelihood];
    v372 = v371;

    if (v369 > v372)
    {
      goto LABEL_299;
    }

    if (v369 >= v372)
    {
      v373 = [v4 rankingItem];
      [v373 topicalityScore];
      v375 = v374;

      v376 = [v527 rankingItem];
      [v376 topicalityScore];
      v378 = v377;

      if (v375 > v378)
      {
        goto LABEL_299;
      }

      if (v375 < v378)
      {
        goto LABEL_52;
      }

      v379 = [v4 rankingItem];
      [v379 pommesL1Score];
      v381 = v380;
      v382 = [v527 rankingItem];
      [v382 pommesL1Score];
      v384 = v383;

      if (v381 <= v384)
      {
        v385 = [v4 rankingItem];
        [v385 pommesL1Score];
        v387 = v386;
        v388 = [v527 rankingItem];
        [v388 pommesL1Score];
        v390 = v389;

        if (v387 < v390)
        {
          goto LABEL_52;
        }

        v391 = [v4 rankingItem];
        [v391 embeddingSimilarity];
        v393 = v392;
        v394 = [v527 rankingItem];
        [v394 embeddingSimilarity];
        v396 = v395;

        if (v393 <= v396)
        {
          v397 = [v4 rankingItem];
          [v397 embeddingSimilarity];
          v399 = v398;
          v400 = [v527 rankingItem];
          [v400 embeddingSimilarity];
          v402 = v401;

          if (v399 < v402)
          {
            goto LABEL_52;
          }

          v403 = [v4 rankingItem];
          [v403 freshnessScore];
          v405 = v404;
          v406 = [v527 rankingItem];
          [v406 freshnessScore];
          v408 = v407;

          if (v405 <= v408)
          {
            v409 = [v4 rankingItem];
            [v409 freshnessScore];
            v411 = v410;
            v412 = [v527 rankingItem];
            [v412 freshnessScore];
            v414 = v413;

            if (v411 >= v414)
            {
              v415 = [v4 rankingItem];
              v416 = [v415 identifier];
              v417 = [v527 rankingItem];
              v418 = [v417 identifier];
              v54 = [v416 compare:v418];

              goto LABEL_53;
            }

            goto LABEL_52;
          }
        }
      }

LABEL_39:
      v54 = -1;
LABEL_53:
      v62 = v518;
      v61 = v519;
      goto LABEL_54;
    }

    goto LABEL_84;
  }

  v441 = [v527 rankingItem];
  v442 = [v441 isMeCardEmailInPrimaryRecipients];

  v62 = v518;
  v61 = v519;
  v443 = a1;
  if (v442 & 1 | ((v433 & 1) == 0) && ((v436 | v439) & 1) != 0)
  {
    goto LABEL_426;
  }

LABEL_457:
  if (v433)
  {
    v444 = v527;
  }

  else
  {
    v444 = v4;
  }

  if (v433)
  {
    v445 = v516;
  }

  else
  {
    v445 = v517;
  }

  if (v433)
  {
    v446 = v4;
  }

  else
  {
    v446 = v527;
  }

  if (v433)
  {
    v54 = -1;
  }

  else
  {
    v54 = 1;
  }

  if (v433)
  {
    v447 = v517;
  }

  else
  {
    v447 = v516;
  }

  [v444 rankingItem];
  v449 = v448 = v443;
  v450 = [v449 identifier];

  v507 = v450;
  v451 = v445;
  v452 = [v446 rankingItem];
  v453 = [v452 identifier];

  v510 = v447;
  v528[0] = @"[Demotion]";
  v528[1] = v451;
  v521 = v451;
  v454 = MEMORY[0x1E696AEC0];
  v455 = SSRedactStringClient(v450, 1, *(v448 + 82));
  v456 = SSRedactStringClient(v451, 1, *(v448 + 82));
  v457 = SSRedactStringClient(v453, 1, *(v448 + 82));
  v458 = SSRedactStringClient(v510, 1, *(v448 + 82));
  v459 = [v454 stringWithFormat:@"MeCard email match in additionalRecipients in favor of item with match in primaryRecipients (demoted: %@|%@, promoted: %@|%@)", v455, v456, v457, v458];
  v528[2] = v459;
  v460 = [MEMORY[0x1E695DEC8] arrayWithObjects:v528 count:3];
  [*(v448 + 72) setObject:v460 forKeyedSubscript:v507];

  v62 = v518;
  v61 = v519;

LABEL_54:
  v63 = *MEMORY[0x1E69E9840];
  return v54;
}

id __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AB08];
  v3 = a2;
  v4 = [v2 whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  return v5;
}

void __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 count] == 3)
  {
    v7 = SSGeneralLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 objectAtIndexedSubscript:0];
      v9 = [*(a1 + 32) searchString];
      v10 = SSRedactStringClient(v9, 1, *(a1 + 40));
      v11 = SSRedactStringClient(v5, 1, *(a1 + 40));
      v12 = [v6 objectAtIndexedSubscript:1];
      v13 = [v6 objectAtIndexedSubscript:2];
      v15 = 138413314;
      v16 = v8;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_1D9F69000, v7, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Sorting] %@ query=%@ identifier=%@ name=[%@] due to %@", &v15, 0x34u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (void)searchToolExtractDocTextualFeature:(id)a3 queryContext:(id)a4 title:(id)a5 subject:(id)a6 displayName:(id)a7 searchTermsSet:(id)a8
{
  v235 = *MEMORY[0x1E69E9840];
  v191 = a3;
  v13 = a4;
  v189 = a5;
  v176 = a6;
  v177 = a7;
  v178 = a8;
  if (searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet__onceToken != -1)
  {
    +[SSRankingManager searchToolExtractDocTextualFeature:queryContext:title:subject:displayName:searchTermsSet:];
  }

  v181 = [v13 isSearchToolClient];
  v14 = [v191 rankingItem];
  [v14 setSearchTermsMatchTitle:3];

  v15 = [v13 normalizedSearchTermsFromQU];
  if (![v15 count])
  {

    goto LABEL_37;
  }

  v16 = [v191 rankingItem];
  [v16 normalizedSparseScore];
  v18 = v17;

  if (v18 <= 1.0)
  {
    goto LABEL_37;
  }

  v19 = [v191 rankingItem];
  v20 = [v19 bundleIDType];

  if ((v20 & 0x20) != 0)
  {
    v23 = v189;
    goto LABEL_10;
  }

  v21 = [v191 rankingItem];
  v22 = [v21 bundleIDType];

  if ((v22 & 0x100000) == 0)
  {
    v23 = v177;
LABEL_10:
    v24 = v23;
    goto LABEL_11;
  }

  v24 = v176;
  if (![v24 length])
  {
    v57 = v177;

    v24 = v57;
  }

LABEL_11:
  if ([v24 length])
  {
    v25 = [MEMORY[0x1E695DF70] array];
    v26 = searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet__nlTagger;
    objc_sync_enter(v26);
    [searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet__nlTagger setString:v24];
    v27 = searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet__nlTagger;
    v28 = [searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet__nlTagger string];
    v29 = [v28 length];
    v30 = *MEMORY[0x1E69779F0];
    v218[0] = MEMORY[0x1E69E9820];
    v218[1] = 3221225472;
    v218[2] = __109__SSRankingManager_searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet___block_invoke_2;
    v218[3] = &unk_1E8595B58;
    v31 = v25;
    v219 = v31;
    [v27 enumerateTagsInRange:0 unit:v29 scheme:0 options:v30 usingBlock:{6, v218}];

    objc_sync_exit(v26);
    if (![v31 count])
    {
      v32 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v33 = [v24 componentsSeparatedByCharactersInSet:v32];
      v34 = [MEMORY[0x1E696AE18] predicateWithFormat:@"length > 0"];
      v35 = [v33 filteredArrayUsingPredicate:v34];
      v36 = [v35 mutableCopy];

      v31 = v36;
    }

    v37 = [SSRankingUtilities loadOptionalKeywordsDictionaryFromAssetPlistType:1];
    v38 = [v13 llmQUIntentType];
    if ((([v13 inferredLlmQUIntentType] | v38) & 0x20) != 0)
    {
      v39 = [v31 lastObject];
      v40 = [v37 containsObject:v39];

      if (v40)
      {
        [v31 removeLastObject];
      }
    }

    if ([v31 count])
    {
      v41 = 0;
      do
      {
        v42 = [v31 objectAtIndexedSubscript:v41];
        v43 = [v42 lowercaseString];
        [v31 setObject:v43 atIndexedSubscript:v41];

        ++v41;
      }

      while (v41 < [v31 count]);
    }

    v44 = [v31 count];
    v45 = [v13 normalizedSearchTermsFromQU];
    LODWORD(v44) = v44 == [v45 count];

    if (v44)
    {
      for (i = 0; i < [v31 count]; ++i)
      {
        v47 = [v13 normalizedSearchTermsFromQU];
        v48 = [v47 objectAtIndexedSubscript:i];
        v49 = [v31 objectAtIndexedSubscript:i];
        v50 = [v49 lowercaseString];
        v51 = [v48 isEqualToString:v50];

        if (!v51)
        {
          break;
        }
      }

      if (i == [v31 count])
      {
        v52 = [v191 rankingItem];
        [v52 setSearchTermsMatchTitle:0];
      }
    }

    v53 = [v191 rankingItem];
    v54 = [v53 searchTermsMatchTitle] == 0;

    if (v54)
    {
      goto LABEL_35;
    }

    v55 = [MEMORY[0x1E695DFD8] setWithArray:v31];
    if ([v178 isEqualToSet:v55])
    {
      v56 = 1;
    }

    else
    {
      if (![v178 isSubsetOfSet:v55])
      {
LABEL_34:

LABEL_35:
        goto LABEL_36;
      }

      v56 = 2;
    }

    v58 = [v191 rankingItem];
    [v58 setSearchTermsMatchTitle:v56];

    goto LABEL_34;
  }

LABEL_36:

LABEL_37:
  if (([v13 llmQUIntentType] & 0xA0020) == 0 && (objc_msgSend(v13, "inferredLlmQUIntentType") & 0x20) == 0)
  {
    [v13 hasOneOnOneSearchTerm];
    v182 = 1;
    goto LABEL_64;
  }

  v59 = [v191 rankingItem];
  v182 = ([v59 bundleIDType] & 0x20) == 0;

  if (v182 | (([v13 hasOneOnOneSearchTerm] & 1) == 0))
  {
    goto LABEL_64;
  }

  if (![v189 length])
  {
    goto LABEL_62;
  }

  [SSRankingUtilities loadOptionalKeywordsDictionaryFromAssetPlistType:0];
  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v60 = v215 = 0u;
  v61 = [v60 countByEnumeratingWithState:&v214 objects:v234 count:16];
  v62 = v60;
  if (!v61)
  {
    goto LABEL_61;
  }

  v63 = *v215;
  while (2)
  {
    for (j = 0; j != v61; ++j)
    {
      if (*v215 != v63)
      {
        objc_enumerationMutation(v60);
      }

      v65 = *(*(&v214 + 1) + 8 * j);
      if ([v189 localizedCaseInsensitiveContainsString:v65])
      {
        v66 = [v189 length];
        v67 = [MEMORY[0x1E695DF58] currentLocale];
        v68 = [v189 rangeOfString:v65 options:129 range:0 locale:{v66, v67}];
        v70 = v69;

        if (v68)
        {
          if (v68 == 0x7FFFFFFFFFFFFFFFLL)
          {
            continue;
          }

          v71 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
          v72 = [v71 characterIsMember:{objc_msgSend(v189, "characterAtIndex:", v68 - 1)}];
        }

        else
        {
          v72 = 0;
        }

        v73 = v68 + v70;
        if (v73 == [v189 length])
        {
          v74 = 0;
        }

        else
        {
          v75 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
          v74 = [v75 characterIsMember:{objc_msgSend(v189, "characterAtIndex:", v73)}];
        }

        if (((v72 | v74) & 1) == 0)
        {
          v76 = SSGeneralLog();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            v77 = [v191 rankingItem];
            v78 = [v77 identifier];
            v79 = SSRedactStringClient(v78, 1, v181);
            *buf = 138412290;
            v223 = v79;
            _os_log_impl(&dword_1D9F69000, v76, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Featurization] [Calendar] [PerfectMatch] Found one on one search term in the calendar item with id %@.", buf, 0xCu);
          }

          v62 = [v191 rankingItem];
          [v62 setSearchTermsMatchTitle:0];
          goto LABEL_61;
        }
      }
    }

    v61 = [v60 countByEnumeratingWithState:&v214 objects:v234 count:16];
    if (v61)
    {
      continue;
    }

    break;
  }

  v62 = v60;
LABEL_61:

LABEL_62:
  v182 = 0;
LABEL_64:
  v80 = [v191 rankingItem];
  v81 = [v80 sectionBundleIdentifier];
  v82 = [v81 isEqualToString:@"com.apple.mobilecal"];

  if (v82)
  {
    obj = [v13 personTokensFromLLMQU];
    if (![obj count])
    {
      goto LABEL_100;
    }

    v83 = [v191 rankingItem];
    v84 = [v83 matchInfo];
    v85 = v84 == 0;

    if (v85)
    {
      v179 = 0;
      LOBYTE(v183) = 0;
      v187 = 0;
      goto LABEL_103;
    }

    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v86 = [v191 rankingItem];
    obj = [v86 matchInfo];

    v195 = [obj countByEnumeratingWithState:&v210 objects:v233 count:16];
    if (!v195)
    {
LABEL_100:
      v179 = 0;
      LOBYTE(v183) = 0;
      v187 = 0;
      goto LABEL_101;
    }

    v179 = 0;
    v183 = 0;
    v187 = 0;
    v192 = *v211;
    v188 = *MEMORY[0x1E69649F8];
    v186 = *MEMORY[0x1E69649E0];
    v184 = *MEMORY[0x1E69648E8];
    v185 = *MEMORY[0x1E69649F0];
    v180 = *MEMORY[0x1E6963D18];
    v175 = *MEMORY[0x1E6963CE8];
    v174 = *MEMORY[0x1E6963D08];
    do
    {
      v87 = 0;
      do
      {
        if (*v211 != v192)
        {
          objc_enumerationMutation(obj);
        }

        v88 = *(*(&v210 + 1) + 8 * v87);
        if (v88)
        {
          v208 = 0u;
          v209 = 0u;
          v206 = 0u;
          v207 = 0u;
          v89 = [v191 rankingItem];
          v90 = [v89 matchInfo];
          v91 = [v90 objectForKeyedSubscript:v88];

          v92 = [v91 countByEnumeratingWithState:&v206 objects:v232 count:16];
          if (v92)
          {
            v93 = *v207;
            while (2)
            {
              for (k = 0; k != v92; ++k)
              {
                if (*v207 != v93)
                {
                  objc_enumerationMutation(v91);
                }

                v95 = *(*(&v206 + 1) + 8 * k);
                v96 = [v95 original];
                v97 = hasTrailingAsterisk(v96);

                v98 = [v95 original];
                if (v97)
                {
                  v99 = [v95 original];
                  v100 = [v98 substringToIndex:{objc_msgSend(v99, "length") - 1}];

                  v98 = v100;
                }

                v101 = [v13 personTokensFromLLMQU];
                v102 = [v101 containsObject:v98];

                if (v102)
                {
                  if ([v88 isEqualToString:v188] & 1) != 0 || (objc_msgSend(v88, "isEqualToString:", v186) & 1) != 0 || (objc_msgSend(v88, "isEqualToString:", v185) & 1) != 0 || (objc_msgSend(v88, "isEqualToString:", v184))
                  {
                    v187 = 1;
                  }

                  else
                  {
                    if ([v88 isEqualToString:v180] & 1) != 0 || (objc_msgSend(v88, "isEqualToString:", v175))
                    {
                      v103 = 1;
                    }

                    else
                    {
                      v104 = [v88 isEqualToString:v174];
                      v179 |= v104 ^ 1;
                      v103 = v104 | v183;
                    }

                    v183 = v103;
                  }

                  goto LABEL_90;
                }
              }

              v92 = [v91 countByEnumeratingWithState:&v206 objects:v232 count:16];
              if (v92)
              {
                continue;
              }

              break;
            }
          }

LABEL_90:
        }

        ++v87;
      }

      while (v87 != v195);
      v105 = [obj countByEnumeratingWithState:&v210 objects:v233 count:16];
      v195 = v105;
    }

    while (v105);
LABEL_101:

LABEL_103:
    v106 = [v191 rankingItem];
    [v106 setIsLLMQUPersonMatchedInRecipient:v187 & 1];

    v107 = [v191 rankingItem];
    [v107 setIsLLMQUPersonMatchedInAuthor:v183 & 1];

    v108 = [v191 rankingItem];
    [v108 setIsLLMQUPersonMatchedInOther:v179 & 1];

    v109 = SSGeneralLog();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      v110 = [v191 rankingItem];
      v111 = [v110 identifier];
      v112 = SSRedactStringClient(v111, 1, v181);
      v113 = SSRedactStringClient(v189, 1, v181);
      v114 = [v191 rankingItem];
      v115 = [v114 countRecipientByEmails];
      *buf = 138413570;
      v223 = v112;
      v224 = 2112;
      v225 = v113;
      v226 = 1024;
      *v227 = v115;
      *&v227[4] = 1024;
      *&v227[6] = v187 & 1;
      v228 = 1024;
      v229 = v183 & 1;
      v230 = 1024;
      v231 = v179 & 1;
      _os_log_impl(&dword_1D9F69000, v109, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Featurization] [Calendar] ID:%@, title:%@, calendarEventRecipientsEmailAddresses: %d, personMatchInRecipient:%d, personMatchInAuthor:%d, personMatchOtherThanRecipient:%d.", buf, 0x2Eu);
    }
  }

  if (!(v182 | (([v13 hasOneOnOneSearchTerm] & 1) == 0)))
  {
    v116 = [v191 rankingItem];
    if ([v116 countRecipientByEmails]!= 1)
    {
      goto LABEL_114;
    }

    v117 = [v13 personTokensFromLLMQU];
    if (![v117 count])
    {
      goto LABEL_111;
    }

    v118 = [v191 rankingItem];
    if ([v118 isLLMQUPersonMatchedInRecipient])
    {

LABEL_111:
LABEL_112:
      v119 = [v191 rankingItem];
      [v119 setSearchTermsMatchTitle:0];

      v116 = SSGeneralLog();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        v120 = [v191 rankingItem];
        v121 = [v120 identifier];
        v122 = SSRedactStringClient(v121, 1, v181);
        v123 = SSRedactStringClient(v189, 1, v181);
        *buf = 138412546;
        v223 = v122;
        v224 = 2112;
        v225 = v123;
        _os_log_impl(&dword_1D9F69000, v116, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Featurization] [Calendar] [PerfectMatch] ID:%@, title:%@, Perfect match for one on one meeting queries with single recipient calendar item. Either no person token or person tokens matched in author/recipient.", buf, 0x16u);
      }

LABEL_114:
    }

    else
    {
      v159 = [v191 rankingItem];
      v160 = [v159 isLLMQUPersonMatchedInAuthor];

      if (v160)
      {
        goto LABEL_112;
      }
    }
  }

  [SSRankingManager parseWalletBoardingPass:v191 isSearchToolClient:v181];
  v124 = [v191 rankingItem];
  v125 = [v124 bundleIDType];

  if ((v125 & 0x800) != 0)
  {
    v126 = [v191 rankingItem];
    [v126 keywordMatchScore];
    v128 = v127 > 1.0;

    if (v128)
    {
      v129 = [v191 rankingItem];
      [v129 setSearchTermsMatchTitle:2];

      v130 = SSGeneralLog();
      if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
      {
        v164 = [v191 rankingItem];
        v165 = [v164 identifier];
        v166 = SSRedactStringClient(v165, 1, v181);
        v167 = SSRedactStringClient(v189, 1, v181);
        *buf = 138412546;
        v223 = v166;
        v224 = 2112;
        v225 = v167;
        _os_log_debug_impl(&dword_1D9F69000, v130, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Featurization] [Files] ID:%@, title:%@ Marked document as AllSearchTermMatch due to perfect keyword match score.", buf, 0x16u);
      }
    }
  }

  v131 = [v191 rankingItem];
  v132 = SSCompactRankingAttrsGetValue([v131 attributes], 0xF6uLL);
  v133 = [v191 rankingItem];
  [v133 setHasPreExtractedCustomerNames:v132 != 0];

  v134 = [v191 rankingItem];
  [v134 setIsMeCardEmailInPrimaryRecipients:0];

  v135 = [v191 rankingItem];
  [v135 setIsMeCardEmailInAdditionalRecipients:0];

  v136 = [v13 queryUnderstandingOutput];
  v137 = [v136 objectForKeyedSubscript:@"kQPParseResultEcrGroundedOutput"];

  v138 = [v191 rankingItem];
  v139 = [v138 sectionBundleIdentifier];
  if (![v139 isEqualToString:@"com.apple.mobilemail"])
  {

    goto LABEL_125;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v138 = [v137 objectForKeyedSubscript:@"me"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v141 = [v138 objectForKeyedSubscript:@"personEmails"];
      goto LABEL_126;
    }

LABEL_125:
    v141 = 0;
LABEL_126:
  }

  else
  {
    v141 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v141 count])
  {
    v142 = [v191 rankingItem];
    v143 = SSCompactRankingAttrsGetValue([v142 attributes], 0x175uLL);

    v144 = [v191 rankingItem];
    v145 = SSCompactRankingAttrsGetValue([v144 attributes], 0x176uLL);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v146 = v141;
      v147 = [v146 countByEnumeratingWithState:&v202 objects:v221 count:16];
      if (v147)
      {
        v148 = *v203;
        while (2)
        {
          for (m = 0; m != v147; ++m)
          {
            if (*v203 != v148)
            {
              objc_enumerationMutation(v146);
            }

            v150 = *(*(&v202 + 1) + 8 * m);
            if ([v143 containsObject:v150])
            {
              v151 = [v191 rankingItem];
              [v151 setIsMeCardEmailInPrimaryRecipients:1];

              v152 = SSGeneralLog();
              if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
              {
                v168 = [v191 rankingItem];
                v193 = [v168 identifier];
                v196 = SSRedactStringClient(v193, 1, v181);
                v169 = SSRedactStringClient(v176, 1, v181);
                v170 = SSRedactStringClient(v150, 1, v181);
                *buf = 138412802;
                v223 = v196;
                v224 = 2112;
                v225 = v169;
                v226 = 2112;
                *v227 = v170;
                _os_log_debug_impl(&dword_1D9F69000, v152, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Featurization] [Mail] For ID:%@, subject:%@, found meCard email:%@ match in primaryRecipients", buf, 0x20u);
              }

              goto LABEL_143;
            }
          }

          v147 = [v146 countByEnumeratingWithState:&v202 objects:v221 count:16];
          if (v147)
          {
            continue;
          }

          break;
        }
      }

LABEL_143:
    }

    v153 = [v191 rankingItem];
    if ([v153 isMeCardEmailInPrimaryRecipients])
    {
LABEL_160:
    }

    else
    {
      objc_opt_class();
      v154 = objc_opt_isKindOfClass();

      if (v154)
      {
        v200 = 0u;
        v201 = 0u;
        v198 = 0u;
        v199 = 0u;
        v153 = v141;
        v155 = [v153 countByEnumeratingWithState:&v198 objects:v220 count:16];
        if (v155)
        {
          v156 = *v199;
          while (2)
          {
            for (n = 0; n != v155; ++n)
            {
              if (*v199 != v156)
              {
                objc_enumerationMutation(v153);
              }

              v158 = *(*(&v198 + 1) + 8 * n);
              if ([v145 containsObject:v158])
              {
                v161 = [v191 rankingItem];
                [v161 setIsMeCardEmailInAdditionalRecipients:1];

                v162 = SSGeneralLog();
                if (os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
                {
                  v171 = [v191 rankingItem];
                  v194 = [v171 identifier];
                  v197 = SSRedactStringClient(v194, 1, v181);
                  v172 = SSRedactStringClient(v176, 1, v181);
                  v173 = SSRedactStringClient(v158, 1, v181);
                  *buf = 138412802;
                  v223 = v197;
                  v224 = 2112;
                  v225 = v172;
                  v226 = 2112;
                  *v227 = v173;
                  _os_log_debug_impl(&dword_1D9F69000, v162, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Featurization] [Mail] For ID:%@, subject:%@, found meCard email:%@ match in additionalRecipients", buf, 0x20u);
                }

                goto LABEL_160;
              }
            }

            v155 = [v153 countByEnumeratingWithState:&v198 objects:v220 count:16];
            if (v155)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_160;
      }
    }
  }

  v163 = *MEMORY[0x1E69E9840];
}

void __109__SSRankingManager_searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet___block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E6977A80]);
  v5[0] = *MEMORY[0x1E69779F0];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v2 = [v0 initWithTagSchemes:v1];
  v3 = searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet__nlTagger;
  searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet__nlTagger = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void __109__SSRankingManager_searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet__nlTagger string];
  v8 = [v7 substringWithRange:{a3, a4}];

  [*(a1 + 32) addObject:v8];
}

+ (void)searchToolRanker:(id)a3 queryContext:(id)a4 searchToolBundles:(id)a5
{
  (MEMORY[0x1EEE9AC00])(a1, a2, a3, a4, a5);
  v6 = v5;
  v8 = v7;
  v1187[16] = *MEMORY[0x1E69E9840];
  v838 = v9;
  v10 = v8;
  v913 = v6;
  if (searchToolRanker_queryContext_searchToolBundles__onceTokenForBiomeStream != -1)
  {
    +[SSRankingManager searchToolRanker:queryContext:searchToolBundles:];
  }

  v950 = [v10 isFromLLMQUParse];
  v825 = [v10 intentFromQU];
  if (loadRankingThresholdingParameters_onceToken != -1)
  {
    +[SSRankingManager searchToolRanker:queryContext:searchToolBundles:];
  }

  v911 = [v10 isSearchToolClient];
  v11 = [v10 spQUParse];
  v12 = [v11 getEncodedData];
  v13 = [v12 objectForKeyedSubscript:@"isPQA"];

  v14 = [v10 isAppEntitySearch];
  v15 = @"PQA";
  if (!v13)
  {
    v15 = @"PCS";
  }

  if (v14)
  {
    v15 = @"AppEntity";
  }

  v749 = v15;
  v16 = SSGeneralLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v987 = [v10 searchString];
    v996 = SSRedactStringClient(v987, 1, v911);
    [v10 intentFromQU];
    v978 = intentLabel();
    v1005 = +[SPSearchQueryContext llmQUIntentString:](SPSearchQueryContext, "llmQUIntentString:", [v10 llmQUIntentType]);
    v17 = +[SPSearchQueryContext llmQUIntentString:](SPSearchQueryContext, "llmQUIntentString:", [v10 inferredLlmQUIntentType]);
    v970 = [v10 earliestTokenFromQU];
    v18 = [v10 latestTokenFromQU];
    v19 = [v10 parsedQueryFromQU];
    v20 = SSRedactStringClient(v19, 1, v911);
    v21 = [v10 hasQueryTextEmbedding];
    [v10 currentTime];
    v23 = v22;
    v24 = MEMORY[0x1E695DF00];
    [v10 currentTime];
    v25 = [v24 dateWithTimeIntervalSinceReferenceDate:?];
    v26 = [v10 queryDateStringStartDate];
    v27 = [v10 queryDateStringEndDate];
    *buf = 138415618;
    v1103 = v996;
    v1104 = 1024;
    *v1105 = v950;
    *&v1105[4] = 2080;
    *&v1105[6] = v978;
    *&v1105[14] = 2112;
    *&v1105[16] = v1005;
    *&v1105[24] = 2112;
    *&v1105[26] = v17;
    *&v1105[34] = 1024;
    *&v1105[36] = v970;
    *&v1105[40] = 1024;
    *&v1105[42] = v18;
    *&v1105[46] = 2112;
    *&v1105[48] = v20;
    *&v1105[56] = 1024;
    *&v1105[58] = v21;
    *&v1105[62] = 2112;
    *&v1105[64] = v749;
    *&v1105[72] = 2048;
    *&v1105[74] = v23;
    *&v1105[82] = 2112;
    *v1106 = v25;
    *&v1106[8] = 2112;
    *&v1106[10] = v26;
    *&v1106[18] = 2112;
    *v1107 = v27;
    _os_log_impl(&dword_1D9F69000, v16, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [QU] query=%@ useLLMQU=%i QU_Intent=%s LLM_QU_Intent=%@ LLM_QU_Inferred_Intent=%@ earliest=%i latest=%i parsedQueryFromQU=%@ hasQueryContextEmbedding=%i queryType=%@ queryTime=%f queryDate=[%@] userSpecififedStartDate=[%@] userSpecifiedEndDate=[%@]", buf, 0x7Eu);
  }

  v856 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = objc_alloc(MEMORY[0x1E695DF90]);
  v29 = [v838 resultSet];
  v880 = [v28 initWithCapacity:{objc_msgSend(v29, "count")}];

  v30 = objc_alloc(MEMORY[0x1E695DF90]);
  v31 = [v838 resultSet];
  v881 = [v30 initWithCapacity:{objc_msgSend(v31, "count")}];

  [v10 currentTime];
  v829 = v32;
  v797 = SSEnableTextSemanticSearchCalibration();
  v912 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1006 = v10;
  v33 = ([v1006 llmQUIntentType] & 0x3C00) != 0 || (objc_msgSend(v1006, "inferredLlmQUIntentType") & 0x3C00) != 0;
  v800 = v33;

  v34 = &LLMQUIntentAppointmentEvent;
  if (v950)
  {
    v798 = ([v1006 llmQUIntentType] & 0x207FC000) != 0;
    [v1006 llmQUIntentType];
    [v1006 llmQUIntentType];
  }

  else
  {
    v35 = intentLabel();
    v36 = v35;
    if (v35)
    {
      v37 = !strncmp(v35, "INTENT_FLIGHT", 0xDuLL) || !strncmp(v36, "INTENT_HOTEL", 0xCuLL) || strncmp(v36, "INTENT_RESTAURANT", 0x11uLL) == 0;
      v798 = v37;
    }

    else
    {
      v798 = 0;
    }
  }

  v38 = [v1006 queryDateStringStartDate];
  if (!v38 || ([v1006 queryDateStringEndDate], v39 = objc_claimAutoreleasedReturnValue(), v40 = v39 == 0, v39, v38, v40))
  {
    v871 = NAN;
    v875 = NAN;
  }

  else
  {
    v41 = [v1006 queryDateStringStartDate];
    [v41 timeIntervalSinceReferenceDate];
    v875 = v42;

    v43 = [v1006 queryDateStringEndDate];
    [v43 timeIntervalSinceReferenceDate];
    v871 = v44;
  }

  v45 = [v1006 normalizedSearchTermsFromQU];
  if (v45)
  {
    v46 = MEMORY[0x1E695DFD8];
    v47 = [v1006 normalizedSearchTermsFromQU];
    v879 = [v46 setWithArray:v47];
  }

  else
  {
    v879 = 0;
  }

  v1090 = 0u;
  v1089 = 0u;
  v1088 = 0u;
  v1087 = 0u;
  obj = [v838 resultSet];
  v914 = [obj countByEnumeratingWithState:&v1087 objects:v1186 count:16];
  if (!v914)
  {
    v939 = 0;
    LOBYTE(matched) = 0;
    goto LABEL_379;
  }

  v939 = 0;
  v920 = 0;
  LOBYTE(matched) = 0;
  spid = *v1088;
  v803 = *MEMORY[0x1E6963AA0];
  v799 = *MEMORY[0x1E6963AA8];
  v796 = *MEMORY[0x1E6963AC0];
  do
  {
    v997 = 0;
    do
    {
      if (*v1088 != spid)
      {
        objc_enumerationMutation(obj);
      }

      v48 = *(*(&v1087 + 1) + 8 * v997);
      v49 = [v48 rankingItem];
      v50 = [v49 sectionBundleIdentifier];

      if (v50)
      {
        v51 = [v48 rankingItem];
        v988 = SSCompactRankingAttrsGetValue([v51 attributes], 7uLL);

        v52 = [v48 rankingItem];
        v971 = SSCompactRankingAttrsGetValue([v52 attributes], 0xCuLL);

        v53 = [v48 rankingItem];
        oslog = SSCompactRankingAttrsGetValue([v53 attributes], 4uLL);

        v54 = [v48 rankingItem];
        v943 = SSCompactRankingAttrsGetValue([v54 attributes], 6uLL);

        v55 = v988;
        if (!v988)
        {
          v55 = oslog;
          if (!oslog)
          {
            v55 = v943;
          }

          if (v971)
          {
            v55 = v971;
          }
        }

        v932 = v55;
        v56 = [v48 rankingItem];
        log = SSCompactRankingAttrsGetValue([v56 attributes], 0x15BuLL);

        v57 = [v48 rankingItem];
        v957 = SSCompactRankingAttrsGetValue([v57 attributes], 0xDFuLL);

        v58 = [v957 count];
        v59 = [v48 rankingItem];
        [v59 setCountRecipientByEmails:v58];

        v60 = [v48 rankingItem];
        [v60 pommesL1Score];
        v62 = v61;
        v63 = [v48 rankingItem];
        LODWORD(v64) = v62;
        [v63 setNormalizedSparseScore:v64];

        v65 = [v48 rankingItem];
        [v65 setRankedInLowerTier:0];

        v66 = [v48 rankingItem];
        [v66 embeddingSimilarity];
        v68 = v67;
        if (SSSemanticSearchMD7Enabled())
        {
          v69 = v68 * 0.738986527 + 0.195265497;
        }

        else
        {
          v69 = v68 * 0.76632779 + 0.184405762;
        }

        v70 = [v48 rankingItem];
        *&v71 = v69;
        [v70 setProjectedEmbeddingSimilarity:v71];

        [SSRankingManager searchToolExtractDocTextualFeature:v48 queryContext:v1006 title:v971 subject:oslog displayName:v988 searchTermsSet:v879];
        if (!v950)
        {
          v76 = [v48 rankingItem];
          v77 = [v76 sectionBundleIdentifier];
          matched = isQUIntentMatchBundle(v825, v77);
          goto LABEL_101;
        }

        v72 = [v1006 llmQUIntentType];
        v73 = [v48 rankingItem];
        v74 = [v73 sectionBundleIdentifier];
        v75 = v74;
        if ((v72 & 0x2075C000) != 0 && [v74 isEqualToString:@"com.apple.spotlight.events"])
        {
          matched = _os_feature_enabled_impl();
        }

        else
        {
          matched = 0;
        }

        v78 = [v1006 llmQUIntentType];
        v79 = [v48 rankingItem];
        v80 = [v79 sectionBundleIdentifier];
        v81 = v80;
        v82 = (v78 & 0x60) != 0 || (v78 & 0x207FC000) != 0;
        if ([v80 isEqualToString:@"com.apple.mobilecal"] & 1) != 0 || (objc_msgSend(v81, "isEqualToString:", @"com.apple.reminders"))
        {
          v83 = 1;
        }

        else if ([v81 isEqualToString:@"com.apple.spotlight.events"])
        {
          v83 = _os_feature_enabled_impl();
        }

        else
        {
          v83 = 0;
        }

        v84 = [v1006 inferredLlmQUIntentType];
        v85 = [v48 rankingItem];
        v86 = [v85 sectionBundleIdentifier];
        v87 = v86;
        if (v84 & 1) != 0 && ([v86 isEqualToString:@"com.apple.mobilenotes"] & 1) != 0 || (v84 & 2) != 0 && (objc_msgSend(v87, "isEqualToString:", @"com.apple.mobilemail") & 1) != 0 || (v84 & 4) != 0 && (SSSectionIsSyndicatedPhotos(v87) & 1) != 0 || (v84 & 8) != 0 && (objc_msgSend(v87, "isEqualToString:", @"com.apple.MobileSMS") & 1) != 0 || (v84 & 0x10) != 0 && (objc_msgSend(v87, "isEqualToString:", @"com.apple.mobilesafari") & 1) != 0 || (v84 & 0x20) != 0 && (objc_msgSend(v87, "isEqualToString:", @"com.apple.mobilecal") & 1) != 0 || (v84 & 0x40) != 0 && (objc_msgSend(v87, "isEqualToString:", @"com.apple.reminders") & 1) != 0 || (v84 & 0x2075C000) != 0 && objc_msgSend(v87, "isEqualToString:", @"com.apple.spotlight.events") && (_os_feature_enabled_impl() & 1) != 0 || (v84 & 0x100) != 0 && ((objc_msgSend(v87, "isEqualToString:", @"com.apple.MobileAddressBook") & 1) != 0 || (objc_msgSend(v87, "isEqualToString:", @"com.apple.spotlight.contacts")) || (v84 & 0x200) != 0 && ((objc_msgSend(v87, "isEqualToString:", @"com.apple.mobilemail") & 1) != 0 || (objc_msgSend(v87, "isEqualToString:", @"com.apple.MobileSMS")) || (v84 & 0x1000000) != 0 && (objc_msgSend(v87, "isEqualToString:", @"com.apple.VoiceMemos") & 1) != 0 || (v84 & 0x4000000) != 0 && (objc_msgSend(v87, "isEqualToString:", @"com.apple.Passbook") & 1) != 0 || (v84 & 0x8000000) != 0 && (objc_msgSend(v87, "isEqualToString:", @"com.apple.freeform") & 1) != 0 || (v84 & 0x3C00) != 0 && ((objc_msgSend(v87, "isEqualToString:", @"com.apple.DocumentsApp") & 1) != 0 || (objc_msgSend(v87, "isEqualToString:", @"com.apple.CloudDocs.MobileDocumentsFileProvider") & 1) != 0 || (objc_msgSend(v87, "isEqualToString:", @"com.apple.CloudDocs.iCloudDriveFileProvider") & 1) != 0 || (objc_msgSend(v87, "isEqualToString:", @"com.apple.CloudDocs.iCloudDriveFileProviderManaged")) || (*&v84 & 0x800000) != 0 && (objc_msgSend(v87, "isEqualToString:", @"com.apple.mobilephone"))
        {
          v920 = 1;
        }

        else if ((v84 & 0x2000000) != 0)
        {
          v920 = [v87 isEqualToString:@"com.apple.journal"];
        }

        else
        {
          v920 = 0;
        }

        v939 = v82 & v83;
        if ([v1006 latestTokenFromQU] && (objc_msgSend(v1006, "llmQUIntentType") & 0x20000) != 0)
        {
          v76 = [v48 rankingItem];
          v77 = [v76 sectionBundleIdentifier];
          if (SSSectionIsSyndicatedPhotos(v77))
          {
            v88 = 1;
          }

          else
          {
            v89 = [v48 rankingItem];
            v90 = [v89 sectionBundleIdentifier];
            v91 = [v90 isEqualToString:@"com.apple.Passbook"];

            v88 = v91 | v920;
          }

          v920 = v88;
LABEL_101:
        }

        v92 = [MEMORY[0x1E696AD98] numberWithBool:matched];
        v93 = [v48 rankingItem];
        v94 = [v93 sectionBundleIdentifier];
        [v880 setObject:v92 forKeyedSubscript:v94];

        v95 = [MEMORY[0x1E696AD98] numberWithBool:v920 & 1];
        v96 = [v48 rankingItem];
        v97 = [v96 sectionBundleIdentifier];
        [v881 setObject:v95 forKeyedSubscript:v97];

        v98 = [v48 rankingItem];
        v99 = [v98 sectionBundleIdentifier];
        if ([v99 isEqualToString:@"com.apple.spotlight.events"])
        {
LABEL_105:
        }

        else
        {
          v100 = [v48 rankingItem];
          v101 = [v100 sectionBundleIdentifier];
          if ([v101 isEqualToString:@"com.apple.mobilemail"])
          {

            goto LABEL_105;
          }

          v157 = [v48 rankingItem];
          v158 = [v157 sectionBundleIdentifier];
          v159 = [v158 isEqualToString:@"com.apple.MobileSMS"];

          if ((v159 & 1) == 0)
          {
LABEL_109:
            v107 = [v48 sectionBundleIdentifier];
            v108 = [v107 isEqualToString:@"com.apple.spotlight.events"];

            v109 = [v48 rankingItem];
            v110 = v109;
            if (v108)
            {
              [v109 setIsPromotedInstantAnswer:0];

              v111 = [v48 rankingItem];
              v112 = [v111 attributes];

              if (v112)
              {
                v113 = [v48 rankingItem];
                v114 = SSCompactRankingAttrsGetValue([v113 attributes], 0xE8uLL);

                if (([v114 isEqualToString:v803] & 1) != 0 || (objc_msgSend(v114, "isEqualToString:", v799) & 1) != 0 || objc_msgSend(v114, "isEqualToString:", v796))
                {
                  v115 = [v48 rankingItem];
                  [v115 setIsPromotedInstantAnswer:1];
                  goto LABEL_150;
                }

                goto LABEL_151;
              }
            }

            else
            {
              v116 = [v109 sectionBundleIdentifier];
              v117 = [v116 isEqualToString:@"com.apple.mobilecal"];

              if (v117)
              {
                v115 = [v48 rankingItem];
                v118 = [v115 sectionBundleIdentifier];
                v119 = [v118 isEqualToString:@"com.apple.mobilecal"];

                if (v119)
                {
                  v891 = SSCompactRankingAttrsGetValue([v115 attributes], 0xCuLL);
                  v839 = SSCompactRankingAttrsGetValue([v115 attributes], 0x14uLL);
                  v816 = SSCompactRankingAttrsGetValue([v115 attributes], 0xC5uLL);
                  v120 = &stru_1F556FE60;
                  if (v891)
                  {
                    v121 = v891;
                  }

                  else
                  {
                    v121 = &stru_1F556FE60;
                  }

                  if (v839)
                  {
                    v122 = v839;
                  }

                  else
                  {
                    v122 = &stru_1F556FE60;
                  }

                  if (v816)
                  {
                    v120 = v816;
                  }

                  v123 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@", v121, v122, v120];
                  v807 = [v123 lowercaseString];

                  v124 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
                  v125 = [v807 componentsSeparatedByCharactersInSet:v124];

                  v126 = [v125 count];
                  v127 = v126;
                  if (v126)
                  {
                    v128 = 0;
                    v129 = v126 - 2;
                    do
                    {
                      v130 = [v125 objectAtIndex:v128];
                      if ([sSetOfFlightReservationKeywords containsObject:v130])
                      {
                        [v115 setIsCalendarFlightEventType:1];
                      }

                      else if ([sSetOfHotelReservationKeywords containsObject:v130])
                      {
                        [v115 setIsCalendarHotelEventType:1];
                      }

                      else if ([sSetOfRestaurantReservationKeywords containsObject:v130])
                      {
                        [v115 setIsCalendarRestaurantEventType:1];
                      }

                      else if ([sSetOfOtherReservationKeywords containsObject:v130])
                      {
                        [v115 setIsCalendarOtherReservationEventType:1];
                      }

                      if (v128 < v129)
                      {
                        v131 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v121, v122];
                        if ([sSetOfFlightReservationKeywords containsObject:v131])
                        {
                          [v115 setIsCalendarFlightEventType:1];
                        }

                        if ([sSetOfHotelReservationKeywords containsObject:v131])
                        {
                          [v115 setIsCalendarHotelEventType:1];
                        }

                        if ([sSetOfRestaurantReservationKeywords containsObject:v131])
                        {
                          [v115 setIsCalendarRestaurantEventType:1];
                        }

                        if ([sSetOfOtherReservationKeywords containsObject:v131])
                        {
                          [v115 setIsCalendarOtherReservationEventType:1];
                        }
                      }

                      ++v128;
                    }

                    while (v127 != v128);
                  }

                  v132 = SSGeneralLog();
                  if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
                  {
                    v270 = SSRedactString(v891, 1);
                    v271 = SSRedactString(v839, 1);
                    v272 = SSRedactString(v816, 1);
                    v273 = [v115 isCalendarFlightEventType];
                    v274 = [v115 isCalendarHotelEventType];
                    v275 = [v115 isCalendarRestaurantEventType];
                    v276 = [v115 isCalendarOtherReservationEventType];
                    *buf = 138413826;
                    v1103 = v270;
                    v1104 = 2112;
                    *v1105 = v271;
                    *&v1105[8] = 2112;
                    *&v1105[10] = v272;
                    *&v1105[18] = 1024;
                    *&v1105[20] = v273;
                    *&v1105[24] = 1024;
                    *&v1105[26] = v274;
                    *&v1105[30] = 1024;
                    *&v1105[32] = v275;
                    *&v1105[36] = 1024;
                    *&v1105[38] = v276;
                    _os_log_debug_impl(&dword_1D9F69000, v132, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Doc Classification] itemTitle:%@, itemNamedLocation:%@, itemComment:%@, flight event type:%d, hotel reservation type:%d, restaurant reservation type:%d, other reservation type:%d", buf, 0x38u);
                  }
                }

                v114 = v115;
LABEL_150:

LABEL_151:
              }
            }

            v133 = [v48 rankingItem];
            v134 = SSCompactRankingAttrsGetValue([v133 attributes], 0x120uLL);
            v135 = [v48 rankingItem];
            [v135 setLinkType:v134];

            v136 = [v48 rankingItem];
            v137 = SSCompactRankingAttrsGetValue([v136 attributes], 0x121uLL);
            v138 = [v48 rankingItem];
            [v138 setLinkSubType:v137];

            v139 = [v48 rankingItem];
            v140 = SSCompactRankingAttrsGetValue([v139 attributes], 0x122uLL);
            v141 = [v48 rankingItem];
            [v141 setLinkName:v140];

            v142 = [v48 rankingItem];
            v143 = SSCompactRankingAttrsGetValue([v142 attributes], 0x65uLL);
            v144 = [v48 rankingItem];
            [v144 setUrl:v143];

            v145 = [v48 rankingItem];
            v146 = SSCompactRankingAttrsGetValue([v145 attributes], 0x145uLL);
            v147 = [v48 rankingItem];
            [v147 setUrlDescription:v146];

            v148 = [v48 rankingItem];
            v149 = SSCompactRankingAttrsGetValue([v148 attributes], 0x158uLL);
            v150 = [v48 rankingItem];
            [v150 setMessageLpTitle:v149];

            v151 = [v48 rankingItem];
            v152 = SSCompactRankingAttrsGetValue([v151 attributes], 0x159uLL);
            v153 = [v48 rankingItem];
            [v153 setMessageLpDescription:v152];

            if (([v1006 inferredLlmQUIntentType] & 0x10000000) != 0)
            {
              v154 = [v48 rankingItem];
              v155 = [v154 sectionBundleIdentifier];
              v156 = [v155 isEqualToString:@"com.apple.MobileSMS"];
              if (v156)
              {
                v882 = [v48 rankingItem];
                v886 = [v882 url];
                if (v886)
                {
                  v840 = 1;
                  goto LABEL_160;
                }

                v886 = 0;
              }

              v160 = [v48 rankingItem];
              v161 = [v160 sectionBundleIdentifier];
              v840 = [v161 isEqualToString:@"com.apple.searchd.syndicatedLinks"];

              if (v156)
              {
LABEL_160:
              }

              v162 = [v48 rankingItem];
              v892 = SSCompactRankingAttrsGetValue([v162 attributes], 1uLL);

              v163 = [v48 rankingItem];
              v164 = SSCompactRankingAttrsGetValue([v163 attributes], 0xCuLL);

              v165 = [v48 rankingItem];
              v166 = SSCompactRankingAttrsGetValue([v165 attributes], 0x110uLL);

              v167 = [v48 rankingItem];
              v168 = [v167 linkType];
              if (v168)
              {
                goto LABEL_166;
              }

              v168 = [v48 rankingItem];
              v169 = [v168 linkName];
              if (v169)
              {
                goto LABEL_165;
              }

              v170 = [v48 rankingItem];
              v171 = [v170 messageLpTitle];
              if (v171)
              {

LABEL_165:
LABEL_166:

LABEL_167:
                v172 = [v48 rankingItem];
                [v172 setIsInferredSharedLink:1];

                v173 = [v1006 parsedArgSearchTermsFromQU];
                v1086[0] = MEMORY[0x1E69E9820];
                v1086[1] = 3221225472;
                v1086[2] = __68__SSRankingManager_searchToolRanker_queryContext_searchToolBundles___block_invoke_1414;
                v1086[3] = &unk_1E8595AE0;
                v1086[4] = v48;
                v174 = [v173 indexOfObjectPassingTest:v1086] != 0x7FFFFFFFFFFFFFFFLL;
                v175 = [v48 rankingItem];
                [v175 setIsPromotedSharedLink:v174];

                v176 = [v48 rankingItem];
                [v176 topicalityScore];
                [v176 setTopicalityScore:v177 + 0.3];

                v178 = [v48 rankingItem];
                v179 = [v178 url];
                if (v179)
                {
                  v180 = [v48 rankingItem];
                  v181 = [v180 url];
                }

                else
                {
                  v181 = &stru_1F556FE60;
                }

                v182 = [v48 rankingItem];
                v183 = [v182 isPromotedSharedLink];

                if (v183)
                {
                  v184 = SSGeneralLog();
                  if (os_log_type_enabled(v184, OS_LOG_TYPE_DEBUG))
                  {
                    v185 = [v48 rankingItem];
                    v761 = [v185 linkType];
                    v775 = [v48 rankingItem];
                    v757 = [v775 linkSubType];
                    v771 = [v48 rankingItem];
                    v767 = [v771 linkName];
                    v186 = SSRedactStringClient(v767, 1, v911);
                    v765 = [v48 rankingItem];
                    v763 = [v765 sectionBundleIdentifier];
                    v817 = SSRedactStringClient(v763, 1, v911);
                    v808 = SSRedactStringClient(v181, 1, v911);
                    v759 = [v48 rankingItem];
                    v755 = [v759 urlDescription];
                    v789 = SSRedactStringClient(v755, 1, v911);
                    v187 = [v48 rankingItem];
                    v753 = [v187 messageLpTitle];
                    v784 = SSRedactStringClient(v753, 1, v911);
                    v188 = [v48 rankingItem];
                    v189 = [v188 messageLpDescription];
                    v779 = SSRedactStringClient(v189, 1, v911);
                    SSRedactStringClient(v164, 1, v911);
                    v751 = v187;
                    v191 = v190 = v185;
                    *buf = 138415106;
                    v1103 = v761;
                    v1104 = 2112;
                    *v1105 = v757;
                    *&v1105[8] = 2112;
                    *&v1105[10] = v186;
                    *&v1105[18] = 2112;
                    *&v1105[20] = v817;
                    *&v1105[28] = 2112;
                    *&v1105[30] = v808;
                    *&v1105[38] = 2112;
                    *&v1105[40] = v789;
                    *&v1105[48] = 2112;
                    *&v1105[50] = v784;
                    *&v1105[58] = 2112;
                    *&v1105[60] = v779;
                    *&v1105[68] = 1024;
                    *&v1105[70] = v840;
                    *&v1105[74] = 2112;
                    *&v1105[76] = v166;
                    *v1106 = 2112;
                    *&v1106[2] = v892;
                    *&v1106[10] = 2112;
                    *&v1106[12] = v191;
                    _os_log_debug_impl(&dword_1D9F69000, v184, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Shared Link] Promoted Shared Link match for linkType = %@, linkSubType = %@, linkName = %@, bundle = %@, url = %@, urlDescription = %@, lpTitle = %@, lpDescription = %@, messageContainsURL = %d with appEntityInstanceId = %@, id = %@ and title = %@", buf, 0x76u);
                  }

                  goto LABEL_176;
                }

                v192 = [v48 rankingItem];
                v193 = [v192 isInferredSharedLink];

                if (v193)
                {
                  v184 = SSGeneralLog();
                  if (os_log_type_enabled(v184, OS_LOG_TYPE_DEBUG))
                  {
                    v263 = [v48 rankingItem];
                    v762 = [v263 linkType];
                    v776 = [v48 rankingItem];
                    v758 = [v776 linkSubType];
                    v772 = [v48 rankingItem];
                    v768 = [v772 linkName];
                    v264 = SSRedactStringClient(v768, 1, v911);
                    v766 = [v48 rankingItem];
                    v764 = [v766 sectionBundleIdentifier];
                    v818 = SSRedactStringClient(v764, 1, v911);
                    v809 = SSRedactStringClient(v181, 1, v911);
                    v760 = [v48 rankingItem];
                    v756 = [v760 urlDescription];
                    v790 = SSRedactStringClient(v756, 1, v911);
                    v265 = [v48 rankingItem];
                    v754 = [v265 messageLpTitle];
                    v785 = SSRedactStringClient(v754, 1, v911);
                    v266 = [v48 rankingItem];
                    v267 = [v266 messageLpDescription];
                    v780 = SSRedactStringClient(v267, 1, v911);
                    SSRedactStringClient(v164, 1, v911);
                    v752 = v265;
                    v269 = v268 = v263;
                    *buf = 138415106;
                    v1103 = v762;
                    v1104 = 2112;
                    *v1105 = v758;
                    *&v1105[8] = 2112;
                    *&v1105[10] = v264;
                    *&v1105[18] = 2112;
                    *&v1105[20] = v818;
                    *&v1105[28] = 2112;
                    *&v1105[30] = v809;
                    *&v1105[38] = 2112;
                    *&v1105[40] = v790;
                    *&v1105[48] = 2112;
                    *&v1105[50] = v785;
                    *&v1105[58] = 2112;
                    *&v1105[60] = v780;
                    *&v1105[68] = 1024;
                    *&v1105[70] = v840;
                    *&v1105[74] = 2112;
                    *&v1105[76] = v166;
                    *v1106 = 2112;
                    *&v1106[2] = v892;
                    *&v1106[10] = 2112;
                    *&v1106[12] = v269;
                    _os_log_debug_impl(&dword_1D9F69000, v184, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Shared Link] Inferred Intent match for linkType = %@, linkSubType = %@, linkName = %@, bundle = %@, url = %@, urlDescription = %@, lpTitle = %@, lpDescription = %@, messageContainsURL = %d with appEntityInstanceId = %@, id = %@ and title = %@", buf, 0x76u);
                  }

LABEL_176:
                }
              }

              else
              {
                v257 = [v48 rankingItem];
                v258 = [v257 messageLpDescription];
                v259 = v258 != 0;

                if ((v259 | v840))
                {
                  goto LABEL_167;
                }
              }
            }

            v194 = [v48 rankingItem];
            v195 = SSCompactRankingAttrsGetValue([v194 attributes], 0x11DuLL);
            v196 = [v48 rankingItem];
            [v196 setPreExtractedCardType:v195];

            v197 = [v48 rankingItem];
            [v197 calculateFreshnessForSearchTool:v1006 userSpecifiedStartTime:v875 userSpecifiedEndTime:v871];

            v198 = [v48 rankingItem];
            v34 = [v198 sectionBundleIdentifier];
            LODWORD(v195) = SSSectionIsSyndicatedPhotos(v34);

            v199 = [v48 rankingItem];
            v200 = v199;
            if (v195)
            {
              [v199 l2Score];
              v202 = v201 < 70.0;

              v203 = [v48 rankingItem];
              [v203 l2Score];
              v205 = v204;
              if (v202)
              {

                v206 = [v48 rankingItem];
                [v206 setTopicalityScore:fmax(v205 / 280.0, 0.0)];
              }

              else
              {
                v226 = v204 > 100.0;

                v227 = [v48 rankingItem];
                [v227 l2Score];
                v229 = v228;

                v230 = [v48 rankingItem];
                v206 = v230;
                v231 = v229;
                if (v226)
                {
                  v232 = (v231 + -100.0) * 0.00166666666 + 1.0;
                  if (v232 > 1.1)
                  {
                    v232 = 1.1;
                  }
                }

                else
                {
                  v232 = (v231 + -70.0) * 0.025 + 0.25;
                  if (v232 > 1.0)
                  {
                    v232 = 1.0;
                  }
                }

                [v230 setTopicalityScore:v232];
              }

              goto LABEL_220;
            }

            v34 = [v199 sectionBundleIdentifier];
            v207 = [v34 isEqualToString:@"com.apple.MobileAddressBook"];

            if (v207)
            {
              goto LABEL_221;
            }

            v208 = [v48 rankingItem];
            v209 = [v208 bundleIDType];

            if ((v209 & 0x800) != 0 && v800)
            {
              v210 = [v48 rankingItem];
              [v210 pommesL1Score];
              v212 = v211;

              v213 = [v48 rankingItem];
              [v213 keywordMatchScore];
              v215 = v214 < 0.00000011921;

              v216 = v212;
              if (!v215)
              {
                v217 = [v48 rankingItem];
                [v217 keywordMatchScore];
                v216 = v218;
                if (v212 >= 0.00000011921)
                {
                  v216 = v212 * 0.4 + v218 * 0.6;
                }
              }

              if ([v1006 hasQueryTextEmbedding])
              {
                if (*&sparseScoreCap < v216)
                {
                  v216 = *&sparseScoreCap;
                }

                v219 = *&denseScoreCap;
                v220 = *&denseNormalizationMax;
                v221 = [v48 rankingItem];
                [v221 projectedEmbeddingSimilarity];
                v223 = v222;

                if (v220 >= v223)
                {
                  v224 = v223;
                }

                else
                {
                  v224 = v220;
                }

                v225 = v224 / *&denseNormalizationMax;
                if (v219 >= v225)
                {
                  v219 = v225;
                }

                v206 = [v48 rankingItem];
                [v206 setTopicalityScore:(1.0 - (((1.0 - v216) * (1.0 - v219)) / (((1.0 - v216) * 0.4) + ((1.0 - v219) * 0.6))))];
              }

              else
              {
                if (v216 <= 1.0)
                {
                  v256 = v216;
                }

                else
                {
                  v256 = 1.0;
                }

                v206 = [v48 rankingItem];
                [v206 setTopicalityScore:v256];
              }

              goto LABEL_220;
            }

            if (v797)
            {
              v233 = [v48 rankingItem];
              [v233 pommesL1Score];
              v235 = v234;
              v236 = [v48 rankingItem];
              [v236 calibratedEmbeddingSimilarity];
              v238 = ((v235 + -0.18961) / 0.39976) * 0.294047683 + ((v237 + -0.65941) / 0.14294) * 0.957514226 + -1.40211833;
              v239 = ((v238 + 6.0) / 9.0);
              if (v239 >= 0.0)
              {
                v240 = v239;
              }

              else
              {
                v240 = 0.0;
              }

              v34 = [v48 rankingItem];
              v241 = fmin(v240, 1.0);
              [v34 setTopicalityScore:v241];

              goto LABEL_279;
            }

            v242 = [v1006 hasQueryTextEmbedding];
            v243 = [v48 rankingItem];
            v244 = v243;
            if (!v242)
            {
              [v243 pommesL1Score];
              v261 = v260;

              if (v261 <= 1.0)
              {
                v262 = v261;
              }

              else
              {
                v262 = 1.0;
              }

              v233 = [v48 rankingItem];
              [v233 setTopicalityScore:v262];
              goto LABEL_279;
            }

            [v243 projectedEmbeddingSimilarity];
            v246 = v245;

            v247 = [v48 rankingItem];
            v248 = [v247 documentEmbeddingAvailable];

            if ((v248 & 1) == 0)
            {
              v249 = [v48 rankingItem];
              v250 = [v249 searchTermsMatchTitle] == 0;

              if (v250)
              {
                v253 = 0.7;
LABEL_231:
                v277 = SSGeneralLog();
                if (os_log_type_enabled(v277, OS_LOG_TYPE_DEFAULT))
                {
                  v841 = [v1006 searchString];
                  v893 = SSRedactStringClient(v841, 1, v911);
                  v819 = [v48 rankingItem];
                  v278 = [v819 sectionBundleIdentifier];
                  v279 = [v48 rankingItem];
                  v280 = [v279 identifier];
                  v281 = SSRedactStringClient(v280, 1, v911);
                  v34 = [v48 rankingItem];
                  v282 = SSCompactRankingAttrsGetValue([v34 attributes], 1uLL);
                  v283 = SSRedactStringClient(v282, 1, v911);
                  v284 = [v48 rankingItem];
                  v285 = [v284 searchTermsMatchTitle];
                  v286 = @"Unknown";
                  if (v285 <= 3)
                  {
                    v286 = off_1E8595B98[v285];
                  }

                  *buf = 138413570;
                  v1103 = v893;
                  v1104 = 2112;
                  *v1105 = v278;
                  *&v1105[8] = 2112;
                  *&v1105[10] = v281;
                  *&v1105[18] = 2112;
                  *&v1105[20] = v283;
                  *&v1105[28] = 2112;
                  *&v1105[30] = v286;
                  *&v1105[38] = 2048;
                  *&v1105[40] = v253;
                  _os_log_impl(&dword_1D9F69000, v277, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [DefaultDenseScore] query=%@ bundleId=%@ identifier=%@ MDItemIdentifier=%@ searchTermsMatchTitle=%@ assigned default dense score %f", buf, 0x3Eu);
                }

                v246 = v253;
              }

              else
              {
                v251 = [v48 rankingItem];
                v252 = [v251 searchTermsMatchTitle] == 1;

                v253 = 0.6;
                if (v252)
                {
                  goto LABEL_231;
                }

                v254 = [v48 rankingItem];
                v255 = [v254 bundleIDType];

                if ((v255 & 0x20) != 0)
                {
                  v253 = 0.45;
                  goto LABEL_231;
                }
              }
            }

            if (([v1006 llmQUIntentType] & 0x1C000) == 0)
            {
              goto LABEL_268;
            }

            v287 = [v1006 parsedArgLocationTermsFromQU];
            v288 = v287 == 0;

            if (v288)
            {
              goto LABEL_268;
            }

            v289 = [v48 rankingItem];
            v290 = [v289 matchInfo];

            if (v290)
            {
              v1085 = 0u;
              v1084 = 0u;
              v1083 = 0u;
              v1082 = 0u;
              v291 = [v48 rankingItem];
              v842 = [v291 matchInfo];

              v292 = [v842 countByEnumeratingWithState:&v1082 objects:v1185 count:16];
              if (v292)
              {
                v293 = 0;
                v894 = *v1083;
LABEL_241:
                v294 = 0;
                while (1)
                {
                  if (*v1083 != v894)
                  {
                    objc_enumerationMutation(v842);
                  }

                  if (v293)
                  {
                    break;
                  }

                  v34 = *(*(&v1082 + 1) + 8 * v294);
                  if (v34)
                  {
                    v1081 = 0u;
                    v1080 = 0u;
                    v1079 = 0u;
                    v1078 = 0u;
                    v295 = [v48 rankingItem];
                    v296 = [v295 matchInfo];
                    v34 = [v296 objectForKeyedSubscript:v34];

                    v297 = [v34 countByEnumeratingWithState:&v1078 objects:v1184 count:16];
                    if (v297)
                    {
                      v298 = *v1079;
                      while (2)
                      {
                        for (i = 0; i != v297; ++i)
                        {
                          if (*v1079 != v298)
                          {
                            objc_enumerationMutation(v34);
                          }

                          v300 = *(*(&v1078 + 1) + 8 * i);
                          v301 = [v300 original];
                          v302 = hasTrailingAsterisk(v301);

                          v303 = [v300 original];
                          if (v302)
                          {
                            v304 = [v300 original];
                            v305 = [v303 substringToIndex:{objc_msgSend(v304, "length") - 1}];

                            v303 = v305;
                          }

                          v306 = [v1006 parsedArgLocationTermsFromQU];
                          v307 = [v306 localizedCaseInsensitiveContainsString:v303];

                          if (v307)
                          {
                            v293 = 1;
                            goto LABEL_258;
                          }
                        }

                        v297 = [v34 countByEnumeratingWithState:&v1078 objects:v1184 count:16];
                        if (v297)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v293 = 0;
LABEL_258:
                  }

                  else
                  {
                    v293 = 0;
                  }

                  if (++v294 == v292)
                  {
                    v292 = [v842 countByEnumeratingWithState:&v1082 objects:v1185 count:16];
                    if (v292)
                    {
                      goto LABEL_241;
                    }

                    if ((v293 & 1) == 0)
                    {
                      goto LABEL_265;
                    }

                    goto LABEL_268;
                  }
                }

LABEL_267:

LABEL_268:
                v316 = *&sparseScoreCap;
                v317 = [v48 rankingItem];
                [v317 normalizedSparseScore];
                v319 = v318;

                if (v316 >= v319)
                {
                  v320 = v319;
                }

                else
                {
                  v320 = v316;
                }

                v321 = *&denseScoreCap;
                if (*&denseNormalizationMax >= v246)
                {
                  v322 = v246;
                }

                else
                {
                  v322 = *&denseNormalizationMax;
                }

                if (*&denseScoreCap >= (v322 / *&denseNormalizationMax))
                {
                  v321 = v322 / *&denseNormalizationMax;
                }

                v323 = 1.0 - v320;
                v324 = 1.0 - v321;
                v325 = (1.0 - v320) * (1.0 - v321);
                if (v325 == 0.0)
                {
                  v233 = [v48 rankingItem];
                  [v233 setTopicalityScore:1.0];
                }

                else
                {
                  v326 = *&sparseLikelihoodWeight;
                  v327 = *denseLikelihoodWeight;
                  v233 = [v48 rankingItem];
                  [v233 setTopicalityScore:(1.0 - (v325 / ((v323 * v327) + (v326 * v324))))];
                }

LABEL_279:

                v896 = [v48 rankingItem];
                if (!SSSectionIsWalletBoardingPass(v896))
                {
                  goto LABEL_315;
                }

                v328 = [v1006 llmQUIntentType];
                LOBYTE(v328) = (([v1006 inferredLlmQUIntentType] | v328) & 0x208000) == 0;

                if ((v328 & 1) == 0)
                {
                  v329 = [v48 rankingItem];
                  v330 = [v329 walletBoardingPassArrivalAirportCity];
                  v896 = [v330 lowercaseString];

                  v331 = [v48 rankingItem];
                  v332 = [v331 walletBoardingPassDepartureAirportCity];
                  v820 = [v332 lowercaseString];

                  v843 = [v1006 personTokensFromLLMQU];
                  if (![v843 count])
                  {

                    goto LABEL_302;
                  }

                  v810 = [v48 rankingItem];
                  v333 = [v810 walletBoardingPassPassengerName];
                  if (![v333 length])
                  {

                    goto LABEL_313;
                  }

                  v334 = [v1006 personTokensFromLLMQU];
                  v786 = [v48 rankingItem];
                  v335 = [v786 walletBoardingPassPassengerName];
                  v336 = v334;
                  v791 = v335;
                  v781 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@" /"];
                  v337 = [v791 componentsSeparatedByCharactersInSet:v781];
                  v338 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v337, "count")}];
                  v1098 = 0u;
                  v1097 = 0u;
                  v1096 = 0u;
                  v1095 = 0u;
                  v339 = v337;
                  v340 = [v339 countByEnumeratingWithState:&v1095 objects:buf count:16];
                  if (v340)
                  {
                    v341 = *v1096;
                    do
                    {
                      for (j = 0; j != v340; ++j)
                      {
                        if (*v1096 != v341)
                        {
                          objc_enumerationMutation(v339);
                        }

                        v343 = [*(*(&v1095 + 1) + 8 * j) lowercaseString];
                        [v338 addObject:v343];
                      }

                      v340 = [v339 countByEnumeratingWithState:&v1095 objects:buf count:16];
                    }

                    while (v340);
                  }

                  v1094 = 0u;
                  v1093 = 0u;
                  v1092 = 0u;
                  v1091 = 0u;
                  v344 = v336;
                  v345 = [v344 countByEnumeratingWithState:&v1091 objects:v1187 count:16];
                  if (v345)
                  {
                    v346 = *v1092;
                    while (2)
                    {
                      for (k = 0; k != v345; ++k)
                      {
                        if (*v1092 != v346)
                        {
                          objc_enumerationMutation(v344);
                        }

                        v348 = [*(*(&v1091 + 1) + 8 * k) lowercaseString];
                        v349 = [v338 containsObject:v348];

                        if (!v349)
                        {
                          v34 = 0;
                          goto LABEL_301;
                        }
                      }

                      v345 = [v344 countByEnumeratingWithState:&v1091 objects:v1187 count:16];
                      if (v345)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v34 = 1;
LABEL_301:

                  if (!v34)
                  {
                    goto LABEL_314;
                  }

LABEL_302:
                  v350 = [v1006 queryDateStringStartDate];
                  if (!v350)
                  {
                    v750 = [v1006 queryDateStringEndDate];
                    if (!v750)
                    {
                      v750 = 0;
                      goto LABEL_337;
                    }
                  }

                  v351 = [v48 rankingItem];
                  v34 = [v351 walletBoardingPassDepartureDateTime];
                  if (!v34)
                  {

                    v362 = v750;
                    if (v350)
                    {
                      v362 = v350;
                    }

                    v843 = v362;
                    goto LABEL_313;
                  }

                  v352 = [v1006 queryDateStringStartDate];
                  v353 = [v1006 queryDateStringEndDate];
                  v354 = [v48 rankingItem];
                  v355 = [v354 walletBoardingPassDepartureDateTime];
                  v356 = v352;
                  v357 = v353;
                  v358 = v355;
                  v359 = v358;
                  if (v356 && v357)
                  {
                    if ([v358 compare:v356] != -1)
                    {
                      v360 = v357;
                      v361 = 1;
                      goto LABEL_329;
                    }

LABEL_330:
                    v378 = 0;
                  }

                  else
                  {
                    if (v356)
                    {
                      v360 = v356;
                    }

                    else
                    {
                      v360 = v357;
                    }

                    if (v356)
                    {
                      v361 = -1;
                    }

                    else
                    {
                      v361 = 1;
                    }

                    if (!(v356 | v357))
                    {
                      goto LABEL_330;
                    }

LABEL_329:
                    v378 = [v359 compare:v360] != v361;
                  }

                  if (v350)
                  {

                    if (v378)
                    {
                      goto LABEL_337;
                    }

LABEL_314:

LABEL_315:
                    goto LABEL_316;
                  }

                  if (!v378)
                  {
                    goto LABEL_314;
                  }

LABEL_337:
                  v379 = [v1006 arrivalLocationFromQU];
                  if ([v379 length])
                  {
                    v380 = [v1006 departureLocationFromQU];
                    v34 = [v380 length] == 0;

                    if ((v34 & 1) == 0)
                    {
                      v843 = [v1006 arrivalLocationFromQU];
                      v381 = [v843 lowercaseString];
                      if ([v381 isEqualToString:v896])
                      {
                        v34 = [v1006 departureLocationFromQU];
                        v382 = [v34 lowercaseString];
                        v383 = [v382 isEqualToString:v820];

                        if (!v383)
                        {
                          goto LABEL_314;
                        }

                        v384 = [v48 rankingItem];
                        [v384 topicalityScore];
                        v386 = v385;

                        if (v386 + 0.150000006 <= 1.0)
                        {
                          v387 = v386 + 0.150000006;
                        }

                        else
                        {
                          v387 = 1.0;
                        }

                        v388 = [v48 rankingItem];
                        [v388 setTopicalityScore:v387];

                        v843 = SSGeneralLog();
                        if (os_log_type_enabled(v843, OS_LOG_TYPE_DEFAULT))
                        {
                          v777 = [v1006 searchString];
                          v782 = SSRedactStringClient(v777, 1, v911);
                          v787 = SSRedactStringClient(v932, 1, v911);
                          v773 = [v48 rankingItem];
                          v769 = [v773 identifier];
                          v792 = SSRedactStringClient(v769, 1, v911);
                          v389 = [v1006 arrivalLocationFromQU];
                          v811 = SSRedactStringClient(v389, 1, v911);
                          v390 = [v48 rankingItem];
                          v391 = [v390 walletBoardingPassArrivalAirportCity];
                          v392 = SSRedactStringClient(v391, 1, v911);
                          v393 = [v1006 departureLocationFromQU];
                          v34 = SSRedactStringClient(v393, 1, v911);
                          v394 = [v48 rankingItem];
                          v395 = [v394 walletBoardingPassDepartureAirportCity];
                          v396 = SSRedactStringClient(v395, 1, v911);
                          *buf = 138413826;
                          v1103 = v782;
                          v1104 = 2112;
                          *v1105 = v787;
                          *&v1105[8] = 2112;
                          *&v1105[10] = v792;
                          *&v1105[18] = 2112;
                          *&v1105[20] = v811;
                          *&v1105[28] = 2112;
                          *&v1105[30] = v392;
                          *&v1105[38] = 2112;
                          *&v1105[40] = v34;
                          *&v1105[48] = 2112;
                          *&v1105[50] = v396;
                          _os_log_impl(&dword_1D9F69000, v843, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Wallet] [Boosting] query=%@ Result=[%@] identifier=[%@] was soft boosted due to exact matches arrivalLocationFromQU=%@ walletBoardingPassArrivalAirportCity=%@ and departureLocationFromQU=%@ walletBoardingPassDepartureAirportCity=%@", buf, 0x48u);
                        }
                      }

                      else
                      {
                      }

                      goto LABEL_313;
                    }
                  }

                  else
                  {
                  }

                  v397 = [v1006 arrivalLocationFromQU];
                  if ([v397 length])
                  {
                    v398 = [v1006 arrivalLocationFromQU];
                    v399 = [v398 lowercaseString];
                    v34 = [v399 isEqualToString:v896];

                    if (v34)
                    {
                      v400 = [v48 rankingItem];
                      [v400 topicalityScore];
                      v402 = v401;

                      if (v402 + 0.150000006 <= 1.0)
                      {
                        v403 = v402 + 0.150000006;
                      }

                      else
                      {
                        v403 = 1.0;
                      }

                      v404 = [v48 rankingItem];
                      [v404 setTopicalityScore:v403];

                      v843 = SSGeneralLog();
                      if (os_log_type_enabled(v843, OS_LOG_TYPE_DEFAULT))
                      {
                        v793 = [v1006 searchString];
                        v812 = SSRedactStringClient(v793, 1, v911);
                        v34 = SSRedactStringClient(v932, 1, v911);
                        v405 = [v48 rankingItem];
                        v406 = [v405 identifier];
                        v407 = SSRedactStringClient(v406, 1, v911);
                        v408 = [v1006 arrivalLocationFromQU];
                        v409 = SSRedactStringClient(v408, 1, v911);
                        v410 = [v48 rankingItem];
                        v411 = [v410 walletBoardingPassArrivalAirportCity];
                        v412 = SSRedactStringClient(v411, 1, v911);
                        *buf = 138413314;
                        v1103 = v812;
                        v1104 = 2112;
                        *v1105 = v34;
                        *&v1105[8] = 2112;
                        *&v1105[10] = v407;
                        *&v1105[18] = 2112;
                        *&v1105[20] = v409;
                        *&v1105[28] = 2112;
                        *&v1105[30] = v412;
                        _os_log_impl(&dword_1D9F69000, v843, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Wallet] [Boosting] query=%@ Result=[%@] identifier=[%@] was soft boosted due to exact match arrivalLocationFromQU=%@ walletBoardingPassArrivalAirportCity=%@", buf, 0x34u);
                      }

                      goto LABEL_313;
                    }
                  }

                  else
                  {
                  }

                  v413 = [v1006 departureLocationFromQU];
                  if ([v413 length])
                  {
                    v414 = [v1006 departureLocationFromQU];
                    v415 = [v414 lowercaseString];
                    v34 = [v415 isEqualToString:v820];

                    if (v34)
                    {
                      v416 = [v48 rankingItem];
                      [v416 topicalityScore];
                      v418 = v417;

                      if (v418 + 0.150000006 <= 1.0)
                      {
                        v419 = v418 + 0.150000006;
                      }

                      else
                      {
                        v419 = 1.0;
                      }

                      v420 = [v48 rankingItem];
                      [v420 setTopicalityScore:v419];

                      v843 = SSGeneralLog();
                      if (os_log_type_enabled(v843, OS_LOG_TYPE_DEFAULT))
                      {
                        v794 = [v1006 searchString];
                        v813 = SSRedactStringClient(v794, 1, v911);
                        v34 = SSRedactStringClient(v932, 1, v911);
                        v421 = [v48 rankingItem];
                        v422 = [v421 identifier];
                        v423 = SSRedactStringClient(v422, 1, v911);
                        v424 = [v1006 departureLocationFromQU];
                        v425 = SSRedactStringClient(v424, 1, v911);
                        v426 = [v48 rankingItem];
                        v427 = [v426 walletBoardingPassDepartureAirportCity];
                        v428 = SSRedactStringClient(v427, 1, v911);
                        *buf = 138413314;
                        v1103 = v813;
                        v1104 = 2112;
                        *v1105 = v34;
                        *&v1105[8] = 2112;
                        *&v1105[10] = v423;
                        *&v1105[18] = 2112;
                        *&v1105[20] = v425;
                        *&v1105[28] = 2112;
                        *&v1105[30] = v428;
                        _os_log_impl(&dword_1D9F69000, v843, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Wallet] [Boosting] query=%@ Result=[%@] identifier=[%@] was soft boosted due to exact match departureLocationFromQU=%@ walletBoardingPassDepartureAirportCity=%@", buf, 0x34u);
                      }

                      goto LABEL_313;
                    }
                  }

                  else
                  {
                  }

                  v843 = [v1006 locationFromQU];
                  if ([v843 length])
                  {
                    v429 = [v1006 locationFromQU];
                    v430 = [v429 lowercaseString];
                    if ([v430 isEqualToString:v896])
                    {
                    }

                    else
                    {
                      v431 = [v1006 locationFromQU];
                      v432 = [v431 lowercaseString];
                      v34 = [v432 isEqualToString:v820];

                      if (!v34)
                      {
                        goto LABEL_314;
                      }
                    }

                    v433 = [v48 rankingItem];
                    [v433 topicalityScore];
                    v435 = v434;

                    if (v435 + 0.150000006 <= 1.0)
                    {
                      v436 = v435 + 0.150000006;
                    }

                    else
                    {
                      v436 = 1.0;
                    }

                    v437 = [v48 rankingItem];
                    [v437 setTopicalityScore:v436];

                    v843 = SSGeneralLog();
                    if (os_log_type_enabled(v843, OS_LOG_TYPE_DEFAULT))
                    {
                      v778 = [v1006 searchString];
                      v783 = SSRedactStringClient(v778, 1, v911);
                      v788 = SSRedactStringClient(v932, 1, v911);
                      v774 = [v48 rankingItem];
                      v770 = [v774 identifier];
                      v795 = SSRedactStringClient(v770, 1, v911);
                      v438 = [v1006 locationFromQU];
                      v814 = SSRedactStringClient(v438, 1, v911);
                      v439 = [v48 rankingItem];
                      v440 = [v439 walletBoardingPassArrivalAirportCity];
                      v441 = SSRedactStringClient(v440, 1, v911);
                      v442 = [v1006 locationFromQU];
                      v34 = SSRedactStringClient(v442, 1, v911);
                      v443 = [v48 rankingItem];
                      v444 = [v443 walletBoardingPassDepartureAirportCity];
                      v445 = SSRedactStringClient(v444, 1, v911);
                      *buf = 138413826;
                      v1103 = v783;
                      v1104 = 2112;
                      *v1105 = v788;
                      *&v1105[8] = 2112;
                      *&v1105[10] = v795;
                      *&v1105[18] = 2112;
                      *&v1105[20] = v814;
                      *&v1105[28] = 2112;
                      *&v1105[30] = v441;
                      *&v1105[38] = 2112;
                      *&v1105[40] = v34;
                      *&v1105[48] = 2112;
                      *&v1105[50] = v445;
                      _os_log_impl(&dword_1D9F69000, v843, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Wallet] [Boosting] query=%@ Result=[%@] identifier=[%@] was soft boosted due to exact match between locationFromQU=%@ walletBoardingPassArrivalAirportCity=%@ or locationFromQU=%@ walletBoardingPassDepartureAirportCity=%@", buf, 0x48u);
                    }
                  }

LABEL_313:

                  goto LABEL_314;
                }

LABEL_316:
                if (v798 && ([v1006 llmQUIntentType] & 0x20000) == 0)
                {
                  v206 = [v48 rankingItem];
                  if (![v206 detectedEventType])
                  {
                    goto LABEL_220;
                  }

                  v363 = [v48 rankingItem];
                  v364 = [v363 detectedEventType];
                  v34 = ([v1006 llmQUIntentType] & v364) == 0;

                  if (v34)
                  {
                    v365 = [v48 rankingItem];
                    [v365 topicalityScore];
                    v367 = v366;
                    v368 = *&inferredAppEntityMatchBoosting;

                    v369 = [v48 rankingItem];
                    [v369 setTopicalityScore:{fmax(v367 - v368, 0.0)}];

                    v206 = SSGeneralLog();
                    if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
                    {
                      v897 = [v1006 searchString];
                      v370 = SSRedactStringClient(v897, 1, v911);
                      v371 = SSRedactStringClient(v932, 1, v911);
                      v372 = [v48 rankingItem];
                      v373 = [v372 identifier];
                      v374 = SSRedactStringClient(v373, 1, v911);
                      v375 = +[SPSearchQueryContext llmQUIntentString:](SPSearchQueryContext, "llmQUIntentString:", [v1006 llmQUIntentType]);
                      v34 = SPSearchQueryContext;
                      v376 = [v48 rankingItem];
                      v377 = +[SPSearchQueryContext llmQUIntentString:](SPSearchQueryContext, "llmQUIntentString:", [v376 detectedEventType]);
                      *buf = 138413314;
                      v1103 = v370;
                      v1104 = 2112;
                      *v1105 = v371;
                      *&v1105[8] = 2112;
                      *&v1105[10] = v374;
                      *&v1105[18] = 2112;
                      *&v1105[20] = v375;
                      *&v1105[28] = 2112;
                      *&v1105[30] = v377;
                      _os_log_impl(&dword_1D9F69000, v206, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Demotion] query=%@ Result=[%@] identifier=[%@] was soft demoted due to un-matched event type quEventType=%@ resultEventType=%@", buf, 0x34u);
                    }

LABEL_220:
                  }
                }

LABEL_221:

                goto LABEL_222;
              }
            }

LABEL_265:
            v842 = SSGeneralLog();
            v246 = 0.0;
            if (os_log_type_enabled(v842, OS_LOG_TYPE_DEFAULT))
            {
              v895 = [v1006 searchString];
              v308 = SSRedactStringClient(v895, 1, v911);
              v309 = [v48 rankingItem];
              v310 = [v309 sectionBundleIdentifier];
              v311 = [v48 rankingItem];
              v312 = [v311 identifier];
              v313 = SSRedactStringClient(v312, 1, v911);
              v34 = [v48 rankingItem];
              v314 = SSCompactRankingAttrsGetValue([v34 attributes], 1uLL);
              v315 = SSRedactStringClient(v314, 1, v911);
              *buf = 138413058;
              v1103 = v308;
              v1104 = 2112;
              *v1105 = v310;
              *&v1105[8] = 2112;
              *&v1105[10] = v313;
              *&v1105[18] = 2112;
              *&v1105[20] = v315;
              _os_log_impl(&dword_1D9F69000, v842, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ bundleId=%@ identifier=%@ MDItemIdentifier=%@ assigned 0 dense score due to location mismatch", buf, 0x2Au);
            }

            goto LABEL_267;
          }
        }

        v102 = [v48 rankingItem];
        v103 = SSCompactRankingAttrsGetValue([v102 attributes], 0x11uLL);

        if (v103)
        {
          [v103 timeIntervalSinceReferenceDate];
          v105 = v104;
          v106 = [v48 rankingItem];
          [v106 setStartDueDateToNowInSeconds:(v105 - *&v829)];
        }

        goto LABEL_109;
      }

LABEL_222:
      v997 = v997 + 1;
    }

    while (v997 != v914);
    v446 = [obj countByEnumeratingWithState:&v1087 objects:v1186 count:16];
    v914 = v446;
  }

  while (v446);
LABEL_379:

  v1077 = 0u;
  v1076 = 0u;
  v1075 = 0u;
  v1074 = 0u;
  v447 = [v838 resultSet];
  v448 = [v447 countByEnumeratingWithState:&v1074 objects:v1183 count:16];
  if (v448)
  {
    v449 = *v1075;
    do
    {
      for (m = 0; m != v448; ++m)
      {
        if (*v1075 != v449)
        {
          objc_enumerationMutation(v447);
        }

        v34 = *(*(&v1074 + 1) + 8 * m);
        v451 = [v34 rankingItem];
        v452 = [v451 sectionBundleIdentifier];
        v453 = [v452 isEqualToString:@"com.apple.MobileAddressBook"];

        v454 = [v34 rankingItem];
        v455 = v454;
        if (v453)
        {
          [v454 engagementScore];
          v457 = v456;
          v458 = [v34 rankingItem];
          [v458 freshnessScore];
          v460 = v459;
          v461 = [v34 rankingItem];
          [v461 topicalityScore];
          v463 = v462;
          v464 = [v34 rankingItem];
          [v464 setLikelihood:v460 * 0.8 * v463 + v457 * 0.2];
        }

        else
        {
          [v454 topicalityScore];
          v466 = v465;
          v458 = [v34 rankingItem];
          [v458 setLikelihood:v466];
        }

        if (![SSRankingManager searchToolShouldFilterResultBeforeRanking:v34 queryContext:v1006 matchQUIntent:matched & 1 intentAndResultWithStartDueDate:v939 & 1 searchToolBundles:v913 useLLMQU:v950])
        {
          [v856 addObject:v34];
          v467 = [v34 rankingItem];
          [v467 topicalityScore];

          v468 = [v34 rankingItem];
          v469 = [v468 sectionBundleIdentifier];
          v470 = [v912 objectForKeyedSubscript:v469];

          v471 = MEMORY[0x1E696AD98];
          if (v470)
          {
            [v470 floatValue];
            v473 = v472;
            v474 = [v34 rankingItem];
            [v474 topicalityScore];
            v476 = v475;

            v477 = v473;
            if (v476 > v473)
            {
              v477 = v476;
            }

            v478 = [v471 numberWithDouble:v477];
            v479 = [v34 rankingItem];
            v34 = [v479 sectionBundleIdentifier];
            [v912 setObject:v478 forKeyedSubscript:v34];
          }

          else
          {
            v478 = [v34 rankingItem];
            [v478 topicalityScore];
            v479 = [v471 numberWithDouble:?];
            v34 = [v34 rankingItem];
            v480 = [v34 sectionBundleIdentifier];
            [v912 setObject:v479 forKeyedSubscript:v480];
          }
        }
      }

      v448 = [v447 countByEnumeratingWithState:&v1074 objects:v1183 count:16];
    }

    while (v448);
  }

  if (SSEnableSearchToolL2Ranking())
  {
    v481 = SSSearchToolRankingLog();
    v482 = os_signpost_id_generate(v481);
    v483 = v481;
    v484 = v483;
    v921 = v482 - 1;
    loga = v483;
    if (v482 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v485 = os_signpost_enabled(v483);
      v484 = loga;
      if (v485)
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1D9F69000, loga, OS_SIGNPOST_INTERVAL_BEGIN, v482, "SearchToolL2Ranking", "Begin", buf, 2u);
        v484 = loga;
      }
    }

    spida = v482;

    v940 = +[SSRankingManager getSearchToolL2ModelManager];
    if (v940 && ([v940 loaded] & 1) != 0)
    {
      v859 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v856, "count")}];
      v1073 = 0u;
      v1072 = 0u;
      v1071 = 0u;
      v1070 = 0u;
      v944 = v856;
      v868 = [v944 countByEnumeratingWithState:&v1070 objects:v1182 count:16];
      if (v868)
      {
        obja = *v1071;
        do
        {
          for (n = 0; n != v868; ++n)
          {
            if (*v1071 != obja)
            {
              objc_enumerationMutation(v944);
            }

            v933 = [*(*(&v1070 + 1) + 8 * n) rankingItem];
            LODWORD(v486) = -1.0;
            [v933 setSearchToolL2Score:v486];
            v980 = [MEMORY[0x1E695DF90] dictionary];
            v487 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v933, "bundleIDType")}];
            [v980 setObject:v487 forKeyedSubscript:@"bundleIDType"];

            v488 = MEMORY[0x1E696AD98];
            [v933 pommesL1Score];
            v489 = [v488 numberWithFloat:?];
            [v980 setObject:v489 forKeyedSubscript:@"sparseL1"];

            v490 = MEMORY[0x1E696AD98];
            [v933 embeddingSimilarity];
            v491 = [v490 numberWithFloat:?];
            [v980 setObject:v491 forKeyedSubscript:@"denseL1"];

            v492 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v933, "isMailCategoryHighImpact")}];
            [v980 setObject:v492 forKeyedSubscript:@"isMailCategoryHighImpact"];

            v493 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v933, "isMailCategoryPromotions")}];
            [v980 setObject:v493 forKeyedSubscript:@"isMailCategoryHighImpact"];

            v494 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v933, "documentEmbeddingAvailable")}];
            [v980 setObject:v494 forKeyedSubscript:@"documentEmbeddingAvailable"];

            v495 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v1006, "hasQueryTextEmbedding")}];
            [v980 setObject:v495 forKeyedSubscript:@"has_query_text_embedding"];

            v496 = MEMORY[0x1E696AD98];
            [v933 l2Score];
            v497 = [v496 numberWithFloat:?];
            [v980 setObject:v497 forKeyedSubscript:@"pommesL2Score"];

            v498 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v989 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v1069 = 0u;
            v1068 = 0u;
            v1067 = 0u;
            v1066 = 0u;
            v902 = [v933 matchInfo];
            v898 = [v902 countByEnumeratingWithState:&v1066 objects:v1181 count:16];
            if (v898)
            {
              v862 = *v1067;
              do
              {
                for (ii = 0; ii != v898; ii = ii + 1)
                {
                  if (*v1067 != v862)
                  {
                    objc_enumerationMutation(v902);
                  }

                  v998 = *(*(&v1066 + 1) + 8 * ii);
                  if (v998)
                  {
                    v846 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    v1065 = 0u;
                    v1064 = 0u;
                    v1063 = 0u;
                    v1062 = 0u;
                    v499 = [v933 matchInfo];
                    v887 = [v499 objectForKeyedSubscript:v998];

                    v872 = [v887 countByEnumeratingWithState:&v1062 objects:v1180 count:16];
                    if (v872)
                    {
                      v853 = *v1063;
                      do
                      {
                        for (jj = 0; jj != v872; ++jj)
                        {
                          if (*v1063 != v853)
                          {
                            objc_enumerationMutation(v887);
                          }

                          v876 = [*(*(&v1062 + 1) + 8 * jj) original];
                          v500 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
                          v34 = [v876 componentsSeparatedByCharactersInSet:v500];

                          v1061 = 0u;
                          v1060 = 0u;
                          v1059 = 0u;
                          v1058 = 0u;
                          v951 = v34;
                          osloga = [v951 countByEnumeratingWithState:&v1058 objects:v1179 count:16];
                          if (osloga)
                          {
                            v958 = *v1059;
                            do
                            {
                              v501 = 0;
                              do
                              {
                                if (*v1059 != v958)
                                {
                                  v502 = v501;
                                  objc_enumerationMutation(v951);
                                  v501 = v502;
                                }

                                v972 = v501;
                                v503 = [*(*(&v1058 + 1) + 8 * v501) lowercaseString];
                                v1057 = 0u;
                                v1056 = 0u;
                                v1055 = 0u;
                                v1054 = 0u;
                                v504 = [v1006 detailedLLMQUTokens];
                                v505 = [v504 countByEnumeratingWithState:&v1054 objects:v1178 count:16];
                                if (v505)
                                {
                                  v506 = *v1055;
                                  do
                                  {
                                    for (kk = 0; kk != v505; ++kk)
                                    {
                                      if (*v1055 != v506)
                                      {
                                        objc_enumerationMutation(v504);
                                      }

                                      v508 = *(*(&v1054 + 1) + 8 * kk);
                                      v509 = [v998 stringByAppendingString:@" "];
                                      v510 = [v509 stringByAppendingString:v508];

                                      v34 = [v1006 detailedLLMQUTokens];
                                      v511 = [v34 objectForKeyedSubscript:v508];

                                      if ([v511 containsObject:v503])
                                      {
                                        v512 = [v498 objectForKeyedSubscript:v510];
                                        v513 = v512 == 0;

                                        if (v513)
                                        {
                                          [v498 setObject:&unk_1F55B6CA8 forKeyedSubscript:v510];
                                          v34 = MEMORY[0x1E696AD98];
                                          v515 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v511, "count")}];
                                          [v989 setObject:v515 forKeyedSubscript:v510];
                                        }

                                        else
                                        {
                                          v514 = MEMORY[0x1E696AD98];
                                          v515 = [v498 objectForKeyedSubscript:v510];
                                          [v515 doubleValue];
                                          v34 = [v514 numberWithDouble:v516 + 1.0];
                                          [v498 setObject:v34 forKeyedSubscript:v510];
                                        }
                                      }
                                    }

                                    v505 = [v504 countByEnumeratingWithState:&v1054 objects:v1178 count:16];
                                  }

                                  while (v505);
                                }

                                v501 = v972 + 1;
                              }

                              while (v972 + 1 != osloga);
                              osloga = [v951 countByEnumeratingWithState:&v1058 objects:v1179 count:16];
                            }

                            while (osloga);
                          }
                        }

                        v872 = [v887 countByEnumeratingWithState:&v1062 objects:v1180 count:16];
                      }

                      while (v872);
                    }
                  }
                }

                v898 = [v902 countByEnumeratingWithState:&v1066 objects:v1181 count:16];
              }

              while (v898);
            }

            v1053 = 0u;
            v1052 = 0u;
            v1051 = 0u;
            v1050 = 0u;
            v517 = v498;
            v518 = [v517 countByEnumeratingWithState:&v1050 objects:v1177 count:16];
            if (v518)
            {
              v519 = *v1051;
              do
              {
                for (mm = 0; mm != v518; ++mm)
                {
                  if (*v1051 != v519)
                  {
                    objc_enumerationMutation(v517);
                  }

                  v521 = *(*(&v1050 + 1) + 8 * mm);
                  v522 = MEMORY[0x1E696AD98];
                  v523 = [v517 objectForKeyedSubscript:v521];
                  [v523 doubleValue];
                  v525 = v524;
                  v526 = [v989 objectForKeyedSubscript:v521];
                  [v526 doubleValue];
                  v34 = [v522 numberWithDouble:v525 / v527];
                  [v980 setObject:v34 forKeyedSubscript:v521];
                }

                v518 = [v517 countByEnumeratingWithState:&v1050 objects:v1177 count:16];
              }

              while (v518);
            }

            v1049 = 0u;
            v1048 = 0u;
            v1047 = 0u;
            v1046 = 0u;
            v528 = [v1006 detailedLLMQUTokens];
            v529 = [v528 countByEnumeratingWithState:&v1046 objects:v1176 count:16];
            if (v529)
            {
              v530 = *v1047;
              do
              {
                for (nn = 0; nn != v529; ++nn)
                {
                  if (*v1047 != v530)
                  {
                    objc_enumerationMutation(v528);
                  }

                  v532 = *(*(&v1046 + 1) + 8 * nn);
                  v533 = [v1006 detailedLLMQUTokens];
                  v534 = [v533 objectForKeyedSubscript:v532];

                  v535 = [v532 stringByAppendingString:@" LEN"];
                  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v534, "count")}];
                  [v980 setObject:v34 forKeyedSubscript:v535];
                }

                v529 = [v528 countByEnumeratingWithState:&v1046 objects:v1176 count:16];
              }

              while (v529);
            }

            [v859 addObject:v980];
          }

          v868 = [v944 countByEnumeratingWithState:&v1070 objects:v1182 count:16];
        }

        while (v868);
      }

      v536 = [v940 predict:v859];
      for (i1 = 0; i1 < [v944 count]; ++i1)
      {
        v538 = [v536 objectAtIndexedSubscript:i1];
        [v538 floatValue];
        v540 = v539;
        v34 = [v944 objectAtIndexedSubscript:i1];
        v541 = [v34 rankingItem];
        LODWORD(v542) = v540;
        [v541 setSearchToolL2Score:v542];
      }

      v544 = v921;
      v543 = v859;
    }

    else
    {
      v543 = SSGeneralLog();
      if (os_log_type_enabled(v543, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D9F69000, v543, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [L2] L2 models not loaded!", buf, 2u);
      }

      v544 = v482 - 1;
    }

    v545 = v544 < 0xFFFFFFFFFFFFFFFELL;

    v546 = loga;
    v547 = v546;
    if (v545 && os_signpost_enabled(v546))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D9F69000, v547, OS_SIGNPOST_INTERVAL_END, spida, "SearchToolL2Ranking", "End", buf, 2u);
    }
  }

  [SSRankingManager calculateLikelihoodForSearchTool:v856 queryContext:v1006 isQUInferredIntent:v881 isEventSearchIntent:v798];
  LOBYTE(v747) = 0;
  [SSRankingManager searchToolSortResults:v856 isQUIntent:v880 isQUInferredIntent:v881 queryContext:v1006 searchToolBundles:v913 eventSearchIntent:v798 maxTopicalityPerBundle:v912 preExtractionBoost:v747];
  v548 = [v856 count];
  v549 = (v548 - 1);
  if (v548 >= 1)
  {
    do
    {
      v550 = [v856 objectAtIndexedSubscript:v549];
      v551 = [v1006 llmQUIntentType] & 0x1C000;
      if (!v551)
      {
        if (!v798)
        {
          goto LABEL_480;
        }

        v34 = [v1006 parsedArgSearchTermsFromQU];
        if (![v34 count])
        {

          goto LABEL_480;
        }
      }

      v552 = [v550 rankingItem];
      if (([v552 bundleIDType] & 0x20) != 0 && (objc_msgSend(v1006, "inferredLlmQUIntentType") & 0x20) == 0)
      {
        v554 = [v550 rankingItem];
        [v554 normalizedSparseScore];
        v553 = v555 > 1.0;
      }

      else
      {
        v553 = 0;
      }

      if (v551)
      {
        if (v553)
        {
          goto LABEL_483;
        }
      }

      else
      {

        if (v553)
        {
          do
          {
LABEL_483:
            v556 = [v856 objectAtIndexedSubscript:v549];

            v550 = v556;
            v557 = [v556 rankingItem];
            v558 = [v557 bundleIDType];

            if ((v558 & 0x20) != 0)
            {
              v559 = [v550 rankingItem];
              [v559 likelihood];
              [v559 setLikelihood:v560 + *&inferredAppEntityMatchBoosting];

              v561 = SSGeneralLog();
              if (os_log_type_enabled(v561, OS_LOG_TYPE_DEFAULT))
              {
                v990 = [v1006 searchString];
                v999 = SSRedactStringClient(v990, 1, v911);
                v981 = [v550 rankingItem];
                v562 = SSCompactRankingAttrsGetValue([v981 attributes], 0xCuLL);
                v563 = SSRedactStringClient(v562, 1, v911);
                v564 = [v550 rankingItem];
                v565 = [v564 identifier];
                v566 = SSRedactStringClient(v565, 1, v911);
                v567 = +[SPSearchQueryContext llmQUIntentString:](SPSearchQueryContext, "llmQUIntentString:", [v1006 llmQUIntentType]);
                *buf = 138413058;
                v1103 = v999;
                v1104 = 2112;
                *v1105 = v563;
                *&v1105[8] = 2112;
                *&v1105[10] = v566;
                *&v1105[18] = 2112;
                *&v1105[20] = v567;
                _os_log_impl(&dword_1D9F69000, v561, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Boosting] query=%@ Result=[%@] identifier=[%@] was soft boosted on likelihood for quEventType=%@ with perfect sparse score calendar", buf, 0x2Au);
              }
            }

            --v549;
            --v548;
          }

          while (v548 > 0);

          break;
        }
      }

LABEL_480:

      --v548;
      --v549;
    }

    while (v548 + 1 > 1);
  }

  LOBYTE(v748) = 0;
  [SSRankingManager searchToolSortResults:v856 isQUIntent:v880 isQUInferredIntent:v881 queryContext:v1006 searchToolBundles:v913 eventSearchIntent:v798 maxTopicalityPerBundle:v912 preExtractionBoost:v748];
  [SSRankingManager searchToolDeduplicateResults:v856];
  v1045 = 0u;
  v1044 = 0u;
  v1043 = 0u;
  v1042 = 0u;
  v941 = v856;
  v568 = [v941 countByEnumeratingWithState:&v1042 objects:v1175 count:16];
  if (v568)
  {
    v569 = *v1043;
    do
    {
      for (i2 = 0; i2 != v568; ++i2)
      {
        if (*v1043 != v569)
        {
          objc_enumerationMutation(v941);
        }

        [SSSnippetUtilities createFormattedSnippetForResult:*(*(&v1042 + 1) + 8 * i2) withContext:v1006];
      }

      v568 = [v941 countByEnumeratingWithState:&v1042 objects:v1175 count:16];
    }

    while (v568);
  }

  if (v911 && SSEnableSearchToolDebugMode())
  {
    v1041 = 0u;
    v1040 = 0u;
    v1039 = 0u;
    v1038 = 0u;
    v945 = v941;
    v952 = [v945 countByEnumeratingWithState:&v1038 objects:v1174 count:16];
    if (v952)
    {
      v934 = *v1039;
      v982 = 1;
      do
      {
        for (i3 = 0; i3 != v952; i3 = i3 + 1)
        {
          if (*v1039 != v934)
          {
            objc_enumerationMutation(v945);
          }

          v1000 = [*(*(&v1038 + 1) + 8 * i3) rankingItem];
          v973 = SSCompactRankingAttrsGetValue([v1000 attributes], 1uLL);
          v571 = [v1000 matchInfo];

          if (v571)
          {
            v1037 = 0u;
            v1036 = 0u;
            v1035 = 0u;
            v1034 = 0u;
            v991 = [v1000 matchInfo];
            v572 = [v991 countByEnumeratingWithState:&v1034 objects:v1173 count:16];
            if (v572)
            {
              v573 = *v1035;
              do
              {
                for (i4 = 0; i4 != v572; ++i4)
                {
                  if (*v1035 != v573)
                  {
                    objc_enumerationMutation(v991);
                  }

                  v575 = *(*(&v1034 + 1) + 8 * i4);
                  if (v575)
                  {
                    v576 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    v1033 = 0u;
                    v1032 = 0u;
                    v1031 = 0u;
                    v1030 = 0u;
                    v577 = [v1000 matchInfo];
                    v578 = [v577 objectForKeyedSubscript:v575];

                    v579 = [v578 countByEnumeratingWithState:&v1030 objects:v1172 count:16];
                    if (v579)
                    {
                      v580 = *v1031;
                      do
                      {
                        for (i5 = 0; i5 != v579; ++i5)
                        {
                          if (*v1031 != v580)
                          {
                            objc_enumerationMutation(v578);
                          }

                          v582 = [*(*(&v1030 + 1) + 8 * i5) original];
                          [v576 addObject:v582];
                        }

                        v579 = [v578 countByEnumeratingWithState:&v1030 objects:v1172 count:16];
                      }

                      while (v579);
                    }

                    v583 = SSGeneralLog();
                    if (os_log_type_enabled(v583, OS_LOG_TYPE_DEBUG))
                    {
                      v584 = [v1006 searchString];
                      v585 = [v1000 sectionBundleIdentifier];
                      v586 = [v1000 identifier];
                      *buf = 138413826;
                      v1103 = v584;
                      v1104 = 1024;
                      *v1105 = v982;
                      *&v1105[4] = 2112;
                      *&v1105[6] = v585;
                      *&v1105[14] = 2112;
                      *&v1105[16] = v586;
                      *&v1105[24] = 2112;
                      *&v1105[26] = v973;
                      *&v1105[34] = 2112;
                      *&v1105[36] = v575;
                      *&v1105[44] = 2112;
                      *&v1105[46] = v576;
                      _os_log_debug_impl(&dword_1D9F69000, v583, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [MatchInfo] query=%@ ranked result %i: bundleId=%@ identifier=%@ MDItemIdentifier=%@, attribute_key=%@, match_value=%@", buf, 0x44u);
                    }
                  }
                }

                v572 = [v991 countByEnumeratingWithState:&v1034 objects:v1173 count:16];
              }

              while (v572);
            }
          }

          else
          {
            v991 = SSGeneralLog();
            if (os_log_type_enabled(v991, OS_LOG_TYPE_DEBUG))
            {
              v587 = [v1006 searchString];
              v588 = [v1000 sectionBundleIdentifier];
              v589 = [v1000 identifier];
              *buf = 138413314;
              v1103 = v587;
              v1104 = 1024;
              *v1105 = v982;
              *&v1105[4] = 2112;
              *&v1105[6] = v588;
              *&v1105[14] = 2112;
              *&v1105[16] = v589;
              *&v1105[24] = 2112;
              *&v1105[26] = v973;
              _os_log_debug_impl(&dword_1D9F69000, v991, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [MatchInfo] query=%@ ranked result %i: bundleId=%@ identifier=%@ MDItemIdentifier=%@, NO MATCH_INFO", buf, 0x30u);
            }
          }

          ++v982;
        }

        v952 = [v945 countByEnumeratingWithState:&v1038 objects:v1174 count:16];
      }

      while (v952);
    }

    v590 = SSGeneralLog();
    if (os_log_type_enabled(v590, OS_LOG_TYPE_DEFAULT))
    {
      v591 = [v1006 searchString];
      v592 = [v945 count];
      *buf = 138412546;
      v1103 = v591;
      v1104 = 2048;
      *v1105 = v592;
      _os_log_impl(&dword_1D9F69000, v590, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ rank %lu results", buf, 0x16u);
    }

    v828 = [MEMORY[0x1E696AD60] string];
    v1029 = 0u;
    v1028 = 0u;
    v1027 = 0u;
    v1026 = 0u;
    v801 = v945;
    v830 = [v801 countByEnumeratingWithState:&v1026 objects:v1171 count:16];
    if (v830)
    {
      v860 = 0;
      v827 = *v1027;
      do
      {
        for (i6 = 0; i6 != v830; i6 = i6 + 1)
        {
          if (*v1027 != v827)
          {
            objc_enumerationMutation(v801);
          }

          v983 = [*(*(&v1026 + 1) + 8 * i6) rankingItem];
          v922 = SSCompactRankingAttrsGetValue([v983 attributes], 1uLL);
          v916 = SSCompactRankingAttrsGetValue([v983 attributes], 0xE6uLL);
          spidb = SSCompactRankingAttrsGetValue([v983 attributes], 0xE7uLL);
          v903 = SSCompactRankingAttrsGetValue([v983 attributes], 0xDuLL);
          v899 = SSCompactRankingAttrsGetValue([v983 attributes], 0x110uLL);
          v953 = SSCompactRankingAttrsGetValue([v983 attributes], 7uLL);
          v946 = SSCompactRankingAttrsGetValue([v983 attributes], 0xCuLL);
          v935 = SSCompactRankingAttrsGetValue([v983 attributes], 4uLL);
          v593 = SSCompactRankingAttrsGetValue([v983 attributes], 6uLL);
          logb = v593;
          v594 = v935;
          if (!v935)
          {
            v594 = v593;
          }

          if (v946)
          {
            v594 = v946;
          }

          if (v953)
          {
            v594 = v953;
          }

          v974 = v594;
          if ([v974 length])
          {
            v595 = [v974 stringByReplacingOccurrencesOfString:@"\r" withString:@" "];
            v596 = [v595 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

            v974 = v596;
          }

          v597 = [v983 L2FeatureVector];
          v598 = [v597 topicalityAnonFeatDict];

          v992 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v1025 = 0u;
          v1024 = 0u;
          v1023 = 0u;
          v1022 = 0u;
          v1001 = v598;
          v599 = [v1001 countByEnumeratingWithState:&v1022 objects:v1170 count:16];
          if (v599)
          {
            v600 = *v1023;
            do
            {
              for (i7 = 0; i7 != v599; ++i7)
              {
                if (*v1023 != v600)
                {
                  objc_enumerationMutation(v1001);
                }

                v602 = *(*(&v1022 + 1) + 8 * i7);
                v603 = [v1001 objectForKeyedSubscript:v602];
                v604 = [v602 stringByAppendingFormat:@":(Unigram:%li Bigram:%li Ngram:%li UnigramPrefix:%li BigramPrefix:%li NgramPrefix:%li)", objc_msgSend(v603, "countAttributeUnigramMatch"), objc_msgSend(v603, "countAttributeBigramMatch"), objc_msgSend(v603, "countAttributeNgramMatch"), objc_msgSend(v603, "countAttributeUnigramPrefixMatch"), objc_msgSend(v603, "countAttributeBigramPrefixMatch"), objc_msgSend(v603, "countAttributeNgramPrefixMatch")];
                [v992 addObject:v604];
              }

              v599 = [v1001 countByEnumeratingWithState:&v1022 objects:v1170 count:16];
            }

            while (v599);
          }

          v605 = [v992 componentsJoinedByString:@" "];
          v606 = SSCompactRankingAttrsGetValue([v983 attributes], 9uLL);
          v607 = SSCompactRankingAttrsGetValue([v983 attributes], 0x20uLL);
          v608 = SSCompactRankingAttrsGetValue([v983 attributes], 0x19uLL);
          v888 = SSCompactRankingAttrsGetValue([v983 attributes], 0x16DuLL);
          v884 = SSCompactRankingAttrsGetValue([v983 attributes], 0x18AuLL);
          v877 = SSCompactRankingAttrsGetValue([v983 attributes], 0x11uLL);
          v873 = SSCompactRankingAttrsGetValue([v983 attributes], 0x12uLL);
          oslogb = SSGeneralLog();
          if (os_log_type_enabled(oslogb, OS_LOG_TYPE_DEFAULT))
          {
            objb = [v1006 searchString];
            v847 = [v983 sectionBundleIdentifier];
            v844 = [v983 identifier];
            [v983 likelihood];
            v826 = v609;
            [v983 topicalityScore];
            v824 = v610;
            [v983 pommesL1Score];
            v823 = v611;
            [v983 pommesCalibratedL1Score];
            v613 = v612;
            [v983 embeddingSimilarity];
            v615 = v614;
            [v983 projectedEmbeddingSimilarity];
            v617 = v616;
            [v983 keywordMatchScore];
            v619 = v618;
            [v983 freshnessScore];
            v822 = v620;
            [v983 engagementScore];
            v622 = v621;
            [v983 l2Score];
            v624 = v623;
            [v983 normalizedSparseScore];
            v626 = v625;
            [v983 searchToolL2Score];
            v628 = v627;
            v863 = +[SPSearchQueryContext llmQUIntentString:](SPSearchQueryContext, "llmQUIntentString:", [v983 detectedEventType]);
            v836 = [v983 preExtractedCardType];
            v834 = [v983 linkType];
            v857 = [v983 linkName];
            v866 = SSRedactStringClient(v857, 1, 1);
            v854 = [v983 url];
            v869 = SSRedactStringClient(v854, 1, 1);
            v821 = [v983 isInferredSharedLink];
            v815 = [v983 isPromotedSharedLink];
            v806 = [v983 isMailCategoryHighImpact];
            v805 = [v983 isMailCategoryPromotions];
            v804 = [v983 startDueDateToNowInSeconds];
            v802 = [v983 isCalendarFlightEventType];
            v629 = [v983 isCalendarHotelEventType];
            v630 = [v983 isCalendarRestaurantEventType];
            v631 = [v983 isCalendarOtherReservationEventType];
            v632 = [v983 mostRecentTimeToQueryInMinutesForFreshness];
            v832 = [v983 retrievalType];
            v633 = [v832 intValue];
            v634 = [v983 documentEmbeddingAvailable];
            v635 = [v983 searchTermsMatchTitle];
            ++v860;
            v636 = @"Unknown";
            if (v635 <= 3)
            {
              v636 = off_1E8595B98[v635];
            }

            v1133 = v821;
            v1135 = v815;
            v1137 = v806;
            *v1139 = v805;
            *&v1139[6] = v804;
            *v1141 = v802;
            *&v1141[6] = v629;
            v1143 = v630;
            v1145 = v631;
            v1147 = v632;
            v1165 = v633;
            v1167 = v634;
            v1169 = v636;
            *buf = 138424322;
            v1103 = objb;
            v1104 = 1024;
            *v1105 = v860;
            *&v1105[4] = 2112;
            *&v1105[6] = v847;
            *&v1105[14] = 2112;
            *&v1105[16] = v844;
            *&v1105[24] = 2112;
            *&v1105[26] = v922;
            *&v1105[34] = 2112;
            *&v1105[36] = v916;
            *&v1105[44] = 2112;
            *&v1105[46] = spidb;
            *&v1105[54] = 2112;
            *&v1105[56] = v903;
            *&v1105[64] = 2112;
            *&v1105[66] = v899;
            *&v1105[74] = 2112;
            *&v1105[76] = v974;
            *v1106 = 2048;
            *&v1106[2] = v826;
            *&v1106[10] = 2048;
            *&v1106[12] = v824;
            *v1107 = 2048;
            *&v1107[2] = v823;
            v1108 = 2048;
            v1109 = v613;
            v1110 = 2048;
            v1111 = v615;
            v1112 = 2048;
            v1113 = v617;
            v1114 = 2048;
            v1115 = v619;
            v1116 = 2048;
            v1117 = v822;
            v1118 = 2048;
            v1119 = v622;
            v1120 = 2048;
            v1121 = v624;
            v1122 = 2048;
            v1123 = v626;
            v1124 = 2048;
            v1125 = v628;
            v1126 = 2112;
            v1127 = v863;
            v1128 = 2112;
            *v1129 = v836;
            *&v1129[8] = 2112;
            v1130 = v834;
            *v1131 = 2112;
            *&v1131[2] = v866;
            *&v1131[10] = 2112;
            *&v1131[12] = v869;
            v1132 = 1024;
            v1134 = 1024;
            v1136 = 1024;
            v1138 = 1024;
            *&v1139[4] = 2048;
            v1140 = 1024;
            *&v1141[4] = 1024;
            v1142 = 1024;
            v1144 = 1024;
            v1146 = 2048;
            v1148 = 2112;
            v1149 = v605;
            v1150 = 2112;
            v1151 = v606;
            v1152 = 2112;
            v1153 = v607;
            v1154 = 2112;
            v1155 = v608;
            v1156 = 2112;
            v1157 = v888;
            v1158 = 2112;
            v1159 = v884;
            v1160 = 2112;
            v1161 = v877;
            v1162 = 2112;
            v1163 = v873;
            v1164 = 1024;
            v1166 = 1024;
            v1168 = 2112;
            _os_log_impl(&dword_1D9F69000, oslogb, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ ranked result %i: bundleId=%@ identifier=%@ MDItemIdentifier=%@ messageID=%@ messageHeader=%@ contentURL=%@ appEntityInstanceId=%@ name=%@ score=(likelihood=%lf topicality=%lf pommesL1Score=%lf pommesCalibratedL1Score=%lf embeddingSimilarity=%lf projectedEmbeddingSimilarity=%lf keywordMatchScore=%lf freshness=%lf engagement=%lf pommesL2Score=%lf normalizedSparseScore=%lf seartoolL2Score=%f) documentSignals=(detectedEventTypes=%@ cardType=%@ link=(type=%@ name=%@ url=%@ isInferred=%i isPromoted=%i) isMailCategoryHighImpact=%i isMailCategoryPromotions=%i startDueDateToNowInSeconds=%ld isCalendarFlightEventType=%i isCalendarHotelEventType=%i isCalendarRestaurantEventTyp=%i isCalendarOtherReservationEventType=%i mostRecentTimeToQueryInMinutes=%ld) topicalityAnonFeatDict=(%@) dates=(lastUsedDate=[%@] contentCreationDate=[%@] contentModificationDate=[%@] receivedDate=[%@] sentDate=[%@] startDate=[%@] endDate=[%@]) retrievalType=%i documentEmbeddingAvailable=%d searchTermsMatchTitle=%@", buf, 0x1B6u);
          }

          if (isSpotlightForSearchToolRegressionTest == 1)
          {
            [v828 appendFormat:@"%@, ", v922];
          }
        }

        v830 = [v801 countByEnumeratingWithState:&v1026 objects:v1171 count:16];
      }

      while (v830);
    }

    if (isSpotlightForSearchToolRegressionTest == 1)
    {
      v637 = SSGeneralLog();
      if ([v828 length])
      {
        v638 = 0;
        v639 = 0;
        do
        {
          v640 = os_signpost_id_generate(v637);
          v641 = [v828 length];
          if ((v641 + v638) >= 0x3E8)
          {
            v642 = 1000;
          }

          else
          {
            v642 = v641 + v638;
          }

          v643 = [v828 substringWithRange:v639, v642];
          v644 = v637;
          v645 = v644;
          if (v640 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v644))
          {
            v646 = v643;
            v647 = [v643 UTF8String];
            *buf = 136315138;
            v1103 = v647;
            _os_signpost_emit_with_name_impl(&dword_1D9F69000, v645, OS_SIGNPOST_EVENT, v640, "RankedResult", "%s", buf, 0xCu);
          }

          v639 += 1000;
          v638 -= 1000;
        }

        while (v639 < [v828 length]);
      }
    }

    v648 = SSGeneralLog();
    if (os_log_type_enabled(v648, OS_LOG_TYPE_DEFAULT))
    {
      v649 = [v1006 searchString];
      v650 = [v801 count];
      *buf = 138412546;
      v1103 = v649;
      v1104 = 2048;
      *v1105 = v650;
      _os_log_impl(&dword_1D9F69000, v648, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ ranked %lu results", buf, 0x16u);
    }
  }

  else
  {
    v651 = SSGeneralLog();
    if (os_log_type_enabled(v651, OS_LOG_TYPE_DEFAULT))
    {
      v652 = [v1006 searchString];
      v653 = SSRedactStringClient(v652, 1, v911);
      v654 = [v1006 queryIdent];
      v655 = [v941 count];
      *buf = 138412802;
      v1103 = v653;
      v1104 = 2048;
      *v1105 = v654;
      *&v1105[8] = 2048;
      *&v1105[10] = v655;
      _os_log_impl(&dword_1D9F69000, v651, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ qid=%llu rank %lu results", buf, 0x20u);
    }

    v1021 = 0u;
    v1020 = 0u;
    v1019 = 0u;
    v1018 = 0u;
    v831 = v941;
    v861 = [v831 countByEnumeratingWithState:&v1018 objects:v1101 count:16];
    if (v861)
    {
      v975 = 0;
      v858 = *v1019;
LABEL_575:
      v993 = 0;
      while (1)
      {
        if (*v1019 != v858)
        {
          objc_enumerationMutation(v831);
        }

        if (v975 >= 100 && isInternalDevice != 1)
        {
          break;
        }

        v656 = [*(*(&v1018 + 1) + 8 * v993) rankingItem];
        v984 = SSCompactRankingAttrsGetValue([v656 attributes], 7uLL);
        v961 = SSCompactRankingAttrsGetValue([v656 attributes], 0xCuLL);
        v954 = SSCompactRankingAttrsGetValue([v656 attributes], 4uLL);
        v947 = SSCompactRankingAttrsGetValue([v656 attributes], 6uLL);
        v657 = v984;
        if (!v984)
        {
          v657 = v954;
          if (!v954)
          {
            v657 = v947;
          }

          if (v961)
          {
            v657 = v961;
          }
        }

        oslogc = v657;
        v1002 = SSGeneralLog();
        if (os_log_type_enabled(v1002, OS_LOG_TYPE_DEFAULT))
        {
          v900 = [v1006 searchString];
          logc = SSRedactStringClient(v900, 1, v911);
          v855 = [v1006 queryIdent];
          v874 = [v656 sectionBundleIdentifier];
          v889 = [v656 identifier];
          v923 = SSRedactStringClient(v889, 1, v911);
          v885 = SSCompactRankingAttrsGetValue([v656 attributes], 1uLL);
          v917 = SSRedactStringClient(v885, 1, v911);
          v936 = SSRedactStringClient(oslogc, 1, v911);
          [v656 likelihood];
          objc = v658;
          [v656 topicalityScore];
          v848 = v659;
          [v656 pommesL1Score];
          v661 = v660;
          [v656 pommesCalibratedL1Score];
          v845 = v662;
          [v656 embeddingSimilarity];
          v664 = v663;
          [v656 projectedEmbeddingSimilarity];
          v666 = v665;
          [v656 keywordMatchScore];
          v668 = v667;
          [v656 freshnessScore];
          v670 = v669;
          [v656 engagementScore];
          v672 = v671;
          [v656 l2Score];
          v674 = v673;
          [v656 searchToolL2Score];
          v676 = v675;
          v904 = +[SPSearchQueryContext llmQUIntentString:](SPSearchQueryContext, "llmQUIntentString:", [v656 detectedEventType]);
          [v656 preExtractedCardType];
          v677 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          [v656 linkType];
          v867 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v878 = [v656 linkName];
          SSRedactStringClient(v878, 1, v911);
          spidc = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v870 = [v656 url];
          v864 = SSRedactStringClient(v870, 1, v911);
          v678 = [v656 isInferredSharedLink];
          v837 = [v656 isPromotedSharedLink];
          v835 = [v656 isMailCategoryHighImpact];
          v833 = [v656 isMailCategoryPromotions];
          v679 = [v656 startDueDateToNowInSeconds];
          v680 = [v656 isCalendarFlightEventType];
          v681 = [v656 isCalendarHotelEventType];
          v682 = [v656 isCalendarRestaurantEventType];
          v683 = [v656 isCalendarOtherReservationEventType];
          v684 = [v656 mostRecentTimeToQueryInDaysForFreshness];
          v685 = [v656 documentEmbeddingAvailable];
          v686 = [v656 searchTermsMatchTitle];
          ++v975;
          v687 = @"Unknown";
          if (v686 <= 3)
          {
            v687 = off_1E8595B98[v686];
          }

          *buf = 138420994;
          v1103 = logc;
          v1104 = 2048;
          *v1105 = v855;
          *&v1105[8] = 1024;
          *&v1105[10] = v975;
          *&v1105[14] = 2112;
          *&v1105[16] = v874;
          *&v1105[24] = 2112;
          *&v1105[26] = v923;
          *&v1105[34] = 2112;
          *&v1105[36] = v917;
          *&v1105[44] = 2112;
          *&v1105[46] = v936;
          *&v1105[54] = 2048;
          *&v1105[56] = objc;
          *&v1105[64] = 2048;
          *&v1105[66] = v848;
          *&v1105[74] = 2048;
          *&v1105[76] = v661;
          *v1106 = 2048;
          *&v1106[2] = v845;
          *&v1106[10] = 2048;
          *&v1106[12] = v664;
          *v1107 = 2048;
          *&v1107[2] = v666;
          v1108 = 2048;
          v1109 = v668;
          v1110 = 2048;
          v1111 = v670;
          v1112 = 2048;
          v1113 = v672;
          v1114 = 2048;
          v1115 = v674;
          v1116 = 2048;
          v1117 = v676;
          v1118 = 2112;
          v1119 = v904;
          v1120 = 2112;
          v1121 = v677;
          v1122 = 2112;
          v1123 = v867;
          v1124 = 2112;
          v1125 = spidc;
          v1126 = 2112;
          v1127 = v864;
          v1128 = 1024;
          *v1129 = v678;
          *&v1129[4] = 1024;
          *&v1129[6] = v837;
          LOWORD(v1130) = 1024;
          *(&v1130 + 2) = v835;
          HIWORD(v1130) = 1024;
          *v1131 = v833;
          *&v1131[4] = 2048;
          *&v1131[6] = v679;
          *&v1131[14] = 1024;
          *&v1131[16] = v680;
          v1132 = 1024;
          v1133 = v681;
          v1134 = 1024;
          v1135 = v682;
          v1136 = 1024;
          v1137 = v683;
          v1138 = 2048;
          *v1139 = v684;
          *&v1139[8] = 1024;
          *&v1139[10] = v685;
          v1140 = 2112;
          *v1141 = v687;
          _os_log_impl(&dword_1D9F69000, v1002, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ qid=%llu ranked result %i: bundleId=%@ identifier=%@ MDItemIdentifier=%@ name=%@ score=(likelihood=%f topicality=%f pommesL1Score=%f pommesCalibratedL1Score=%f embeddingSimilarity=%f projectedEmbeddingSimilarity=%f keywordMatchScore=%f freshness=%f engagement=%f pommesL2Score=%f searchToolL2Score=%f) documentSignals=(detectedEventTypes=%@ cardType=%@ link=(type=%@ name=%@ url=%@ isInferred=%i isPromoted=%i) isMailCategoryHighImpact=%i isMailCategoryPromotions=%i startDueDateToNowInSeconds=%ld isCalendarFlightEventType=%i isCalendarHotelEventType=%i isCalendarRestaurantEventTyp=%i isCalendarOtherReservationEventType=%i mostRecentTimeToQueryInDays=%ld) documentEmbeddingAvailable=%d searchTermsMatchTitle=%@", buf, 0x138u);
        }

        v993 = v993 + 1;
        if (v861 == v993)
        {
          v861 = [v831 countByEnumeratingWithState:&v1018 objects:v1101 count:16];
          if (v861)
          {
            goto LABEL_575;
          }

          break;
        }
      }
    }

    v828 = SSGeneralLog();
    if (os_log_type_enabled(v828, OS_LOG_TYPE_DEFAULT))
    {
      v688 = [v1006 searchString];
      v689 = SSRedactStringClient(v688, 1, v911);
      v690 = [v1006 queryIdent];
      v691 = [v831 count];
      *buf = 138412802;
      v1103 = v689;
      v1104 = 2048;
      *v1105 = v690;
      *&v1105[8] = 2048;
      *&v1105[10] = v691;
      _os_log_impl(&dword_1D9F69000, v828, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ qid=%llu ranked %lu results", buf, 0x20u);
    }
  }

  if (searchToolRanker_queryContext_searchToolBundles__isInternalUserOfSearchTool == 1)
  {
    v692 = [SSRankingManager searchToolPopulateResultsForBiomeForTTRWithResult:v941 queryContext:v1006];
    if (v692)
    {
      v693 = [v1006 searchString];
      v694 = searchToolRanker_queryContext_searchToolBundles__sTTRBiomeStreamQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68__SSRankingManager_searchToolRanker_queryContext_searchToolBundles___block_invoke_1449;
      block[3] = &unk_1E8595728;
      v1016 = v692;
      v695 = v693;
      v1017 = v695;
      dispatch_async(v694, block);
    }
  }

  if ([v941 count])
  {
    [SSRankingManager searchToolFilterResultsAfterRanking:v941 queryContext:v1006];
  }

  if (SSEnableSearchToolDebugMode())
  {
    v696 = SSGeneralLog();
    if (os_log_type_enabled(v696, OS_LOG_TYPE_DEFAULT))
    {
      v697 = [v1006 searchString];
      v698 = [v941 count];
      *buf = 138412546;
      v1103 = v697;
      v1104 = 2048;
      *v1105 = v698;
      _os_log_impl(&dword_1D9F69000, v696, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=[%@] total %lu results after-filtering", buf, 0x16u);
    }

    v1014 = 0u;
    v1013 = 0u;
    v1012 = 0u;
    v1011 = 0u;
    v918 = v941;
    v937 = [v918 countByEnumeratingWithState:&v1011 objects:v1100 count:16];
    if (v937)
    {
      v924 = 0;
      logd = *v1012;
      do
      {
        v699 = 0;
        do
        {
          if (*v1012 != logd)
          {
            v700 = v699;
            objc_enumerationMutation(v918);
            v699 = v700;
          }

          v948 = v699;
          v701 = [*(*(&v1011 + 1) + 8 * v699) rankingItem];
          v1003 = SSCompactRankingAttrsGetValue([v701 attributes], 1uLL);
          v994 = SSCompactRankingAttrsGetValue([v701 attributes], 0xE6uLL);
          v985 = SSCompactRankingAttrsGetValue([v701 attributes], 0xE7uLL);
          v976 = SSCompactRankingAttrsGetValue([v701 attributes], 0xDuLL);
          oslogd = SSCompactRankingAttrsGetValue([v701 attributes], 0x110uLL);
          v702 = SSCompactRankingAttrsGetValue([v701 attributes], 7uLL);
          v962 = SSCompactRankingAttrsGetValue([v701 attributes], 0xCuLL);
          v955 = SSCompactRankingAttrsGetValue([v701 attributes], 4uLL);
          v703 = SSCompactRankingAttrsGetValue([v701 attributes], 6uLL);
          v704 = v703;
          v705 = v702;
          if (!v702)
          {
            v705 = v955;
            if (!v955)
            {
              v705 = v703;
            }

            if (v962)
            {
              v705 = v962;
            }
          }

          v706 = v705;
          v707 = SSCompactRankingAttrsGetValue([v701 attributes], 0x120uLL);
          v708 = [v701 bundleIDType];
          v709 = SSGeneralLog();
          if (os_log_type_enabled(v709, OS_LOG_TYPE_DEFAULT))
          {
            v710 = [v1006 searchString];
            v711 = [v701 sectionBundleIdentifier];
            v712 = [v701 identifier];
            *buf = 138415106;
            v1103 = v710;
            v1104 = 1024;
            *v1105 = ++v924;
            *&v1105[4] = 2112;
            *&v1105[6] = v711;
            *&v1105[14] = 2112;
            *&v1105[16] = v712;
            *&v1105[24] = 2112;
            *&v1105[26] = v1003;
            *&v1105[34] = 2112;
            *&v1105[36] = v994;
            *&v1105[44] = 2112;
            *&v1105[46] = v985;
            *&v1105[54] = 2112;
            *&v1105[56] = v976;
            *&v1105[64] = 2112;
            *&v1105[66] = oslogd;
            *&v1105[74] = 2112;
            *&v1105[76] = v706;
            *v1106 = 1024;
            *&v1106[2] = (v708 >> 11) & 1;
            *&v1106[6] = 2112;
            *&v1106[8] = v707;
            _os_log_impl(&dword_1D9F69000, v709, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=[%@] after-filtering result %i: bundleId=%@ identifier=%@ MDItemIdentifier=%@ messageID=%@ messageHeader=%@ contentURL=%@ appEntityInstanceId=%@ name=%@ isFileType=%d linkType=%@", buf, 0x72u);
          }

          v699 = v948 + 1;
        }

        while (v937 != v948 + 1);
        v937 = [v918 countByEnumeratingWithState:&v1011 objects:v1100 count:16];
      }

      while (v937);
    }
  }

  v713 = SSGeneralLog();
  if (os_log_type_enabled(v713, OS_LOG_TYPE_DEFAULT))
  {
    v714 = [v1006 searchString];
    v715 = SSRedactStringClient(v714, 1, v911);
    v716 = [v941 count];
    *buf = 138412546;
    v1103 = v715;
    v1104 = 2048;
    *v1105 = v716;
    _os_log_impl(&dword_1D9F69000, v713, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ output %lu candidates", buf, 0x16u);
  }

  v717 = [v838 resultSet];
  [v717 removeAllObjects];

  v1004 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1010 = 0u;
  v1009 = 0u;
  v1008 = 0u;
  v1007 = 0u;
  v890 = v941;
  v995 = [v890 countByEnumeratingWithState:&v1007 objects:v1099 count:16];
  if (v995)
  {
    v949 = 0;
    v986 = *v1008;
    do
    {
      for (i8 = 0; i8 != v995; i8 = i8 + 1)
      {
        if (*v1008 != v986)
        {
          objc_enumerationMutation(v890);
        }

        v719 = *(*(&v1007 + 1) + 8 * i8);
        v720 = [v719 rankingItem];
        v721 = [v720 sectionBundleIdentifier];

        if (v721)
        {
          v722 = [v719 rankingItem];
          v723 = [v722 sectionBundleIdentifier];
          v724 = [v1004 objectForKeyedSubscript:v723];

          if (v724)
          {
            v725 = [v724 intValue] + 1;
          }

          else
          {
            v725 = 1;
          }

          v726 = [MEMORY[0x1E696AD98] numberWithInt:v725];
          v727 = [v719 rankingItem];
          v728 = [v727 sectionBundleIdentifier];
          [v1004 setObject:v726 forKeyedSubscript:v728];
        }

        else
        {
          LODWORD(v725) = ++v949;
        }

        if (v725 <= 10)
        {
          v729 = [v838 resultSet];
          [v729 addObject:v719];

          v730 = SSGeneralLog();
          if (os_log_type_enabled(v730, OS_LOG_TYPE_DEFAULT))
          {
            v942 = [v1006 searchString];
            v956 = SSRedactStringClient(v942, 1, v911);
            v938 = [v719 rankingItem];
            v901 = [v938 sectionBundleIdentifier];
            loge = [v719 rankingItem];
            v925 = [loge identifier];
            osloge = SSRedactStringClient(v925, 1, v911);
            v919 = [v719 rankingItem];
            spidd = SSCompactRankingAttrsGetValue([v919 attributes], 1uLL);
            v963 = SSRedactStringClient(spidd, 1, v911);
            v905 = [v719 title];
            v731 = [v905 text];
            v977 = SSRedactStringClient(v731, 1, v911);
            v732 = [v719 rankingItem];
            [v732 likelihood];
            v734 = v733;
            v735 = [v719 rankingItem];
            v736 = +[SPSearchQueryContext llmQUIntentString:](SPSearchQueryContext, "llmQUIntentString:", [v735 detectedEventType]);
            v737 = [v719 rankingItem];
            v738 = [v737 preExtractedCardType];
            v739 = [v719 rankingItem];
            v740 = [v739 linkType];
            *buf = 138414338;
            v1103 = v956;
            v1104 = 2112;
            *v1105 = v901;
            *&v1105[8] = 2112;
            *&v1105[10] = osloge;
            *&v1105[18] = 2112;
            *&v1105[20] = v963;
            *&v1105[28] = 2112;
            *&v1105[30] = v977;
            *&v1105[38] = 2048;
            *&v1105[40] = v734;
            *&v1105[48] = 2112;
            *&v1105[50] = v736;
            *&v1105[58] = 2112;
            *&v1105[60] = v738;
            *&v1105[68] = 2112;
            *&v1105[70] = v740;
            _os_log_impl(&dword_1D9F69000, v730, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ output result: bundleID=%@ identifier=%@ MDItemIdentifier=%@ name=%@ likelihood=%f detectedEventTypes=%@ cardType=%@ linkType=%@", buf, 0x5Cu);
          }
        }
      }

      v995 = [v890 countByEnumeratingWithState:&v1007 objects:v1099 count:16];
    }

    while (v995);
  }

  v741 = SSGeneralLog();
  if (os_log_type_enabled(v741, OS_LOG_TYPE_DEFAULT))
  {
    v742 = [v1006 searchString];
    v743 = SSRedactStringClient(v742, 1, v911);
    v744 = [v838 resultSet];
    v745 = [v744 count];
    *buf = 138412546;
    v1103 = v743;
    v1104 = 2048;
    *v1105 = v745;
    _os_log_impl(&dword_1D9F69000, v741, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ output %lu results", buf, 0x16u);
  }

  v746 = *MEMORY[0x1E69E9840];
}

uint64_t __68__SSRankingManager_searchToolRanker_queryContext_searchToolBundles___block_invoke()
{
  [@"com.apple.omniSearch" UTF8String];
  searchToolRanker_queryContext_searchToolBundles__isInternalUserOfSearchTool = os_variant_has_internal_diagnostics();
  searchToolRanker_queryContext_searchToolBundles__sTTRBiomeStreamQueue = dispatch_queue_create("com.apple.omniSearch.donateBiomeEvent", 0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __68__SSRankingManager_searchToolRanker_queryContext_searchToolBundles___block_invoke_1414(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 rankingItem];
  v5 = [v4 linkType];
  v6 = [v5 localizedCaseInsensitiveContainsString:v3];

  return v6;
}

- (id)groupSectionsByCategory:(id)a3 genreMap:(id)a4 topSections:(id)a5
{
  v129 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v102 = a4;
  v85 = a5;
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v9 = objc_alloc(MEMORY[0x1E695DF70]);
  v10 = [v7 count];
  v11 = v9;
  v12 = v7;
  v101 = [v11 initWithCapacity:v10];
  if ([v7 count])
  {
    [v7 objectAtIndexedSubscript:0];
    v14 = v13 = v7;
    v15 = [v14 bundleIdentifier];
    v16 = [v15 isEqualToString:@"com.apple.application"];

    if (v16)
    {
      v83 = [v13 objectAtIndexedSubscript:0];
      v82 = 1;
    }

    else
    {
      v83 = 0;
      v82 = 0;
    }

    v12 = v13;
  }

  else
  {
    v83 = 0;
    v82 = 0;
  }

  v84 = v12;
  if ([v85 count] == 1)
  {
    v17 = [v85 firstObject];
    v18 = [v17 results];
    v19 = [v18 count];

    if (v19)
    {
      v20 = [v17 results];
      v21 = [v20 firstObject];

      v22 = PRSLogCategoryDefault();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [SSRankingManager groupSectionsByCategory:v21 genreMap:? topSections:?];
      }

      v23 = [v21 sectionBundleIdentifier];

      if (v23)
      {
        v24 = [v21 sectionBundleIdentifier];
        v25 = [v102 objectForKey:v24];

        v26 = PRSLogCategoryDefault();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [SSRankingManager groupSectionsByCategory:genreMap:topSections:];
        }

        v97 = v25;
        if (v25)
        {
          v89 = v21;
          v91 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v84, "count")}];
          v86 = objc_opt_new();
          v96 = v17;
          v99 = __65__SSRankingManager_groupSectionsByCategory_genreMap_topSections___block_invoke(v86, v17);
          v115 = 0u;
          v116 = 0u;
          v117 = 0u;
          v118 = 0u;
          v27 = v84;
          v28 = [v27 countByEnumeratingWithState:&v115 objects:v128 count:16];
          if (v28)
          {
            v29 = v28;
            LODWORD(v30) = 0;
            v31 = *v116;
            do
            {
              v32 = 0;
              v30 = v30;
              do
              {
                if (*v116 != v31)
                {
                  objc_enumerationMutation(v27);
                }

                v33 = *(*(&v115 + 1) + 8 * v32);
                v34 = [v33 bundleIdentifier];

                if (v34)
                {
                  v35 = [v33 bundleIdentifier];
                  v36 = [v102 objectForKey:v35];

                  v38 = __65__SSRankingManager_groupSectionsByCategory_genreMap_topSections___block_invoke(v37, v33);
                  if ([v25 isEqual:v36] && ((v99 ^ v38) & 1) == 0)
                  {
                    v39 = PRSLogCategoryDefault();
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                    {
                      v93 = [v33 bundleIdentifier];
                      v42 = [v96 bundleIdentifier];
                      *buf = 138412546;
                      v125 = v93;
                      v126 = 2112;
                      v127 = v42;
                      v43 = v42;
                      _os_log_debug_impl(&dword_1D9F69000, v39, OS_LOG_TYPE_DEBUG, "Grouping %@ with %@", buf, 0x16u);
                    }

                    [v91 addObject:v33];
                    [v86 addIndex:v30];
                    v25 = v97;
                  }
                }

                else
                {
                  v36 = PRSLogCategoryDefault();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                  {
                    v40 = [v33 bundleIdentifier];
                    v41 = [v96 bundleIdentifier];
                    *buf = 138412546;
                    v125 = v40;
                    v126 = 2112;
                    v127 = v41;
                    _os_log_debug_impl(&dword_1D9F69000, v36, OS_LOG_TYPE_DEBUG, "Not grouping %@ with %@", buf, 0x16u);

                    v25 = v97;
                  }
                }

                ++v30;
                ++v32;
              }

              while (v29 != v32);
              v29 = [v27 countByEnumeratingWithState:&v115 objects:v128 count:16];
            }

            while (v29);
          }

          v21 = v89;
          v25 = v91;
          v17 = v96;
        }

        else
        {
          v86 = 0;
        }
      }

      else
      {
        v86 = 0;
        v25 = 0;
      }

      v12 = v84;
    }

    else
    {
      v86 = 0;
      v25 = 0;
      v12 = v84;
    }
  }

  else
  {
    v86 = 0;
    v25 = 0;
  }

  if ([v25 count] && objc_msgSend(v86, "count"))
  {
    v44 = [v12 mutableCopy];
    [v44 removeObjectsAtIndexes:v86];
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v45 = v44;
    v46 = [v45 countByEnumeratingWithState:&v111 objects:v123 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v112;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v112 != v48)
          {
            objc_enumerationMutation(v45);
          }

          [v25 addObject:*(*(&v111 + 1) + 8 * i)];
        }

        v47 = [v45 countByEnumeratingWithState:&v111 objects:v123 count:16];
      }

      while (v47);
    }

    v50 = v25;
  }

  else
  {
    v50 = v12;
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v51 = v50;
  v52 = [v51 countByEnumeratingWithState:&v107 objects:v122 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v108;
    v92 = v25;
    v87 = *v108;
    v88 = v51;
    do
    {
      v55 = 0;
      v90 = v53;
      do
      {
        if (*v108 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v107 + 1) + 8 * v55);
        if (([v8 containsObject:v56] & 1) == 0)
        {
          v57 = PRSLogCategoryDefault();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            [(SSRankingManager *)v120 groupSectionsByCategory:v56 genreMap:&v121 topSections:v57];
          }

          [v8 addObject:v56];
          [v101 addObject:v56];
          v58 = [v56 bundleIdentifier];

          if (v58)
          {
            v59 = [v56 bundleIdentifier];
            v60 = [v102 objectForKey:v59];

            v61 = PRSLogCategoryDefault();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v125 = v60;
              _os_log_debug_impl(&dword_1D9F69000, v61, OS_LOG_TYPE_DEBUG, "Genre: %@", buf, 0xCu);
            }

            if (v60)
            {
              v94 = v55;
              v98 = v56;
              v63 = __65__SSRankingManager_groupSectionsByCategory_genreMap_topSections___block_invoke(v62, v56);
              v103 = 0u;
              v104 = 0u;
              v105 = 0u;
              v106 = 0u;
              v64 = v51;
              v65 = [v64 countByEnumeratingWithState:&v103 objects:v119 count:16];
              if (v65)
              {
                v66 = v65;
                v67 = *v104;
                do
                {
                  for (j = 0; j != v66; ++j)
                  {
                    if (*v104 != v67)
                    {
                      objc_enumerationMutation(v64);
                    }

                    v69 = *(*(&v103 + 1) + 8 * j);
                    if (([v8 containsObject:v69] & 1) == 0)
                    {
                      v70 = [v69 bundleIdentifier];

                      if (v70)
                      {
                        v71 = [v69 bundleIdentifier];
                        v72 = [v102 objectForKey:v71];

                        v74 = __65__SSRankingManager_groupSectionsByCategory_genreMap_topSections___block_invoke(v73, v69);
                        if ([v60 isEqual:v72] && ((v63 ^ v74) & 1) == 0)
                        {
                          v75 = PRSLogCategoryDefault();
                          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
                          {
                            v100 = [v69 bundleIdentifier];
                            v95 = [v98 bundleIdentifier];
                            *buf = 138412546;
                            v125 = v100;
                            v126 = 2112;
                            v127 = v95;
                            _os_log_debug_impl(&dword_1D9F69000, v75, OS_LOG_TYPE_DEBUG, "Grouping %@ with %@", buf, 0x16u);
                          }

                          [v8 addObject:v69];
                          [v101 addObject:v69];
                        }
                      }

                      else
                      {
                        v72 = PRSLogCategoryDefault();
                        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
                        {
                          v76 = [v69 bundleIdentifier];
                          v77 = [v98 bundleIdentifier];
                          *buf = 138412546;
                          v125 = v76;
                          v126 = 2112;
                          v127 = v77;
                          _os_log_debug_impl(&dword_1D9F69000, v72, OS_LOG_TYPE_DEBUG, "Not grouping %@ with %@", buf, 0x16u);
                        }
                      }
                    }
                  }

                  v66 = [v64 countByEnumeratingWithState:&v103 objects:v119 count:16];
                }

                while (v66);
              }

              v53 = v90;
              v25 = v92;
              v54 = v87;
              v51 = v88;
              v55 = v94;
            }
          }
        }

        ++v55;
      }

      while (v55 != v53);
      v53 = [v51 countByEnumeratingWithState:&v107 objects:v122 count:16];
    }

    while (v53);
  }

  v78 = v83;
  if (v83)
  {
    v79 = v82;
  }

  else
  {
    v79 = 0;
  }

  if (v79 == 1 && [v101 count] >= 2)
  {
    [v101 removeObject:v83];
    v78 = v83;
    [v101 insertObject:v83 atIndex:0];
  }

  v80 = *MEMORY[0x1E69E9840];

  return v101;
}

BOOL __65__SSRankingManager_groupSectionsByCategory_genreMap_topSections___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    if ([v3 domain] == 2)
    {
      v4 = 0;
    }

    else
    {
      v5 = [v3 resultSet];
      v6 = [v5 firstObject];
      v7 = [v6 rankingItem];
      v8 = [v7 L2FeatureVector];
      if (v8)
      {
        v9 = [v6 rankingItem];
        v10 = [v9 L2FeatureVector];
        [v10 originalL2Score];
        v4 = v11 < -900.0;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)rankAppsAtTopForScopedSearchWithSections:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 bundleIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.application"];

  if ((v6 & 1) == 0)
  {
    v7 = [v3 mutableCopy];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v23;
      v21 = v7;
      while (2)
      {
        v13 = 0;
        v14 = v11;
        v20 = v11 + v10;
        do
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v22 + 1) + 8 * v13);
          v16 = [v15 bundleIdentifier];
          v17 = [v16 isEqualToString:@"com.apple.application"];

          if (v17)
          {
            v7 = v21;
            [v21 removeObjectAtIndex:v14];
            [v21 insertObject:v15 atIndex:0];
            goto LABEL_12;
          }

          ++v13;
          ++v14;
        }

        while (v10 != v13);
        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        v7 = v21;
        v11 = v20;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v3 = [v7 copy];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)keyForSection:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 title];
  }

  v7 = v6;

  return v7;
}

- (void)updateWithNewRankingInfo:(id)a3
{
  v4 = a3;
  v5 = [(SSRankingManager *)self rankingConfiguration];
  [v5 mergeWith:v4];
}

@end