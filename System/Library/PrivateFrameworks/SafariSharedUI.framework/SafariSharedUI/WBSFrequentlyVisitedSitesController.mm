@interface WBSFrequentlyVisitedSitesController
+ (id)_median:(id)_median;
+ (id)descriptionOfFrequentlyVisitedSiteWithVisitCount:(int)count visitCountScore:(int)score lastVisitedDate:(id)date score:(double)a6;
+ (id)lowerBoundForExcludingOutliersFromSortedCandidateScores:(id)scores;
+ (id)newRadarProblemURLWithInformationForProblematicFrequentlyVisitedSite:(id)site informationForOtherFrequentlyVisitedSites:(id)sites inProfile:(id)profile;
- (BOOL)recomputeFrequentlyVisitedSitesIfNecessary;
- (WBSFrequentlyVisitedSitesController)initWithHistory:(id)history bannedURLStore:(id)store profileIdentifier:(id)identifier;
- (double)_minimumTimeIntervalBetweenFrequentlyVisitedSiteComputations;
- (id)_excludeOutliersBasedOnScoreForFrequentlyVisited:(id)visited;
- (id)_historyItemForFrequentlyVisitedItem:(id)item;
- (void)_postFrequentlyVisitedSitesDidChangeNotification;
- (void)_recomputeFrequentlyVisitedSitesNow;
- (void)_recomputeFrequentlyVisitedSitesWithCompletionHandler:(id)handler;
- (void)descriptionOfAllFrequentlyVisitedSitesForProblematicSiteURLString:(id)string completionHandler:(id)handler;
- (void)sendAnalyticsIfNecessaryForURLNavigation:(id)navigation;
@end

@implementation WBSFrequentlyVisitedSitesController

- (BOOL)recomputeFrequentlyVisitedSitesIfNecessary
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3 - self->_timeOfLastFrequentlyVisitedSitesComputation;
  [(WBSFrequentlyVisitedSitesController *)self _minimumTimeIntervalBetweenFrequentlyVisitedSiteComputations];
  v6 = v5;
  if (v4 >= v5)
  {
    [(WBSFrequentlyVisitedSitesController *)self _recomputeFrequentlyVisitedSitesNow];
  }

  return v4 >= v6;
}

- (double)_minimumTimeIntervalBetweenFrequentlyVisitedSiteComputations
{
  if (![MEMORY[0x1E69C8880] isInternalInstall])
  {
    return 300.0;
  }

  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [safari_browserDefaults BOOLForKey:@"ShortenTimeToComputeFrequentlyVisitedSites"];

  result = 300.0;
  if (v3)
  {
    return 0.0;
  }

  return result;
}

- (void)_recomputeFrequentlyVisitedSitesNow
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__WBSFrequentlyVisitedSitesController__recomputeFrequentlyVisitedSitesNow__block_invoke;
  v3[3] = &unk_1E8283028;
  objc_copyWeak(&v4, &location);
  [(WBSFrequentlyVisitedSitesController *)self _recomputeFrequentlyVisitedSitesWithCompletionHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __74__WBSFrequentlyVisitedSitesController__recomputeFrequentlyVisitedSitesNow__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (!v6 && WeakRetained)
  {
    v9 = [v5 safari_mapObjectsUsingBlock:&__block_literal_global_93];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__WBSFrequentlyVisitedSitesController__recomputeFrequentlyVisitedSitesNow__block_invoke_3;
    v10[3] = &unk_1E8283000;
    v10[4] = v8;
    [v8 _saveFrequentlyVisitedSites:v9 completionHandler:v10];
  }
}

- (WBSFrequentlyVisitedSitesController)initWithHistory:(id)history bannedURLStore:(id)store profileIdentifier:(id)identifier
{
  historyCopy = history;
  storeCopy = store;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = WBSFrequentlyVisitedSitesController;
  v12 = [(WBSFrequentlyVisitedSitesController *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_history, history);
    objc_storeStrong(&v13->_bannedURLStore, store);
    objc_storeStrong(&v13->_profileIdentifier, identifier);
    v14 = v13;
  }

  return v13;
}

- (void)sendAnalyticsIfNecessaryForURLNavigation:(id)navigation
{
  navigationCopy = navigation;
  frequentlyVisitedSites = [(WBSFrequentlyVisitedSitesController *)self frequentlyVisitedSites];
  for (i = 0; i < [frequentlyVisitedSites count]; ++i)
  {
    v6 = [frequentlyVisitedSites objectAtIndexedSubscript:i];
    address = [v6 address];
    absoluteString = [navigationCopy absoluteString];
    v9 = [address isEqual:absoluteString];

    if (v9)
    {
      v10 = objc_alloc(MEMORY[0x1E69C8890]);
      v11 = [(WBSFrequentlyVisitedSitesController *)self _historyItemForFrequentlyVisitedItem:v6];
      lastVisitedDate = [v11 lastVisitedDate];
      frequentlyVisitedSiteScore = [v6 frequentlyVisitedSiteScore];
      v14 = [v10 initWithItemPosition:i lastVisitedDate:lastVisitedDate score:frequentlyVisitedSiteScore];

      mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
      [mEMORY[0x1E69C8810] didNavigateToFrequentlyVisitedSiteByAnyMeansWithAnalyticsPayload:v14];

      break;
    }
  }
}

- (id)_historyItemForFrequentlyVisitedItem:(id)item
{
  history = self->_history;
  v4 = MEMORY[0x1E695DFF8];
  address = [item address];
  v6 = [v4 URLWithString:address];
  v7 = [(WBSHistory *)history itemForURL:v6];

  return v7;
}

- (void)descriptionOfAllFrequentlyVisitedSitesForProblematicSiteURLString:(id)string completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __123__WBSFrequentlyVisitedSitesController_descriptionOfAllFrequentlyVisitedSitesForProblematicSiteURLString_completionHandler___block_invoke;
  v10[3] = &unk_1E8282F20;
  objc_copyWeak(&v13, &location);
  v11 = stringCopy;
  v12 = handlerCopy;
  v8 = stringCopy;
  v9 = handlerCopy;
  [(WBSFrequentlyVisitedSitesController *)self _recomputeFrequentlyVisitedSitesWithCompletionHandler:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __123__WBSFrequentlyVisitedSitesController_descriptionOfAllFrequentlyVisitedSitesForProblematicSiteURLString_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v27 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a3)
    {
      (*(*(a1 + 40) + 16))(*(a1 + 40));
    }

    v28 = [MEMORY[0x1E696AD60] string];
    v30 = [MEMORY[0x1E696AD60] string];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v27;
    v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v6)
    {
      v7 = *v32;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v31 + 1) + 8 * i);
          v10 = WeakRetained[3];
          v11 = MEMORY[0x1E695DFF8];
          v12 = [v9 url];
          v13 = [v11 URLWithString:v12];
          v14 = [v10 itemForURL:v13];

          v15 = *(a1 + 32);
          v16 = [v9 url];
          LODWORD(v15) = [v15 isEqualToString:v16];

          if (v15)
          {
            v17 = objc_opt_class();
            v18 = [v9 visitCountScore];
            v19 = [v14 lastVisitedDate];
            [v9 topSitesScore];
            v21 = [v17 descriptionOfFrequentlyVisitedSiteWithVisitCount:0 visitCountScore:v18 lastVisitedDate:v19 score:v20];
            [v28 appendString:v21];
          }

          v22 = objc_opt_class();
          v23 = [v9 visitCountScore];
          v24 = [v14 lastVisitedDate];
          [v9 topSitesScore];
          v26 = [v22 descriptionOfFrequentlyVisitedSiteWithVisitCount:0 visitCountScore:v23 lastVisitedDate:v24 score:v25];
          [v30 appendString:v26];
        }

        v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v6);
    }

    (*(*(a1 + 40) + 16))();
  }
}

+ (id)newRadarProblemURLWithInformationForProblematicFrequentlyVisitedSite:(id)site informationForOtherFrequentlyVisitedSites:(id)sites inProfile:(id)profile
{
  siteCopy = site;
  sitesCopy = sites;
  profileCopy = profile;
  if (([MEMORY[0x1E69C8880] isInternalInstall] & 1) == 0)
  {
    +[WBSFrequentlyVisitedSitesController newRadarProblemURLWithInformationForProblematicFrequentlyVisitedSite:informationForOtherFrequentlyVisitedSites:inProfile:];
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Frequently Visited Sites: <add description>"];
  safariStartPageIOS = [MEMORY[0x1E69C8F68] safariStartPageIOS];
  v12 = [MEMORY[0x1E696AD60] stringWithString:@"* SUMMARY\nProvide a detailed explanation of the issue.\n\n"];
  [v12 appendFormat:@"Profile identifier: %@\n", profileCopy];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  operatingSystemVersionString = [processInfo operatingSystemVersionString];
  [v12 appendFormat:@"Operating system: %@\n\n", operatingSystemVersionString];

  [v12 appendString:@"* DIAGNOSTIC INFORMATION FOR PROBLEMATIC SITE\n"];
  [v12 appendString:siteCopy];
  [v12 appendString:@"* DIAGNOSTIC INFORMATION FOR ALL SITES\n"];
  [v12 appendString:sitesCopy];
  v15 = [objc_alloc(MEMORY[0x1E69C8F60]) initWithComponent:safariStartPageIOS title:v10 descriptionTemplate:v12];
  continueInTapToRadarURL = [v15 continueInTapToRadarURL];

  return continueInTapToRadarURL;
}

+ (id)descriptionOfFrequentlyVisitedSiteWithVisitCount:(int)count visitCountScore:(int)score lastVisitedDate:(id)date score:(double)a6
{
  v7 = *&score;
  v8 = *&count;
  dateCopy = date;
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"Total visits: %d\n", v8];
  [string appendFormat:@"Visit count score: %d\n", v7];
  [string appendFormat:@"Last visited: %@\n", dateCopy];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [string appendFormat:@"Score time interval: %f\n", v11];
  [string appendFormat:@"Score: %f\n\n", *&a6];

  return string;
}

+ (id)lowerBoundForExcludingOutliersFromSortedCandidateScores:(id)scores
{
  scoresCopy = scores;
  mEMORY[0x1E69C90B0] = [MEMORY[0x1E69C90B0] shared];
  isDropOutliersInFrequentlyVisitedEnabled = [mEMORY[0x1E69C90B0] isDropOutliersInFrequentlyVisitedEnabled];

  if ((isDropOutliersInFrequentlyVisitedEnabled & 1) != 0 && [scoresCopy count] >= 2)
  {
    v7 = [scoresCopy count];
    v8 = [scoresCopy subarrayWithRange:{0, objc_msgSend(scoresCopy, "count") >> 1}];
    v9 = v7 >> 1;
    if ([scoresCopy count])
    {
      v10 = [scoresCopy count];
      ++v9;
    }

    else
    {
      v10 = [scoresCopy count];
    }

    v11 = [scoresCopy subarrayWithRange:{v9, v10 >> 1}];
    v12 = [objc_opt_class() _median:v11];
    v13 = [objc_opt_class() _median:v8];
    v14 = MEMORY[0x1E696AD98];
    [v13 doubleValue];
    v16 = v15;
    [v12 doubleValue];
    v18 = [v14 numberWithDouble:v16 - v17];
    v19 = MEMORY[0x1E696AD98];
    [v12 doubleValue];
    v21 = v20;
    [v18 doubleValue];
    v6 = [v19 numberWithDouble:v21 + v22 * -1.5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_median:(id)_median
{
  _medianCopy = _median;
  if (![_medianCopy count])
  {
    v5 = 0;
    goto LABEL_9;
  }

  if ([_medianCopy count] == 1)
  {
    firstObject = [_medianCopy firstObject];
  }

  else
  {
    v6 = [_medianCopy count];
    v7 = v6 >> 1;
    if (([_medianCopy count] & 1) == 0)
    {
      v8 = MEMORY[0x1E696AD98];
      v9 = [_medianCopy objectAtIndexedSubscript:v7 - 1];
      [v9 doubleValue];
      v11 = v10;
      v12 = [_medianCopy objectAtIndexedSubscript:v7];
      [v12 doubleValue];
      v5 = [v8 numberWithDouble:(v11 + v13) * 0.5];

      goto LABEL_9;
    }

    firstObject = [_medianCopy objectAtIndexedSubscript:v6 >> 1];
  }

  v5 = firstObject;
LABEL_9:

  return v5;
}

- (void)_recomputeFrequentlyVisitedSitesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _canonicalizedFavoritesURLStringSet = [(WBSFrequentlyVisitedSitesController *)self _canonicalizedFavoritesURLStringSet];
  urlStrings = [(WBSFrequentlyVisitedSitesBannedURLStore *)self->_bannedURLStore urlStrings];
  v7 = [_canonicalizedFavoritesURLStringSet setByAddingObjectsFromSet:urlStrings];

  _frequentlyVisitedSitesURLStringSet = [(WBSFrequentlyVisitedSitesController *)self _frequentlyVisitedSitesURLStringSet];
  history = self->_history;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v11 = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__WBSFrequentlyVisitedSitesController__recomputeFrequentlyVisitedSitesWithCompletionHandler___block_invoke;
  v13[3] = &unk_1E8282F48;
  v12 = handlerCopy;
  v13[4] = self;
  v14 = v12;
  [(WBSHistory *)history computeFrequentlyVisitedSites:12 minimalVisitCountScore:0 blockList:v7 allowList:_frequentlyVisitedSitesURLStringSet options:2 currentTime:v13 completionHandler:v11];
}

void __93__WBSFrequentlyVisitedSitesController__recomputeFrequentlyVisitedSitesWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) _excludeOutliersBasedOnScoreForFrequentlyVisited:a2];
  (*(v5 + 16))(v5, v6, v7);
}

- (id)_excludeOutliersBasedOnScoreForFrequentlyVisited:(id)visited
{
  visitedCopy = visited;
  if ([visitedCopy count])
  {
    v4 = [visitedCopy safari_mapObjectsUsingBlock:&__block_literal_global_0];
    v5 = [WBSFrequentlyVisitedSitesController lowerBoundForExcludingOutliersFromSortedCandidateScores:v4];
    v6 = v5;
    if (v5 && ([v5 doubleValue], v7 > 0.0))
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __88__WBSFrequentlyVisitedSitesController__excludeOutliersBasedOnScoreForFrequentlyVisited___block_invoke_89;
      v13[3] = &unk_1E8282F90;
      v14 = v6;
      v8 = [visitedCopy safari_filterObjectsUsingBlock:v13];

      v9 = visitedCopy;
      visitedCopy = v8;
    }

    else
    {
      v10 = WBS_LOG_CHANNEL_PREFIXFrequentlyVisited();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C6968000, v10, OS_LOG_TYPE_INFO, "Excluding a negative outlier from frequently visited sites", buf, 2u);
      }

      v9 = 0;
    }

    v11 = visitedCopy;

    visitedCopy = v9;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

id __88__WBSFrequentlyVisitedSitesController__excludeOutliersBasedOnScoreForFrequentlyVisited___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x1E696AD98];
  [v2 topSitesScore];
  v4 = [v3 numberWithFloat:?];

  return v4;
}

BOOL __88__WBSFrequentlyVisitedSitesController__excludeOutliersBasedOnScoreForFrequentlyVisited___block_invoke_89(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 topSitesScore];
  v5 = v4;
  [*(a1 + 32) floatValue];
  v7 = v5 > v6;

  return v7;
}

id __74__WBSFrequentlyVisitedSitesController__recomputeFrequentlyVisitedSitesNow__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x1E69C8F50]);
  v4 = [v2 url];
  v5 = [v2 title];
  [v2 topSitesScore];
  v6 = [v3 initWithURLString:v4 title:v5 score:?];

  return v6;
}

void __74__WBSFrequentlyVisitedSitesController__recomputeFrequentlyVisitedSitesNow__block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__WBSFrequentlyVisitedSitesController__recomputeFrequentlyVisitedSitesNow__block_invoke_4;
    block[3] = &unk_1E8282FD8;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __74__WBSFrequentlyVisitedSitesController__recomputeFrequentlyVisitedSitesNow__block_invoke_4(uint64_t a1)
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  *(*(a1 + 32) + 32) = v2;
  v3 = *(a1 + 32);

  return [v3 _postFrequentlyVisitedSitesDidChangeNotification];
}

- (void)_postFrequentlyVisitedSitesDidChangeNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"FrequentlyVisitedSitesDidChange" object:self];
}

@end