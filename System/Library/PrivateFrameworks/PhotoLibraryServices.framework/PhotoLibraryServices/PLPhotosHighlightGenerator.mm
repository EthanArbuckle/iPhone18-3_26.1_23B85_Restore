@interface PLPhotosHighlightGenerator
+ (BOOL)_shouldUpdateKeyAssetForParentHighlight:(id)highlight withPrivateKeyAssetObjectID:(id)d andSharedKeyAssetObjectID:(id)iD;
+ (BOOL)assetEligibleForCuration:(id)curation;
+ (BOOL)assetEligibleForRecents:(id)recents;
+ (double)curationScoreForAsset:(id)asset;
+ (id)_bestAssetInAssets:(id)assets fallback:(BOOL)fallback;
+ (id)_provisionalKeyAssetForDayGroupHighlight:(id)highlight sharingConsideration:(int64_t)consideration;
+ (id)_provisionalKeyAssetForDayHighlight:(id)highlight sharingConsideration:(int64_t)consideration;
+ (id)_provisionalKeyAssetForMonthAndYearHighlight:(id)highlight sharingConsideration:(int64_t)consideration;
+ (id)lastHighlightTitlesUpdateDay;
+ (id)lastRecentHighlightUpdateDate;
+ (id)provisionalKeyAssetForHighlight:(id)highlight sharingConsideration:(int64_t)consideration;
+ (id)userDefaults;
+ (void)_updateMixedSharingCompositionKeyAssetRelationshipForHighlight:(id)highlight;
+ (void)_updateParentHighlightNeedingNewKeyAsset:(id)asset withProvisionalKeyAssetPrivate:(id)private andProvisionalKeyAssetShared:(id)shared updatedHighlights:(id)highlights;
+ (void)_updateTitlesForHighlight:(id)highlight dateRangeTitleGenerator:(id)generator options:(unint64_t)options filter:(unsigned __int16)filter;
+ (void)setLastHighlightTitlesUpdateDay:(id)day;
+ (void)setLastRecentHighlightUpdateDate:(id)date;
+ (void)updateKeyAssetForHighlights:(id)highlights;
+ (void)updateTitleForHighlights:(id)highlights forKind:(unsigned __int16)kind forceUpdateLocale:(BOOL)locale dateRangeTitleGenerator:(id)generator;
+ (void)updateTitlesForHighlight:(id)highlight dateRangeTitleGenerator:(id)generator options:(unint64_t)options;
- (BOOL)_highlightShouldNotBeVisible:(id)visible sharingConsideration:(int64_t)consideration;
- (BOOL)_setVisibilityStateForHighlight:(id)highlight shouldForceUpdate:(BOOL)update sharingConsideration:(int64_t)consideration;
- (BOOL)_updateHighlightProperties:(id)properties fromHighlightCluster:(id)cluster;
- (BOOL)setVisibilityStateForHighlight:(id)highlight shouldForceUpdate:(BOOL)update;
- (BOOL)shouldForceVisibilityStateUpdateForHighlight:(id)highlight highlightCluster:(id)cluster;
- (NSDateInterval)recentHighlightsDateInterval;
- (PLMomentGenerationDataManagement)dataManager;
- (PLPhotosHighlightClusterGenerator)highlightClusterGenerator;
- (PLPhotosHighlightGenerator)initWithDataManager:(id)manager frequentLocationManager:(id)locationManager localCreationDateCreator:(id)creator dateRangeTitleGenerator:(id)generator;
- (id)_collectMomentsRequiringReprocessingFromMoments:(id)moments withAllMoments:(id)allMoments;
- (id)_fetchAllMoments;
- (id)_fetchMomentsRequiringLocationProcessingWhenCoreRoutineIsAvailable;
- (id)_fetchMomentsRequiringLocationProcessingWhenFrequentLocationsAreAvailable;
- (id)_fetchMomentsRequiringLocationProcessingWhenFrequentLocationsChanged;
- (id)_highlightMomentClustersForMoments:(id)moments excludingMomentIds:(id)ids;
- (id)_highlightToReuseForMoments:(id)moments;
- (id)_insertDayGroupPhotosHighlightCluster:(id)cluster;
- (id)_recentHighlightsDateIntervalWithDate:(id)date;
- (id)fetchAllOngoingTripDayGroupHighlights;
- (id)fetchAllRecentHighlights;
- (id)updateElectedEventForUpdatedMonths:(id)months;
- (void)_consumeHighlightItemListChanges:(id)changes forKind:(unsigned __int16)kind rule:(id)rule resultBlock:(id)block;
- (void)_insertDayPhotosHighlightCluster:(id)cluster;
- (void)_resetProperties;
- (void)_updateDayGroupHighlight:(id)highlight withNewAssets:(id)assets;
- (void)_updateDayHighlight:(id)highlight withNewAssets:(id)assets;
- (void)beginGenerationWithAssets:(id)assets hiddenAssets:(id)hiddenAssets;
- (void)cleanupEmptyHighlights;
- (void)finishGeneration;
- (void)generateHighlightListForUpdatedHighlights:(id)highlights deletedHighlights:(id)deletedHighlights;
- (void)generateHighlightsForUpsertedMoments:(id)moments frequentLocationsDidChange:(BOOL)change;
- (void)markHighlightNeedingNewKeyAssetsWithAsset:(id)asset;
- (void)processCachedLocationOfInterest;
- (void)processRecentHighlights;
- (void)processUnprocessedMomentLocations;
- (void)registerHighlightsWithDeletedMoments:(id)moments;
- (void)resetDayGroupCurationForAsset:(id)asset;
- (void)resetPreviousRecentHighlightCurationForHighlight:(id)highlight;
- (void)updateCurationForHighlight:(id)highlight withAssetsBelongingToCuration:(id)curation;
- (void)updateHighlightTitles;
- (void)updateRecentHighlightCurationForHighlight:(id)highlight;
@end

@implementation PLPhotosHighlightGenerator

- (PLMomentGenerationDataManagement)dataManager
{
  WeakRetained = objc_loadWeakRetained(&self->_dataManager);

  return WeakRetained;
}

- (id)_collectMomentsRequiringReprocessingFromMoments:(id)moments withAllMoments:(id)allMoments
{
  v63 = *MEMORY[0x1E69E9840];
  momentsCopy = moments;
  allMomentsCopy = allMoments;
  Current = CFAbsoluteTimeGetCurrent();
  v43 = [momentsCopy mutableCopy];
  v8 = [allMomentsCopy count];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = momentsCopy;
  v45 = [obj countByEnumeratingWithState:&v46 objects:v62 count:16];
  if (v45)
  {
    v9 = *v47;
    v36 = v8 - 1;
    v37 = allMomentsCopy;
    v38 = *v47;
    do
    {
      v10 = 0;
      do
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v46 + 1) + 8 * v10);
        highlight = [v11 highlight];
        if (highlight)
        {
          v13 = PLMomentsGetLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            uuid = [v11 uuid];
            startDate = [v11 startDate];
            v14 = [startDate debugDescription];
            endDate = [v11 endDate];
            v15 = [endDate debugDescription];
            uuid2 = [highlight uuid];
            startDate2 = [highlight startDate];
            v17 = [startDate2 debugDescription];
            endDate2 = [highlight endDate];
            v19 = [endDate2 debugDescription];
            *buf = 138544643;
            v51 = uuid;
            v52 = 2113;
            v53 = v14;
            v54 = 2113;
            v55 = *&v15;
            v56 = 2114;
            v57 = uuid2;
            v58 = 2113;
            v59 = v17;
            v60 = 2113;
            v61 = v19;
            _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "[HighlightsGeneration] Trying to reprocess a moment that is still connected to a highlight. Moment: %{public}@, %{private}@, %{private}@, Highlight: %{public}@, %{private}@, %{private}@", buf, 0x3Eu);

            v9 = v38;
            allMomentsCopy = v37;
          }

          [v43 removeObject:v11];
        }

        else
        {
          v20 = [allMomentsCopy indexOfObject:v11];
          v21 = v20;
          if (v20)
          {
            if (v20 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_10;
            }

            v22 = [allMomentsCopy objectAtIndexedSubscript:v20 - 1];
            highlight2 = [v22 highlight];
            v24 = highlight2;
            if (highlight2 && ![highlight2 type])
            {
              moments = [v24 moments];
              [v43 unionSet:moments];
            }

            v9 = v38;
          }

          if (v21 < v36)
          {
            v26 = [allMomentsCopy objectAtIndexedSubscript:v21 + 1];
            highlight3 = [v26 highlight];
            v28 = highlight3;
            if (highlight3 && ![highlight3 type])
            {
              moments2 = [v28 moments];
              [v43 unionSet:moments2];
            }
          }
        }

LABEL_10:

        ++v10;
      }

      while (v45 != v10);
      v30 = [obj countByEnumeratingWithState:&v46 objects:v62 count:16];
      v45 = v30;
    }

    while (v30);
  }

  v31 = CFAbsoluteTimeGetCurrent();
  v32 = PLMomentsGetLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [v43 count];
    v34 = [obj count];
    *buf = 134218496;
    v51 = v33;
    v52 = 2048;
    v53 = v34;
    v54 = 2048;
    v55 = (v31 - Current) * 1000.0;
    _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEFAULT, "[HighlightsGeneration] Collected %lu moments requiring reprocessing from %lu moments without highlights took %f ms", buf, 0x20u);
  }

  return v43;
}

- (id)_highlightMomentClustersForMoments:(id)moments excludingMomentIds:(id)ids
{
  v38 = *MEMORY[0x1E69E9840];
  momentsCopy = moments;
  idsCopy = ids;
  array = [MEMORY[0x1E695DF70] array];
  v28 = idsCopy;
  v7 = [idsCopy mutableCopy];
  v8 = [MEMORY[0x1E695DFA8] set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = momentsCopy;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    v29 = v7;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        uniqueObjectID = [v14 uniqueObjectID];
        if (([v7 containsObject:uniqueObjectID] & 1) == 0)
        {
          [v7 addObject:uniqueObjectID];
          highlight = [v14 highlight];
          v17 = highlight;
          if (highlight)
          {
            uniqueObjectID2 = [highlight uniqueObjectID];
            if ([v8 containsObject:uniqueObjectID2])
            {

              v19 = 0;
LABEL_16:

              goto LABEL_17;
            }

            [v8 addObject:uniqueObjectID2];
            [v17 momentsSortedByTime];
            v22 = v11;
            v23 = v12;
            v24 = v9;
            v26 = v25 = v8;
            v19 = [[PLMomentCluster alloc] initWithMoments:v26];

            v8 = v25;
            v9 = v24;
            v12 = v23;
            v11 = v22;
            v7 = v29;
          }

          else
          {
            v20 = PLMomentsGetLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "[HighlightsGeneration] Fallback adding single moment to momentArray.", buf, 2u);
            }

            v21 = [PLMomentCluster alloc];
            v36 = v14;
            uniqueObjectID2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
            v19 = [(PLMomentCluster *)v21 initWithMoments:uniqueObjectID2];
          }

          if (v19)
          {
            [array addObject:v19];
          }

          goto LABEL_16;
        }

LABEL_17:
      }

      v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v11);
  }

  return array;
}

- (id)_fetchMomentsRequiringLocationProcessingWhenFrequentLocationsChanged
{
  dataManager = [(PLPhotosHighlightGenerator *)self dataManager];
  v5 = 0;
  v3 = [dataManager momentsRequiringLocationProcessingWhenFrequentLocationsChangedWithError:&v5];

  return v3;
}

- (id)_fetchMomentsRequiringLocationProcessingWhenFrequentLocationsAreAvailable
{
  dataManager = [(PLPhotosHighlightGenerator *)self dataManager];
  v5 = 0;
  v3 = [dataManager momentsRequiringLocationProcessingWhenFrequentLocationsAreAvailable:&v5];

  return v3;
}

- (id)_fetchMomentsRequiringLocationProcessingWhenCoreRoutineIsAvailable
{
  dataManager = [(PLPhotosHighlightGenerator *)self dataManager];
  v5 = 0;
  v3 = [dataManager momentsRequiringLocationProcessingWhenCoreRoutineIsAvailable:&v5];

  return v3;
}

- (id)_fetchAllMoments
{
  dataManager = [(PLPhotosHighlightGenerator *)self dataManager];
  v5 = 0;
  v3 = [dataManager allMomentsWithError:&v5];

  return v3;
}

- (id)_recentHighlightsDateIntervalWithDate:(id)date
{
  dateCopy = date;
  recentHighlightsDateInterval = self->_recentHighlightsDateInterval;
  if (!recentHighlightsDateInterval)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v7 = [currentCalendar pl_endOfPreviousDayForDate:dateCopy];
    v8 = [currentCalendar pl_dateByAddingDays:1 toDate:dateCopy];
    v9 = [currentCalendar pl_endOfDayForDate:v8];
    v10 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v7 endDate:v9];
    v11 = self->_recentHighlightsDateInterval;
    self->_recentHighlightsDateInterval = v10;

    recentHighlightsDateInterval = self->_recentHighlightsDateInterval;
  }

  v12 = recentHighlightsDateInterval;

  return recentHighlightsDateInterval;
}

- (NSDateInterval)recentHighlightsDateInterval
{
  v3 = +[PLMomentGenerationUtils today];
  v4 = [(PLPhotosHighlightGenerator *)self _recentHighlightsDateIntervalWithDate:v3];

  return v4;
}

- (void)cleanupEmptyHighlights
{
  v123 = *MEMORY[0x1E69E9840];
  v3 = PLMomentsGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "[HighlightsGeneration] Running periodic maintenance task to cleanup empty highlights", buf, 2u);
  }

  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [MEMORY[0x1E695DFA8] set];
  v85 = [MEMORY[0x1E695DFA8] set];
  dataManager = [(PLPhotosHighlightGenerator *)self dataManager];
  v114 = 0;
  v7 = [dataManager allEmptyPhotosHighlightsOfKind:0 error:&v114];
  v8 = v114;

  if (v7)
  {
    dataManager2 = [(PLPhotosHighlightGenerator *)self dataManager];
    v113 = v8;
    v10 = [dataManager2 allEmptyPhotosHighlightsOfKind:3 error:&v113];
    v11 = v113;

    if (v10)
    {
      v12 = [v7 count];
      v84 = v5;
      if (v12)
      {
        v13 = v12;
        v79 = objc_autoreleasePoolPush();
        v80 = v7;
        [v4 addObjectsFromArray:v7];
        v14 = PLMomentsGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v122 = v13;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "[HighlightsGeneration] Found %lu empty days. Cleaning up.", buf, 0xCu);
        }

        v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY childPhotosHighlights IN (%@)", v4];
        selfCopy = self;
        dataManager3 = [(PLPhotosHighlightGenerator *)self dataManager];
        v112 = v11;
        v78 = v15;
        v17 = [dataManager3 allPhotosHighlightsOfKind:1 withPredicate:v15 error:&v112];
        v82 = v112;

        v81 = v4;
        v18 = [v4 _pl_map:&__block_literal_global_48625];
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        obj = v17;
        v19 = [obj countByEnumeratingWithState:&v108 objects:v120 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v109;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v109 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v108 + 1) + 8 * i);
              childPhotosHighlights = [v23 childPhotosHighlights];
              v25 = [childPhotosHighlights _pl_map:&__block_literal_global_101];

              if ([v25 isSubsetOfSet:v18])
              {
                v26 = PLMomentsGetLog();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  uuid = [v23 uuid];
                  *buf = 138412290;
                  v122 = uuid;
                  v28 = v26;
                  v29 = "[HighlightsGeneration] Month %@ will be empty. Cleaning up.";
LABEL_19:
                  _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 0xCu);

                  v5 = v84;
                }
              }

              else
              {
                if ([v25 count])
                {
                  goto LABEL_21;
                }

                v26 = PLMomentsGetLog();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  uuid = [v23 uuid];
                  *buf = 138412290;
                  v122 = uuid;
                  v28 = v26;
                  v29 = "[HighlightsGeneration] Month %@ is empty. Cleaning up.";
                  goto LABEL_19;
                }
              }

              [v5 addObject:v23];
LABEL_21:
            }

            v20 = [obj countByEnumeratingWithState:&v108 objects:v120 count:16];
          }

          while (v20);
        }

        v30 = [v5 count];
        if (v30)
        {
          v31 = v30;
          context = objc_autoreleasePoolPush();
          v32 = PLMomentsGetLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v122 = v31;
            _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEFAULT, "[HighlightsGeneration] Found %lu empty months. Cleaning up.", buf, 0xCu);
          }

          v33 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY childPhotosHighlights IN (%@)", v5];
          dataManager4 = [(PLPhotosHighlightGenerator *)selfCopy dataManager];
          v107 = v82;
          v77 = v33;
          [dataManager4 allPhotosHighlightsOfKind:2 withPredicate:v33 error:&v107];
          v36 = v35 = v5;
          v74 = v107;

          v37 = [v35 _pl_map:&__block_literal_global_104];
          v103 = 0u;
          v104 = 0u;
          v105 = 0u;
          v106 = 0u;
          v83 = v36;
          v38 = [v83 countByEnumeratingWithState:&v103 objects:v119 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v104;
            do
            {
              for (j = 0; j != v39; ++j)
              {
                if (*v104 != v40)
                {
                  objc_enumerationMutation(v83);
                }

                v42 = *(*(&v103 + 1) + 8 * j);
                childPhotosHighlights2 = [v42 childPhotosHighlights];
                v44 = [childPhotosHighlights2 _pl_map:&__block_literal_global_107_48629];

                if ([v44 isSubsetOfSet:v37])
                {
                  v45 = PLMomentsGetLog();
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                  {
                    uuid2 = [v42 uuid];
                    *buf = 138412290;
                    v122 = uuid2;
                    v47 = v45;
                    v48 = "[HighlightsGeneration] Year %@ will be empty. Cleaning up.";
LABEL_37:
                    _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_DEFAULT, v48, buf, 0xCu);
                  }
                }

                else
                {
                  if ([v44 count])
                  {
                    goto LABEL_39;
                  }

                  v45 = PLMomentsGetLog();
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                  {
                    uuid2 = [v42 uuid];
                    *buf = 138412290;
                    v122 = uuid2;
                    v47 = v45;
                    v48 = "[HighlightsGeneration] Year %@ is empty. Cleaning up.";
                    goto LABEL_37;
                  }
                }

                [v85 addObject:v42];
LABEL_39:
              }

              v39 = [v83 countByEnumeratingWithState:&v103 objects:v119 count:16];
            }

            while (v39);
          }

          v49 = [v85 count];
          v4 = v81;
          if (v49)
          {
            v50 = v49;
            v51 = PLMomentsGetLog();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v122 = v50;
              _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_DEFAULT, "[HighlightsGeneration] Found %lu empty years. Cleaning up.", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(context);
          v52 = v74;
        }

        else
        {
          v4 = v81;
          v52 = v82;
        }

        objc_autoreleasePoolPop(v79);
        v11 = v52;
        v7 = v80;
      }

      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v55 = v4;
      v56 = [v55 countByEnumeratingWithState:&v99 objects:v118 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v100;
        do
        {
          for (k = 0; k != v57; ++k)
          {
            if (*v100 != v58)
            {
              objc_enumerationMutation(v55);
            }

            [*(*(&v99 + 1) + 8 * k) delete];
          }

          v57 = [v55 countByEnumeratingWithState:&v99 objects:v118 count:16];
        }

        while (v57);
      }

      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v60 = v84;
      v61 = [v60 countByEnumeratingWithState:&v95 objects:v117 count:16];
      if (v61)
      {
        v62 = v61;
        v63 = *v96;
        do
        {
          for (m = 0; m != v62; ++m)
          {
            if (*v96 != v63)
            {
              objc_enumerationMutation(v60);
            }

            [*(*(&v95 + 1) + 8 * m) delete];
          }

          v62 = [v60 countByEnumeratingWithState:&v95 objects:v117 count:16];
        }

        while (v62);
      }

      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v65 = v85;
      v66 = [v65 countByEnumeratingWithState:&v91 objects:v116 count:16];
      if (v66)
      {
        v67 = v66;
        v68 = *v92;
        do
        {
          for (n = 0; n != v67; ++n)
          {
            if (*v92 != v68)
            {
              objc_enumerationMutation(v65);
            }

            [*(*(&v91 + 1) + 8 * n) delete];
          }

          v67 = [v65 countByEnumeratingWithState:&v91 objects:v116 count:16];
        }

        while (v67);
      }

      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v53 = v10;
      v70 = [v53 countByEnumeratingWithState:&v87 objects:v115 count:16];
      if (v70)
      {
        v71 = v70;
        v72 = *v88;
        do
        {
          for (ii = 0; ii != v71; ++ii)
          {
            if (*v88 != v72)
            {
              objc_enumerationMutation(v53);
            }

            [*(*(&v87 + 1) + 8 * ii) delete];
          }

          v71 = [v53 countByEnumeratingWithState:&v87 objects:v115 count:16];
        }

        while (v71);
      }

      v5 = v84;
    }

    else
    {
      v54 = PLMomentsGetLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v122 = v11;
        _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_ERROR, "Cleanup Empty Day Group Highlights error:%@", buf, 0xCu);
      }

      v53 = 0;
    }
  }

  else
  {
    v53 = PLMomentsGetLog();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v122 = v8;
      _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_ERROR, "Cleanup Empty Day Highlights error:%@", buf, 0xCu);
    }

    v11 = v8;
  }
}

- (void)updateHighlightTitles
{
  v50[2] = *MEMORY[0x1E69E9840];
  v3 = PLMomentsGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "[HighlightsGeneration] Running periodic maintenance task to update highlight titles", buf, 2u);
  }

  v4 = +[PLMomentGenerationUtils today];
  lastHighlightTitlesUpdateDay = [objc_opt_class() lastHighlightTitlesUpdateDay];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v7 = [currentCalendar components:4 fromDate:v4];
  v8 = [currentCalendar components:4 fromDate:lastHighlightTitlesUpdateDay];
  year = [v7 year];
  v37 = v8;
  if (year == [v8 year])
  {
    v10 = [lastHighlightTitlesUpdateDay dateByAddingTimeInterval:-604800.0];
  }

  else
  {
    v44 = 0;
    [currentCalendar rangeOfUnit:4 startDate:&v44 interval:0 forDate:lastHighlightTitlesUpdateDay];
    v10 = v44;
  }

  v38 = v10;
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self.endDate >= %@", v10];
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind = %ld OR kind = %ld", 0, 3];
  v13 = MEMORY[0x1E696AB28];
  v35 = v12;
  v36 = v11;
  v50[0] = v11;
  v50[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v15 = [v13 andPredicateWithSubpredicates:v14];

  dataManager = [(PLPhotosHighlightGenerator *)self dataManager];
  v43 = 0;
  v17 = [dataManager allPhotosHighlightsWithPredicate:v15 error:&v43];
  v18 = v43;

  v19 = PLMomentsGetLog();
  v20 = v19;
  v34 = currentCalendar;
  if (v18)
  {
    v21 = v17;
    v22 = v8;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v47 = v18;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "[HighlightsGeneration] Error while fetching highlights needing title update: %@", buf, 0xCu);
    }
  }

  else
  {
    v31 = v7;
    v32 = lastHighlightTitlesUpdateDay;
    v33 = v4;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v17 count];
      *buf = 134218242;
      v47 = v23;
      v48 = 2112;
      v49 = v38;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "[HighlightsGeneration] Running on %lu highlights, since date %@", buf, 0x16u);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = v17;
    v24 = v17;
    v25 = [v24 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v40;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v40 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v39 + 1) + 8 * i);
          v30 = objc_autoreleasePoolPush();
          [objc_opt_class() updateTitlesForHighlight:v29 dateRangeTitleGenerator:self->_dateRangeTitleGenerator options:1];
          objc_autoreleasePoolPop(v30);
        }

        v26 = [v24 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v26);
    }

    v4 = v33;
    [objc_opt_class() setLastHighlightTitlesUpdateDay:v33];
    v7 = v31;
    lastHighlightTitlesUpdateDay = v32;
    v22 = v37;
  }
}

- (void)processUnprocessedMomentLocations
{
  v128 = *MEMORY[0x1E69E9840];
  v3 = PLMomentGenerationGetLog();
  v4 = os_signpost_id_generate(v3);
  info = 0;
  mach_timebase_info(&info);
  v5 = v3;
  v6 = v5;
  v85 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ProcessUnprocessedMomentLocations", "", buf, 2u);
  }

  spid = v4;

  v83 = mach_absolute_time();
  WeakRetained = objc_loadWeakRetained(&self->_dataManager);
  [WeakRetained fetchLocationsOfInterestIfNeeded];
  v90 = WeakRetained;
  routineIsAvailable = [WeakRetained routineIsAvailable];
  v88 = [MEMORY[0x1E695DFA8] set];
  currentFrequentLocations = [(PLFrequentLocationManager *)self->_frequentLocationManager currentFrequentLocations];

  v86 = v6;
  if (currentFrequentLocations)
  {
    _fetchAllMoments = [(PLPhotosHighlightGenerator *)self _fetchAllMoments];
    dataManager = [(PLPhotosHighlightGenerator *)self dataManager];
    v12 = [objc_opt_class() processingMomentsFromMoments:_fetchAllMoments];

    v103 = [(PLFrequentLocationManager *)self->_frequentLocationManager frequentLocationsDidChangeFromUpdateWithMoments:v12];
    if (v103)
    {
      [(PLPhotosHighlightGenerator *)self _fetchMomentsRequiringLocationProcessingWhenFrequentLocationsChanged];
    }

    else
    {
      [(PLPhotosHighlightGenerator *)self _fetchMomentsRequiringLocationProcessingWhenFrequentLocationsAreAvailable];
    }
    v13 = ;
    [v88 addObjectsFromArray:v13];
  }

  else
  {
    v103 = 0;
  }

  v14 = @"unavailable";
  if (routineIsAvailable)
  {
    _fetchMomentsRequiringLocationProcessingWhenCoreRoutineIsAvailable = [(PLPhotosHighlightGenerator *)self _fetchMomentsRequiringLocationProcessingWhenCoreRoutineIsAvailable];
    [v88 addObjectsFromArray:_fetchMomentsRequiringLocationProcessingWhenCoreRoutineIsAvailable];

    v14 = @"available";
  }

  v16 = @"available";
  if (!currentFrequentLocations)
  {
    v16 = @"unavailable";
  }

  *&v17 = COERCE_DOUBLE(v16);
  v18 = @"did not change";
  if (v103)
  {
    v18 = @"changed";
  }

  v19 = v18;
  v20 = [v88 count];
  currentFrequentLocations2 = PLMomentsGetLog();
  v22 = os_log_type_enabled(currentFrequentLocations2, OS_LOG_TYPE_DEFAULT);
  v87 = v19;
  if (v20)
  {
    if (v22)
    {
      *buf = 138412802;
      v123 = v14;
      v124 = 2112;
      v125 = *&v17;
      v126 = 2112;
      v127 = v19;
      _os_log_impl(&dword_19BF1F000, currentFrequentLocations2, OS_LOG_TYPE_DEFAULT, "[HighlightsGeneration] Running periodic maintenance task to update moment processed locations, routine %@ and frequent locations %@ (%@)", buf, 0x20u);
    }

    v84 = v17;

    selfCopy = self;
    currentFrequentLocations2 = [(PLFrequentLocationManager *)self->_frequentLocationManager currentFrequentLocations];
    v101 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    obj = v88;
    v23 = [obj countByEnumeratingWithState:&v114 objects:v121 count:16];
    v24 = v90;
    if (v23)
    {
      v25 = v23;
      v26 = 0;
      v27 = *v115;
      v102 = currentFrequentLocations2;
      v89 = *v115;
      do
      {
        v28 = 0;
        v91 = v25;
        do
        {
          if (*v115 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v114 + 1) + 8 * v28);
          v30 = objc_autoreleasePoolPush();
          if (v26 >= 0x64)
          {
            if ([v24 hasChanges])
            {
              v113 = 0;
              v31 = [v24 save:&v113];
              v32 = v113;
              if ((v31 & 1) == 0)
              {
                v33 = PLMomentsGetLog();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v123 = v32;
                  _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "[HighlightsGeneration] Error saving changes while processing location, error: %@", buf, 0xCu);
                }
              }
            }

            v26 = 0;
          }

          v98 = v30;
          v99 = v26;
          assets = [v29 assets];
          anyObject = [assets anyObject];
          assetComparisonSortDescriptors = [anyObject assetComparisonSortDescriptors];
          v37 = assetComparisonSortDescriptors;
          v38 = MEMORY[0x1E695E0F0];
          if (assetComparisonSortDescriptors)
          {
            v38 = assetComparisonSortDescriptors;
          }

          v39 = v38;

          v96 = v39;
          v97 = assets;
          v40 = [assets sortedArrayUsingDescriptors:v39];
          v94 = [[PLCompactMomentClustering alloc] initWithDataManager:v24 frequentLocations:currentFrequentLocations2];
          v95 = v40;
          v100 = [(PLCompactMomentClustering *)v94 createAssetClustersForAssetsInDay:v40];
          v41 = [v100 count];
          if (v41 == 1)
          {
            processedLocation = [v29 processedLocation];
            [PLMomentGenerationUtils processLocationIfNecessaryInMoment:v29 usingManager:v24 frequentLocations:currentFrequentLocations2 frequentLocationsDidChange:v103];
            v43 = processedLocation == [v29 processedLocation];
            v45 = v98;
            v44 = v99;
            if (v43)
            {
              goto LABEL_62;
            }

            v93 = v28;
            uniqueObjectID = [v29 uniqueObjectID];
            [v101 addObject:uniqueObjectID];
          }

          else
          {
            v47 = v41;
            v48 = PLMomentsGetLog();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              uuid = [v29 uuid];
              *buf = 138412546;
              v123 = uuid;
              v124 = 1024;
              LODWORD(v125) = v47;
              _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_INFO, "[HighlightsGeneration] Split assets in moment with uuid %@ into %d separate moments", buf, 0x12u);
            }

            v93 = v28;

            v111 = 0u;
            v112 = 0u;
            v109 = 0u;
            v110 = 0u;
            v50 = v100;
            v51 = [v50 countByEnumeratingWithState:&v109 objects:v120 count:16];
            if (v51)
            {
              v52 = v51;
              uniqueObjectID = 0;
              v53 = 0;
              v54 = *v110;
              do
              {
                for (i = 0; i != v52; ++i)
                {
                  if (*v110 != v54)
                  {
                    objc_enumerationMutation(v50);
                  }

                  v56 = *(*(&v109 + 1) + 8 * i);
                  assets2 = [v56 assets];
                  v58 = [assets2 count];

                  if (v58 > v53)
                  {
                    v59 = v56;

                    uniqueObjectID = v59;
                    v53 = v58;
                  }
                }

                v52 = [v50 countByEnumeratingWithState:&v109 objects:v120 count:16];
              }

              while (v52);
            }

            else
            {
              uniqueObjectID = 0;
            }

            v107 = 0u;
            v108 = 0u;
            v105 = 0u;
            v106 = 0u;
            v60 = v50;
            v61 = [v60 countByEnumeratingWithState:&v105 objects:v119 count:16];
            v24 = v90;
            if (v61)
            {
              v62 = v61;
              v63 = *v106;
              do
              {
                for (j = 0; j != v62; ++j)
                {
                  if (*v106 != v63)
                  {
                    objc_enumerationMutation(v60);
                  }

                  v65 = *(*(&v105 + 1) + 8 * j);
                  if (v65 == uniqueObjectID)
                  {
                    v66 = v29;
                  }

                  else
                  {
                    v66 = 0;
                  }

                  v67 = v66;
                  v68 = [PLAssetCollectionGenerator createMomentOrUpdateForAssetCluster:v65 affectedMoment:v67 dataManager:v90];
                  [PLMomentGenerationUtils processLocationIfNecessaryInMoment:v68 usingManager:v90 frequentLocations:v102 frequentLocationsDidChange:v103];
                  uniqueObjectID2 = [v29 uniqueObjectID];

                  [v101 addObject:uniqueObjectID2];
                }

                v62 = [v60 countByEnumeratingWithState:&v105 objects:v119 count:16];
              }

              while (v62);
            }

            currentFrequentLocations2 = v102;
            v27 = v89;
            v25 = v91;
            v45 = v98;
            v44 = v99;
            assets = v97;
          }

          v28 = v93;
LABEL_62:
          v26 = v44 + 1;

          objc_autoreleasePoolPop(v45);
          ++v28;
        }

        while (v28 != v25);
        v25 = [obj countByEnumeratingWithState:&v114 objects:v121 count:16];
      }

      while (v25);
    }

    v104 = 0;
    v70 = [v24 momentsWithUniqueIDs:v101 error:&v104];
    v71 = v104;
    if (v70)
    {
      v72 = [MEMORY[0x1E695DFD8] set];
      [(PLPhotosHighlightGenerator *)selfCopy beginGenerationWithAssets:v72 hiddenAssets:MEMORY[0x1E695E0F0]];

      v73 = [MEMORY[0x1E695DFD8] setWithArray:v70];
      [(PLPhotosHighlightGenerator *)selfCopy generateHighlightsForUpsertedMoments:v73 frequentLocationsDidChange:v103];

      [(PLPhotosHighlightGenerator *)selfCopy finishGeneration];
      v74 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v77 = v86;
      v78 = v86;
      v79 = v78;
      if (v85 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v78))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19BF1F000, v79, OS_SIGNPOST_INTERVAL_END, spid, "ProcessUnprocessedMomentLocations", "", buf, 2u);
      }

      if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v123 = "ProcessUnprocessedMomentLocations";
        v124 = 2048;
        v125 = ((((v74 - v83) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_19BF1F000, v79, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }
    }

    else
    {
      v80 = PLMomentsGetLog();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v123 = v71;
        _os_log_impl(&dword_19BF1F000, v80, OS_LOG_TYPE_DEFAULT, "[HighlightsGeneration] Failed to fetch moments with updated locations with error: %@", buf, 0xCu);
      }

      v77 = v86;
    }

    v17 = v84;
  }

  else
  {
    v77 = v86;
    if (v22)
    {
      *buf = 138412802;
      v123 = v14;
      v124 = 2112;
      v125 = *&v17;
      v126 = 2112;
      v127 = v87;
      _os_log_impl(&dword_19BF1F000, currentFrequentLocations2, OS_LOG_TYPE_DEFAULT, "[HighlightsGeneration] Periodic maintenance task to update moment processed locations completed without processing any moments, routine %@ and frequent locations %@ (%@)", buf, 0x20u);
    }
  }
}

- (void)processCachedLocationOfInterest
{
  v95 = *MEMORY[0x1E69E9840];
  v3 = PLMomentGenerationGetLog();
  v4 = os_signpost_id_generate(v3);
  info = 0;
  mach_timebase_info(&info);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ProcessCachedLocationOfInterest", "", buf, 2u);
  }

  v7 = mach_absolute_time();
  WeakRetained = objc_loadWeakRetained(&self->_dataManager);
  [WeakRetained fetchLocationsOfInterestIfNeeded];
  if ([WeakRetained routineIsAvailable])
  {
    locationsOfInterest = [WeakRetained locationsOfInterest];
    v10 = [locationsOfInterest count];
    if (!v10)
    {
      v13 = PLMomentsGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "[HighlightsGeneration] Periodic maintenance task to update cached location of interest completed without any location of interest", buf, 2u);
      }

      goto LABEL_72;
    }

    v11 = *&v10;
    v61 = v4 - 1;
    v85 = 0;
    v12 = [WeakRetained momentsRequiringLocationOfInterestUpdateWithError:&v85];
    v13 = v85;
    v14 = [v12 count];
    v62 = v12;
    if (!v12 || v13)
    {
      v16 = PLMomentsGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v92 = v13;
        v53 = "[HighlightsGeneration] Periodic maintenance task to update cached location of interest failed to fetch relevant moments: %@";
        v54 = v16;
        v55 = OS_LOG_TYPE_ERROR;
        v56 = 12;
LABEL_70:
        _os_log_impl(&dword_19BF1F000, v54, v55, v53, buf, v56);
      }
    }

    else
    {
      v15 = v14;
      v60 = v7;
      spid = v4;
      v16 = PLMomentsGetLog();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        v58 = WeakRetained;
        v59 = v6;
        if (v17)
        {
          *buf = 134218240;
          v92 = v15;
          v93 = 2048;
          v94 = v11;
          _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "[HighlightsGeneration] Running periodic maintenance task to update cached location of interest on %tu moments, with %tu location of interest", buf, 0x16u);
        }

        v65 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        obj = v12;
        v68 = [obj countByEnumeratingWithState:&v81 objects:v90 count:16];
        if (v68)
        {
          v66 = *v82;
          v18 = *MEMORY[0x1E6985C30];
          v64 = locationsOfInterest;
          do
          {
            for (i = 0; i != v68; ++i)
            {
              if (*v82 != v66)
              {
                objc_enumerationMutation(obj);
              }

              v20 = *(*(&v81 + 1) + 8 * i);
              approximateLocation = [v20 approximateLocation];
              v22 = v67;
              if (!approximateLocation)
              {
                goto LABEL_37;
              }

              v79 = 0u;
              v80 = 0u;
              v77 = 0u;
              v78 = 0u;
              v23 = locationsOfInterest;
              v24 = [v23 countByEnumeratingWithState:&v77 objects:v89 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v78;
                v27 = 6;
                v28 = v18;
                do
                {
                  for (j = 0; j != v25; ++j)
                  {
                    if (*v78 != v26)
                    {
                      objc_enumerationMutation(v23);
                    }

                    v30 = *(*(&v77 + 1) + 8 * j);
                    [v30 distanceFromLocation:approximateLocation];
                    v32 = v31;
                    if (v31 <= 50.0 && v31 < v28)
                    {
                      type = [v30 type];
                      if (type == 1)
                      {
                        v27 = 4;
                      }

                      else if (!type)
                      {
                        v27 = 3;
                      }

                      v28 = v32;
                    }
                  }

                  v25 = [v23 countByEnumeratingWithState:&v77 objects:v89 count:16];
                }

                while (v25);
              }

              else
              {
                v27 = 6;
              }

              v35 = [v20 processedLocation] == v27;
              locationsOfInterest = v64;
              v22 = v65;
              if (!v35)
              {
LABEL_37:
                [v22 addObject:v20];
              }
            }

            v68 = [obj countByEnumeratingWithState:&v81 objects:v90 count:16];
          }

          while (v68);
        }

        v36 = PLMomentsGetLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [v65 count];
          v38 = COERCE_DOUBLE([v67 count]);
          *buf = 134218240;
          v92 = v37;
          v93 = 2048;
          v94 = v38;
          _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEFAULT, "[HighlightsGeneration] Found %tu moments needing processed location reset, and %tu moment without location anymore", buf, 0x16u);
        }

        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v16 = v65;
        v39 = [v16 countByEnumeratingWithState:&v73 objects:v88 count:16];
        v6 = v59;
        v13 = 0;
        if (v39)
        {
          v40 = v39;
          v41 = *v74;
          do
          {
            for (k = 0; k != v40; ++k)
            {
              if (*v74 != v41)
              {
                objc_enumerationMutation(v16);
              }

              [*(*(&v73 + 1) + 8 * k) setProcessedLocation:0];
            }

            v40 = [v16 countByEnumeratingWithState:&v73 objects:v88 count:16];
          }

          while (v40);
        }

        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v43 = v67;
        v44 = [v43 countByEnumeratingWithState:&v69 objects:v87 count:16];
        WeakRetained = v58;
        if (v44)
        {
          v45 = v44;
          v46 = *v70;
          do
          {
            for (m = 0; m != v45; ++m)
            {
              if (*v70 != v46)
              {
                objc_enumerationMutation(v43);
              }

              [*(*(&v69 + 1) + 8 * m) setProcessedLocation:2];
            }

            v45 = [v43 countByEnumeratingWithState:&v69 objects:v87 count:16];
          }

          while (v45);
        }

        v48 = mach_absolute_time();
        numer = info.numer;
        denom = info.denom;
        v51 = v59;
        v52 = v51;
        if (v61 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v52, OS_SIGNPOST_INTERVAL_END, spid, "ProcessCachedLocationOfInterest", "", buf, 2u);
        }

        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v92 = "ProcessCachedLocationOfInterest";
          v93 = 2048;
          v94 = ((((v48 - v60) * numer) / denom) / 1000000.0);
          _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        goto LABEL_71;
      }

      if (v17)
      {
        *buf = 0;
        v53 = "[HighlightsGeneration] Periodic maintenance task to update cached location of interest completed without processing any moments";
        v54 = v16;
        v55 = OS_LOG_TYPE_DEFAULT;
        v56 = 2;
        goto LABEL_70;
      }
    }

LABEL_71:

LABEL_72:
    goto LABEL_73;
  }

  locationsOfInterest = PLMomentsGetLog();
  if (os_log_type_enabled(locationsOfInterest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, locationsOfInterest, OS_LOG_TYPE_DEFAULT, "[HighlightsGeneration] Periodic maintenance task to update cached location of interest could not run: CoreRoutine is not available", buf, 2u);
  }

LABEL_73:
}

- (void)processRecentHighlights
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = PLMomentsGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "[HighlightsGeneration] Running periodic maintenance task to update recent Highlights", buf, 2u);
  }

  v41 = +[PLMomentGenerationUtils today];
  recentHighlightsDateInterval = self->_recentHighlightsDateInterval;
  self->_recentHighlightsDateInterval = 0;

  fetchAllRecentHighlights = [(PLPhotosHighlightGenerator *)self fetchAllRecentHighlights];
  v6 = [MEMORY[0x1E695DFA8] set];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v7 = fetchAllRecentHighlights;
  v8 = [v7 countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v52;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v52 != v10)
        {
          objc_enumerationMutation(v7);
        }

        moments = [*(*(&v51 + 1) + 8 * i) moments];
        [v6 unionSet:moments];
      }

      v9 = [v7 countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v9);
  }

  v40 = v7;

  selfCopy = self;
  fetchAllOngoingTripDayGroupHighlights = [(PLPhotosHighlightGenerator *)self fetchAllOngoingTripDayGroupHighlights];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v14 = [fetchAllOngoingTripDayGroupHighlights countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v48;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(fetchAllOngoingTripDayGroupHighlights);
        }

        v18 = *(*(&v47 + 1) + 8 * j);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        childDayGroupPhotosHighlights = [v18 childDayGroupPhotosHighlights];
        v20 = [childDayGroupPhotosHighlights countByEnumeratingWithState:&v43 objects:v56 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v44;
          do
          {
            for (k = 0; k != v21; ++k)
            {
              if (*v44 != v22)
              {
                objc_enumerationMutation(childDayGroupPhotosHighlights);
              }

              moments2 = [*(*(&v43 + 1) + 8 * k) moments];
              [v6 unionSet:moments2];
            }

            v21 = [childDayGroupPhotosHighlights countByEnumeratingWithState:&v43 objects:v56 count:16];
          }

          while (v21);
        }
      }

      v15 = [fetchAllOngoingTripDayGroupHighlights countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v15);
  }

  p_isa = &selfCopy->super.isa;
  if (+[PLAggregationProcessor isEnabled])
  {
    v26 = +[PLAggregationProcessor allowedStartDateToAggregate];
    lastRecentHighlightUpdateDate = [objc_opt_class() lastRecentHighlightUpdateDate];
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    v29 = [lastRecentHighlightUpdateDate isEqualToDate:distantPast];

    if (v29)
    {
      v30 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v26 endDate:v41];
      if (!v30)
      {
        goto LABEL_33;
      }
    }

    else
    {
      +[PLAggregationProcessor timeIntervalOfRecentContentToIgnore];
      v32 = [lastRecentHighlightUpdateDate dateByAddingTimeInterval:-v31];
      if ([v32 compare:v26] == -1)
      {
        v30 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v32 endDate:v26];
      }

      else
      {
        v30 = 0;
      }

      if (!v30)
      {
        goto LABEL_33;
      }
    }

    dataManager = [(PLPhotosHighlightGenerator *)selfCopy dataManager];
    v34 = [dataManager momentsIntersectingDateInterval:v30];

    [v6 addObjectsFromArray:v34];
    p_isa = &selfCopy->super.isa;
LABEL_33:
  }

  _fetchAllMoments = [p_isa _fetchAllMoments];
  dataManager2 = [p_isa dataManager];
  v37 = [objc_opt_class() processingMomentsFromMoments:_fetchAllMoments];

  v38 = [p_isa[3] frequentLocationsDidChangeFromUpdateWithMoments:v37];
  v39 = [MEMORY[0x1E695DFD8] set];
  [p_isa beginGenerationWithAssets:v39 hiddenAssets:MEMORY[0x1E695E0F0]];

  [p_isa generateHighlightsForUpsertedMoments:v6 frequentLocationsDidChange:v38];
  [p_isa finishGeneration];
  [objc_opt_class() setLastRecentHighlightUpdateDate:v41];
}

- (void)finishGeneration
{
  v43 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(PLPhotosHighlightGenerator *)self highlightsToDelete];
  v25 = [obj countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v25)
  {
    v24 = *v32;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v31 + 1) + 8 * i);
        moments = [v3 moments];
        v5 = [moments count];
        if (v5)
        {
          v23 = v5;
          v26 = v3;
          v6 = [@"[" mutableCopy];
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v7 = moments;
          v8 = [v7 countByEnumeratingWithState:&v27 objects:v41 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = 0;
            v11 = *v28;
            do
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v28 != v11)
                {
                  objc_enumerationMutation(v7);
                }

                v13 = *(*(&v27 + 1) + 8 * j);
                if (v10)
                {
                  [v6 appendString:{@", "}];
                }

                uuid = [v13 uuid];
                [v6 appendString:uuid];

                v10 = 1;
              }

              v9 = [v7 countByEnumeratingWithState:&v27 objects:v41 count:16];
            }

            while (v9);
          }

          [v6 appendString:@"]"];
          v15 = PLMomentsGetLog();
          v3 = v26;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            uuid2 = [v26 uuid];
            *buf = 138412802;
            v36 = uuid2;
            v37 = 2048;
            v38 = v23;
            v39 = 2112;
            v40 = v6;
            _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_FAULT, "Highlight(%@) being deleted has %lu moments(%@)", buf, 0x20u);
          }
        }

        [v3 delete];
      }

      v25 = [obj countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v25);
  }

  highlightsNeedingNewKeyAsset = [(PLPhotosHighlightGenerator *)self highlightsNeedingNewKeyAsset];
  v18 = [highlightsNeedingNewKeyAsset count];

  if (v18)
  {
    v19 = objc_opt_class();
    highlightsNeedingNewKeyAsset2 = [(PLPhotosHighlightGenerator *)self highlightsNeedingNewKeyAsset];
    [v19 updateKeyAssetForHighlights:highlightsNeedingNewKeyAsset2];
  }

  [(PLPhotosHighlightGenerator *)self setDidCallBeginGeneration:0];
}

- (BOOL)_updateHighlightProperties:(id)properties fromHighlightCluster:(id)cluster
{
  propertiesCopy = properties;
  clusterCopy = cluster;
  startDate = [propertiesCopy startDate];
  endDate = [propertiesCopy endDate];
  LODWORD(cluster) = [propertiesCopy type];
  kind = [propertiesCopy kind];
  category = [propertiesCopy category];
  startTimeZoneOffset = [propertiesCopy startTimeZoneOffset];
  endTimeZoneOffset = [propertiesCopy endTimeZoneOffset];
  startDate2 = [clusterCopy startDate];
  endDate2 = [clusterCopy endDate];
  type = [clusterCopy type];
  kind2 = [clusterCopy kind];
  category2 = [clusterCopy category];
  startTimeZoneOffset2 = [clusterCopy startTimeZoneOffset];
  endTimeZoneOffset2 = [clusterCopy endTimeZoneOffset];

  v14 = cluster != type;
  if (cluster != type)
  {
    [propertiesCopy setType:type];
  }

  if (kind != kind2)
  {
    [propertiesCopy setKind:kind2];
    v14 = 1;
  }

  if (category != category2)
  {
    [propertiesCopy setCategory:category2];
    v14 = 1;
  }

  if (([startDate isEqualToDate:startDate2] & 1) == 0)
  {
    [propertiesCopy setStartDate:startDate2];
    v14 = 1;
  }

  if (([endDate isEqualToDate:endDate2] & 1) == 0)
  {
    [propertiesCopy setEndDate:endDate2];
    v14 = 1;
  }

  if (startTimeZoneOffset != startTimeZoneOffset2)
  {
    [propertiesCopy setStartTimeZoneOffset:startTimeZoneOffset2];
    v14 = 1;
  }

  if (endTimeZoneOffset != endTimeZoneOffset2)
  {
    [propertiesCopy setEndTimeZoneOffset:?];
    v14 = 1;
  }

  return v14;
}

- (id)_insertDayGroupPhotosHighlightCluster:(id)cluster
{
  v66 = *MEMORY[0x1E69E9840];
  clusterCopy = cluster;
  moments = [clusterCopy moments];
  v55 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v5 = [MEMORY[0x1E695DFA8] set];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v6 = moments;
  v7 = [v6 countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v61;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v61 != v9)
        {
          objc_enumerationMutation(v6);
        }

        highlight = [*(*(&v60 + 1) + 8 * i) highlight];
        v12 = highlight;
        if (highlight && ([highlight isDeleted] & 1) == 0)
        {
          [v5 addObject:v12];
          parentDayGroupPhotosHighlight = [v12 parentDayGroupPhotosHighlight];
          v14 = parentDayGroupPhotosHighlight;
          if (parentDayGroupPhotosHighlight)
          {
            if (([parentDayGroupPhotosHighlight isDeleted] & 1) == 0)
            {
              upsertedHighlights = [(PLPhotosHighlightGenerator *)self upsertedHighlights];
              v16 = [upsertedHighlights containsObject:v14];

              if ((v16 & 1) == 0)
              {
                [v55 addObject:v14];
              }
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v8);
  }

  anyObject = [v55 anyObject];
  v18 = anyObject;
  if (anyObject && ![anyObject isDeleted])
  {
    v21 = 0;
  }

  else
  {
    dataManager = [(PLPhotosHighlightGenerator *)self dataManager];
    insertNewPhotosHighlight = [dataManager insertNewPhotosHighlight];

    [insertNewPhotosHighlight setPromotionScore:0.3];
    v21 = 1;
    v18 = insertNewPhotosHighlight;
  }

  upsertedHighlights2 = [(PLPhotosHighlightGenerator *)self upsertedHighlights];
  [upsertedHighlights2 addObject:v18];

  v23 = clusterCopy;
  v24 = (v21 & 1) != 0 || [(PLPhotosHighlightGenerator *)self shouldForceVisibilityStateUpdateForHighlight:v18 highlightCluster:clusterCopy];
  v25 = [(PLPhotosHighlightGenerator *)self _updateHighlightProperties:v18 fromHighlightCluster:clusterCopy];
  highlightsWithDeletedAssets = [(PLPhotosHighlightGenerator *)self highlightsWithDeletedAssets];
  v53 = [highlightsWithDeletedAssets containsObject:v18];

  assets = [clusterCopy assets];
  v28 = assets;
  if ((v21 & 1) == 0)
  {
    v29 = [assets count];
    dayGroupAssets = [v18 dayGroupAssets];
    if ([dayGroupAssets count] == v29 && (objc_msgSend(dayGroupAssets, "isEqualToSet:", v28) & 1) != 0)
    {
      if (!v25)
      {
        v51 = v25;
        v31 = v5;
        childDayGroupPhotosHighlights = [v18 childDayGroupPhotosHighlights];
        v33 = v31;
        v34 = [v31 count];
        if (v34 == [childDayGroupPhotosHighlights count])
        {
          v35 = v33;
          v36 = [v33 isEqualToSet:childDayGroupPhotosHighlights];

          v25 = v51;
          if (v36)
          {
            v37 = 0;
            v38 = 0;
            v28 = 0;
            goto LABEL_38;
          }

LABEL_50:
          [v18 setChildDayGroupPhotosHighlights:v5];
          v37 = 0;
          v28 = 0;
          v38 = 1;
          goto LABEL_38;
        }

        v25 = v51;
      }

      goto LABEL_50;
    }

    v50 = v24;
    v52 = v25;
    v48 = [v28 mutableCopy];
    [v48 minusSet:dayGroupAssets];
    v49 = dayGroupAssets;
    v39 = [dayGroupAssets mutableCopy];
    [v39 minusSet:v28];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v40 = v39;
    v41 = [v40 countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v57;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v57 != v43)
          {
            objc_enumerationMutation(v40);
          }

          [(PLPhotosHighlightGenerator *)self resetDayGroupCurationForAsset:*(*(&v56 + 1) + 8 * j)];
        }

        v42 = [v40 countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v42);
    }

    v28 = v48;
    v23 = clusterCopy;
    v24 = v50;
    v25 = v52;
  }

  assets2 = [v23 assets];
  [v18 setDayGroupAssets:assets2];

  [v18 setChildDayGroupPhotosHighlights:v5];
  v37 = 1;
  v38 = 1;
  if (v21)
  {
LABEL_41:
    [(PLPhotosHighlightGenerator *)self updateCurationForHighlight:v18 withAssetsBelongingToCuration:v28];
    goto LABEL_42;
  }

LABEL_38:
  if (([v28 count] != 0) | v53 & 1 || (objc_msgSend(v18, "missingKeyAssetForKindShared") & 1) != 0 || objc_msgSend(v18, "missingKeyAssetForKindPrivate"))
  {
    goto LABEL_41;
  }

LABEL_42:
  v46 = [(PLPhotosHighlightGenerator *)self setVisibilityStateForHighlight:v18 shouldForceUpdate:v24];
  if (((v25 | v37 | v38) & 1) != 0 || v46)
  {
    [objc_opt_class() updateTitlesForHighlight:v18 dateRangeTitleGenerator:self->_dateRangeTitleGenerator options:0];
    [v18 bumpHighlightVersion];
  }

  return v18;
}

- (void)_insertDayPhotosHighlightCluster:(id)cluster
{
  clusterCopy = cluster;
  moments = [clusterCopy moments];
  v5 = [(PLPhotosHighlightGenerator *)self _highlightToReuseForMoments:moments];
  v6 = v5;
  if (v5 && ![v5 isDeleted])
  {
    v9 = 0;
  }

  else
  {
    dataManager = [(PLPhotosHighlightGenerator *)self dataManager];
    insertNewPhotosHighlight = [dataManager insertNewPhotosHighlight];

    [insertNewPhotosHighlight setPromotionScore:0.3];
    v9 = 1;
    v6 = insertNewPhotosHighlight;
  }

  upsertedHighlights = [(PLPhotosHighlightGenerator *)self upsertedHighlights];
  [upsertedHighlights addObject:v6];

  category = [v6 category];
  category2 = [clusterCopy category];
  v32 = (v9 & 1) != 0 || [(PLPhotosHighlightGenerator *)self shouldForceVisibilityStateUpdateForHighlight:v6 highlightCluster:clusterCopy];
  v11 = [(PLPhotosHighlightGenerator *)self _updateHighlightProperties:v6 fromHighlightCluster:clusterCopy];
  highlightsWithDeletedAssets = [(PLPhotosHighlightGenerator *)self highlightsWithDeletedAssets];
  v29 = [highlightsWithDeletedAssets containsObject:v6];

  assets = [clusterCopy assets];
  assets3 = assets;
  if (v9)
  {
    goto LABEL_16;
  }

  v15 = [assets count];
  assets2 = [v6 assets];
  if ([assets2 count] != v15 || !objc_msgSend(assets2, "isEqualToSet:", assets3))
  {
    v25 = [assets3 mutableCopy];
    [v25 minusSet:assets2];

    assets3 = v25;
LABEL_16:
    v20 = assets3;
    assets3 = [clusterCopy assets];
    [v6 setAssets:assets3];
    v21 = 1;
LABEL_17:

    goto LABEL_18;
  }

  if (v11)
  {
LABEL_35:

    v20 = 0;
    v21 = 0;
    goto LABEL_17;
  }

  v17 = moments;
  v18 = [v17 count];
  moments2 = [v6 moments];
  if (v18 != [moments2 count])
  {

    goto LABEL_35;
  }

  v28 = [moments2 isEqualToSet:v17];

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  if ((v28 & 1) == 0)
  {
LABEL_18:
    [v6 setMoments:moments];
    v23 = 1;
    v22 = v20;
    v24 = v21;
  }

  if (category2 == 1)
  {
    [(PLPhotosHighlightGenerator *)self updateRecentHighlightCurationForHighlight:v6];
  }

  else if (category == 1)
  {
    [(PLPhotosHighlightGenerator *)self resetPreviousRecentHighlightCurationForHighlight:v6];
    assets4 = [v6 assets];
    [(PLPhotosHighlightGenerator *)self updateCurationForHighlight:v6 withAssetsBelongingToCuration:assets4];
  }

  else if ((v9 & 1) != 0 || ([v22 count] != 0) | v29 & 1 || (objc_msgSend(v6, "missingKeyAssetForKindShared") & 1) != 0 || objc_msgSend(v6, "missingKeyAssetForKindPrivate"))
  {
    [(PLPhotosHighlightGenerator *)self updateCurationForHighlight:v6 withAssetsBelongingToCuration:v22];
  }

  v27 = [(PLPhotosHighlightGenerator *)self setVisibilityStateForHighlight:v6 shouldForceUpdate:v32];
  if (((v11 | v23 | v24) & 1) != 0 || v27)
  {
    [objc_opt_class() updateTitlesForHighlight:v6 dateRangeTitleGenerator:self->_dateRangeTitleGenerator options:0];
    [v6 bumpHighlightVersion];
  }
}

- (id)_highlightToReuseForMoments:(id)moments
{
  v71 = *MEMORY[0x1E69E9840];
  momentsCopy = moments;
  v39 = [MEMORY[0x1E695DFA8] set];
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = momentsCopy;
  v6 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
  if (v6)
  {
    v7 = *v60;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v60 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v59 + 1) + 8 * i);
        highlight = [v9 highlight];
        v11 = highlight;
        if (highlight)
        {
          if (([highlight isDeleted] & 1) == 0)
          {
            upsertedHighlights = [(PLPhotosHighlightGenerator *)self upsertedHighlights];
            v13 = [upsertedHighlights containsObject:v11];

            if ((v13 & 1) == 0)
            {
              v14 = [strongToStrongObjectsMapTable objectForKey:v11];
              unsignedIntegerValue = [v14 unsignedIntegerValue];

              assets = [v9 assets];
              v17 = [assets count];

              v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17 + unsignedIntegerValue];
              [strongToStrongObjectsMapTable setObject:v18 forKey:v11];

              [v39 addObject:v11];
            }
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
    }

    while (v6);
  }

  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__48702;
  v57 = __Block_byref_object_dispose__48703;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__48702;
  v51 = __Block_byref_object_dispose__48703;
  v52 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__PLPhotosHighlightGenerator__highlightToReuseForMoments___block_invoke;
  aBlock[3] = &unk_1E756D350;
  aBlock[4] = &v47;
  aBlock[5] = &v53;
  v19 = _Block_copy(aBlock);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v20 = strongToStrongObjectsMapTable;
  v21 = 0;
  v22 = [v20 countByEnumeratingWithState:&v42 objects:v69 count:16];
  if (v22)
  {
    v41 = *v43;
    *&v23 = 138412802;
    v38 = v23;
    do
    {
      v24 = 0;
      do
      {
        if (*v43 != v41)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v42 + 1) + 8 * v24);
        v26 = [v20 objectForKey:{v25, v38}];
        startDate = [v25 startDate];
        if (v21)
        {
          v28 = v19[2](v19, v26, startDate);
          if (!v28)
          {
            v32 = PLMomentsGetLog();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              uuid = [v21 uuid];
              uuid2 = [v25 uuid];
              *buf = v38;
              v64 = startDate;
              v65 = 2112;
              v66 = uuid;
              v67 = 2112;
              v68 = uuid2;
              _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Picking between two highlights to reuse that start on the same date(%@) bestHighlight:(%@) currentHighlight:(%@)", buf, 0x20u);
            }

            goto LABEL_21;
          }

          if (v28 != -1)
          {
            goto LABEL_22;
          }
        }

        v29 = v25;

        objc_storeStrong(v54 + 5, startDate);
        v30 = v48;
        v31 = v26;
        v32 = v30[5];
        v30[5] = v31;
        v21 = v29;
LABEL_21:

LABEL_22:
        ++v24;
      }

      while (v22 != v24);
      v35 = [v20 countByEnumeratingWithState:&v42 objects:v69 count:16];
      v22 = v35;
    }

    while (v35);
  }

  v36 = v21;
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);

  return v36;
}

uint64_t __58__PLPhotosHighlightGenerator__highlightToReuseForMoments___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(*(a1 + 32) + 8) + 40) compare:a2];
  if (!v6)
  {
    v6 = [v5 compare:*(*(*(a1 + 40) + 8) + 40)];
  }

  return v6;
}

- (void)generateHighlightsForUpsertedMoments:(id)moments frequentLocationsDidChange:(BOOL)change
{
  changeCopy = change;
  v145 = *MEMORY[0x1E69E9840];
  momentsCopy = moments;
  v6 = PLMomentGenerationGetLog();
  if (![(PLPhotosHighlightGenerator *)self didCallBeginGeneration])
  {
    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_FAULT, "[PLPhotosHighlightGenerator beginGenerationWithAssets:hiddenAssets:] need to be called prior to calling [PLPhotosHighlightGenerator generateHighlightsForUpsertedMoments:frequentLocationsDidChange:]", buf, 2u);
    }
  }

  v8 = v6;
  v9 = os_signpost_id_generate(v8);
  info = 0;
  mach_timebase_info(&info);
  v10 = v8;
  v11 = v10;
  v109 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "GenerateHighlights", "", buf, 2u);
  }

  v106 = v9;

  v107 = mach_absolute_time();
  v12 = v11;
  v13 = os_signpost_id_generate(v12);
  v133 = 0;
  mach_timebase_info(&v133);
  v14 = v12;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "HighlightGenerationSetup", "", buf, 2u);
  }

  v16 = mach_absolute_time();
  highlightClusterGenerator = [(PLPhotosHighlightGenerator *)self highlightClusterGenerator];
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v17 = momentsCopy;
  v18 = [v17 countByEnumeratingWithState:&v129 objects:v144 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v130;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v130 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(PLHighlightHierarchy *)self->_entitiesToUpdate addMoment:*(*(&v129 + 1) + 8 * i)];
      }

      v19 = [v17 countByEnumeratingWithState:&v129 objects:v144 count:16];
    }

    while (v19);
  }

  v22 = mach_absolute_time();
  numer = v133.numer;
  denom = v133.denom;
  v25 = v15;
  v26 = v25;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v26, OS_SIGNPOST_INTERVAL_END, v13, "HighlightGenerationSetup", "", buf, 2u);
  }

  v108 = v17;

  v27 = v26;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v136 = "HighlightGenerationSetup";
    v137 = 2048;
    v138 = ((((v22 - v16) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v28 = 0;
  v110 = v27;
  do
  {
    v29 = v27;
    v30 = os_signpost_id_generate(v29);
    v128 = 0;
    mach_timebase_info(&v128);
    v31 = v29;
    v32 = v31;
    v33 = v30 - 1;
    if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "HighlightGenerationLoop", "", buf, 2u);
    }

    spid = v30;

    v114 = mach_absolute_time();
    if (v28)
    {
      v34 = PLMomentsGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v136 = v28;
        _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEFAULT, "[HighlightsGeneration] Running highlight generation loop number %lu", buf, 0xCu);
      }
    }

    if (v28)
    {
      v35 = 0;
    }

    else
    {
      v35 = changeCopy;
    }

    moments = [(PLHighlightHierarchy *)self->_entitiesToUpdate moments];
    v37 = [highlightClusterGenerator highlightClustersIntersectingMoments:moments includeAllTripHighlightClusters:v35];

    v38 = [MEMORY[0x1E695DFA8] set];
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v39 = v37;
    v40 = [v39 countByEnumeratingWithState:&v124 objects:v143 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v125;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v125 != v42)
          {
            objc_enumerationMutation(v39);
          }

          moments2 = [*(*(&v124 + 1) + 8 * j) moments];
          [v38 unionSet:moments2];
        }

        v41 = [v39 countByEnumeratingWithState:&v124 objects:v143 count:16];
      }

      while (v41);
    }

    moments3 = [(PLHighlightHierarchy *)self->_entitiesToUpdate moments];
    [v38 minusSet:moments3];

    if ([v38 count])
    {
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v46 = v38;
      v47 = [v46 countByEnumeratingWithState:&v120 objects:v142 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v121;
        do
        {
          for (k = 0; k != v48; ++k)
          {
            if (*v121 != v49)
            {
              objc_enumerationMutation(v46);
            }

            [(PLHighlightHierarchy *)self->_entitiesToUpdate addMoment:*(*(&v120 + 1) + 8 * k)];
          }

          v48 = [v46 countByEnumeratingWithState:&v120 objects:v142 count:16];
        }

        while (v48);
      }

      v51 = 0;
    }

    else
    {
      v51 = v39;
    }

    v27 = v110;
    v52 = mach_absolute_time();
    v53 = v128.numer;
    v54 = v128.denom;
    v55 = v32;
    v56 = v55;
    if (v33 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v56, OS_SIGNPOST_INTERVAL_END, spid, "HighlightGenerationLoop", "", buf, 2u);
    }

    v57 = v56;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v136 = "HighlightGenerationLoop";
      v137 = 2048;
      v138 = ((((v52 - v114) * v53) / v54) / 1000000.0);
      _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    ++v28;
  }

  while (!v51);
  if (v28 >= 5)
  {
    v58 = PLMomentsGetLog();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v136 = v28;
      _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_ERROR, "[HighlightsGeneration] Ran highlight generation loop more than five times(%lu)", buf, 0xCu);
    }
  }

  v59 = v57;
  v60 = os_signpost_id_generate(v59);
  v128 = 0;
  mach_timebase_info(&v128);
  v61 = v59;
  v62 = v61;
  if (v60 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v62, OS_SIGNPOST_INTERVAL_BEGIN, v60, "InsertHighlights", "", buf, 2u);
  }

  v63 = mach_absolute_time();
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v64 = v51;
  v65 = [v64 countByEnumeratingWithState:&v116 objects:v141 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v117;
    do
    {
      for (m = 0; m != v66; ++m)
      {
        if (*v117 != v67)
        {
          objc_enumerationMutation(v64);
        }

        v69 = *(*(&v116 + 1) + 8 * m);
        kind = [v69 kind];
        if (kind == 3)
        {
          v71 = [(PLPhotosHighlightGenerator *)self _insertDayGroupPhotosHighlightCluster:v69];
        }

        else if (!kind)
        {
          [(PLPhotosHighlightGenerator *)self _insertDayPhotosHighlightCluster:v69];
        }
      }

      v66 = [v64 countByEnumeratingWithState:&v116 objects:v141 count:16];
    }

    while (v66);
  }

  v72 = mach_absolute_time();
  v73 = v128.numer;
  v74 = v128.denom;
  v75 = v62;
  v76 = v75;
  if (v60 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
  {
    v77 = [v64 count];
    *buf = 134217984;
    v136 = v77;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v76, OS_SIGNPOST_INTERVAL_END, v60, "InsertHighlights", "[HighlightsGeneration] Inserting/Updating %lu Highlights into Database.", buf, 0xCu);
  }

  v78 = v76;
  if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"[HighlightsGeneration] Inserting/Updating %lu Highlights into Database.", objc_msgSend(v64, "count")];
    v79 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 136315650;
    v136 = "InsertHighlights";
    v137 = 2112;
    v138 = v79;
    v139 = 2048;
    v140 = ((((v72 - v63) * v73) / v74) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v78, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

  v80 = [MEMORY[0x1E695DFA8] set];
  highlightsToDelete = self->_highlightsToDelete;
  self->_highlightsToDelete = v80;

  v82 = self->_highlightsToDelete;
  dayHighlights = [(PLHighlightHierarchy *)self->_entitiesToUpdate dayHighlights];
  [(NSMutableSet *)v82 unionSet:dayHighlights];

  v84 = self->_highlightsToDelete;
  dayGroupHighlights = [(PLHighlightHierarchy *)self->_entitiesToUpdate dayGroupHighlights];
  [(NSMutableSet *)v84 unionSet:dayGroupHighlights];

  [(NSMutableSet *)self->_highlightsToDelete minusSet:self->_upsertedHighlights];
  v86 = v78;
  v87 = os_signpost_id_generate(v86);
  v115 = 0;
  mach_timebase_info(&v115);
  v88 = v86;
  v89 = v88;
  if (v87 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v88))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v89, OS_SIGNPOST_INTERVAL_BEGIN, v87, "InsertMonthYear", "", buf, 2u);
  }

  v90 = mach_absolute_time();
  allObjects = [(NSMutableSet *)self->_upsertedHighlights allObjects];
  [(PLPhotosHighlightGenerator *)self generateHighlightListForUpdatedHighlights:allObjects deletedHighlights:self->_highlightsToDelete];

  v92 = mach_absolute_time();
  v94 = v115.numer;
  v93 = v115.denom;
  v95 = v89;
  v96 = v95;
  if (v87 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v95))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v96, OS_SIGNPOST_INTERVAL_END, v87, "InsertMonthYear", "[HighlightsGeneration] Generate Month/Year pass completed.", buf, 2u);
  }

  v97 = v96;
  if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
  {
    v98 = (((v92 - v90) * v94) / v93) / 1000000.0;
    [MEMORY[0x1E696AEC0] stringWithFormat:@"[HighlightsGeneration] Generate Month/Year pass completed."];
    v99 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 136315650;
    v136 = "InsertMonthYear";
    v137 = 2112;
    v138 = v99;
    v139 = 2048;
    v140 = v98;
    _os_log_impl(&dword_19BF1F000, v97, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

  v100 = mach_absolute_time();
  v101 = info.numer;
  v102 = info.denom;
  v103 = v97;
  v104 = v103;
  if (v109 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v103))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v104, OS_SIGNPOST_INTERVAL_END, v106, "GenerateHighlights", "", buf, 2u);
  }

  v105 = v104;
  if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v136 = "GenerateHighlights";
    v137 = 2048;
    v138 = ((((v100 - v107) * v101) / v102) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v105, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

- (PLPhotosHighlightClusterGenerator)highlightClusterGenerator
{
  v3 = [PLPhotosHighlightClusterGenerator alloc];
  dataManager = [(PLPhotosHighlightGenerator *)self dataManager];
  frequentLocationManager = self->_frequentLocationManager;
  recentHighlightsDateInterval = [(PLPhotosHighlightGenerator *)self recentHighlightsDateInterval];
  v7 = [(PLPhotosHighlightClusterGenerator *)v3 initWithDataManager:dataManager frequentLocationManager:frequentLocationManager recentHighlightDateInterval:recentHighlightsDateInterval localCreationDateCreator:self->_localCreationDateCreator];

  return v7;
}

- (void)registerHighlightsWithDeletedMoments:(id)moments
{
  v16 = *MEMORY[0x1E69E9840];
  momentsCopy = moments;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [momentsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(momentsCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        kind = [v9 kind];
        if (kind == 3)
        {
          [(PLHighlightHierarchy *)self->_entitiesToUpdate addDayGroupHighlight:v9];
        }

        else if (!kind)
        {
          [(PLHighlightHierarchy *)self->_entitiesToUpdate addDayHighlight:v9];
        }
      }

      v6 = [momentsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)beginGenerationWithAssets:(id)assets hiddenAssets:(id)hiddenAssets
{
  v36 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  hiddenAssetsCopy = hiddenAssets;
  v8 = PLMomentGenerationGetLog();
  if ([(PLPhotosHighlightGenerator *)self didCallBeginGeneration]&& os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_FAULT, "[PLPhotosHighlightGenerator finishGeneration] should have been called before calling [PLPhotosHighlightGenerator beginGenerationWithAssets:hiddenAssets:]", buf, 2u);
  }

  [(PLPhotosHighlightGenerator *)self setDidCallBeginGeneration:1];
  [(PLPhotosHighlightGenerator *)self _resetProperties];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = assetsCopy;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        highlightBeingAssets = [v14 highlightBeingAssets];
        dayGroupHighlightBeingAssets = [v14 dayGroupHighlightBeingAssets];
        if (highlightBeingAssets)
        {
          [(PLHighlightHierarchy *)self->_entitiesToUpdate addDayHighlight:highlightBeingAssets];
        }

        if (dayGroupHighlightBeingAssets)
        {
          [(PLHighlightHierarchy *)self->_entitiesToUpdate addDayGroupHighlight:dayGroupHighlightBeingAssets];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v11);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = hiddenAssetsCopy;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * j);
        [(PLPhotosHighlightGenerator *)self markHighlightNeedingNewKeyAssetsWithAsset:v22, v25];
        highlightBeingAssets2 = [v22 highlightBeingAssets];
        if (highlightBeingAssets2)
        {
          [v22 setHighlightBeingAssets:0];
          [v22 setHighlightBeingSummaryAssets:0];
          [v22 setHighlightBeingExtendedAssets:0];
          [highlightBeingAssets2 removeAssetData:v22];
          [(PLHighlightHierarchy *)self->_entitiesToUpdate addDayHighlight:highlightBeingAssets2];
          [(NSMutableSet *)self->_highlightsWithDeletedAssets addObject:highlightBeingAssets2];
        }

        dayGroupHighlightBeingAssets2 = [v22 dayGroupHighlightBeingAssets];
        if (dayGroupHighlightBeingAssets2)
        {
          [v22 setDayGroupHighlightBeingAssets:0];
          [v22 setDayGroupHighlightBeingExtendedAssets:0];
          [dayGroupHighlightBeingAssets2 removeAssetData:v22];
          [(PLHighlightHierarchy *)self->_entitiesToUpdate addDayGroupHighlight:dayGroupHighlightBeingAssets2];
          [(NSMutableSet *)self->_highlightsWithDeletedAssets addObject:dayGroupHighlightBeingAssets2];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v19);
  }
}

- (void)_resetProperties
{
  recentHighlightsDateInterval = self->_recentHighlightsDateInterval;
  self->_recentHighlightsDateInterval = 0;

  v4 = objc_alloc_init(PLHighlightHierarchy);
  entitiesToUpdate = self->_entitiesToUpdate;
  self->_entitiesToUpdate = v4;

  v6 = [MEMORY[0x1E695DFA8] set];
  highlightsNeedingNewKeyAsset = self->_highlightsNeedingNewKeyAsset;
  self->_highlightsNeedingNewKeyAsset = v6;

  v8 = [MEMORY[0x1E695DFA8] set];
  highlightsWithDeletedAssets = self->_highlightsWithDeletedAssets;
  self->_highlightsWithDeletedAssets = v8;

  v10 = [MEMORY[0x1E695DFA8] set];
  upsertedHighlights = self->_upsertedHighlights;
  self->_upsertedHighlights = v10;

  v12 = [MEMORY[0x1E695DFA8] set];
  highlightsToDelete = self->_highlightsToDelete;
  self->_highlightsToDelete = v12;
}

- (PLPhotosHighlightGenerator)initWithDataManager:(id)manager frequentLocationManager:(id)locationManager localCreationDateCreator:(id)creator dateRangeTitleGenerator:(id)generator
{
  managerCopy = manager;
  locationManagerCopy = locationManager;
  creatorCopy = creator;
  generatorCopy = generator;
  v16.receiver = self;
  v16.super_class = PLPhotosHighlightGenerator;
  v14 = [(PLPhotosHighlightGenerator *)&v16 init];
  if (PLPlatformHighlightsSupported())
  {
    if (v14)
    {
      objc_storeWeak(&v14->_dataManager, managerCopy);
      objc_storeStrong(&v14->_frequentLocationManager, locationManager);
      objc_storeStrong(&v14->_localCreationDateCreator, creator);
      objc_storeStrong(&v14->_dateRangeTitleGenerator, generator);
      [(PLPhotosHighlightGenerator *)v14 _resetProperties];
    }
  }

  else
  {

    v14 = 0;
  }

  return v14;
}

+ (id)userDefaults
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileslideshow"];

  return v2;
}

+ (void)setLastRecentHighlightUpdateDate:(id)date
{
  dateCopy = date;
  userDefaults = [self userDefaults];
  [userDefaults setObject:dateCopy forKey:@"lastRecentHighlightUpdateDate"];
}

+ (id)lastRecentHighlightUpdateDate
{
  userDefaults = [self userDefaults];
  v3 = [userDefaults objectForKey:@"lastRecentHighlightUpdateDate"];
  v4 = v3;
  if (v3)
  {
    distantPast = v3;
  }

  else
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
  }

  v6 = distantPast;

  return v6;
}

+ (void)setLastHighlightTitlesUpdateDay:(id)day
{
  dayCopy = day;
  userDefaults = [self userDefaults];
  [userDefaults setObject:dayCopy forKey:@"lastHighlightTitlesUpdateDate"];
}

+ (id)lastHighlightTitlesUpdateDay
{
  userDefaults = [self userDefaults];
  v3 = [userDefaults objectForKey:@"lastHighlightTitlesUpdateDate"];
  v4 = v3;
  if (v3)
  {
    date = v3;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v6 = date;

  return v6;
}

+ (void)_updateTitlesForHighlight:(id)highlight dateRangeTitleGenerator:(id)generator options:(unint64_t)options filter:(unsigned __int16)filter
{
  filterCopy = filter;
  highlightCopy = highlight;
  generatorCopy = generator;
  if (filterCopy)
  {
    if (filterCopy == 2)
    {
      titleShared = [highlightCopy titleShared];
    }

    else
    {
      v10 = highlightCopy;
      if (filterCopy != 1)
      {
        v12 = 0;
        goto LABEL_9;
      }

      titleShared = [highlightCopy title];
    }
  }

  else
  {
    titleShared = [highlightCopy titleMixed];
  }

  v10 = highlightCopy;
  v12 = titleShared;
LABEL_9:
  v13 = [PLPhotosHighlightTitleGenerator titleForHighlight:v10 filter:filterCopy dateRangeTitleGenerator:generatorCopy options:options];
  if (_os_feature_enabled_impl())
  {
    type = [highlightCopy type];
    if (type <= 4 && ((1 << type) & 0x16) != 0)
    {
      0x10 = [PLPhotosHighlightTitleGenerator titleForHighlight:highlightCopy filter:filterCopy dateRangeTitleGenerator:generatorCopy options:options | 0x10];
      if ([(__CFString *)v13 length]|| [(__CFString *)0x10 length])
      {
        if (v13)
        {
          v16 = v13;
        }

        else
        {
          v16 = &stru_1F0F06D80;
        }

        if (0x10)
        {
          v17 = 0x10;
        }

        else
        {
          v17 = &stru_1F0F06D80;
        }

        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v16, @"", v17];
      }

      else
      {
        v18 = 0;
      }

      v13 = v18;
    }
  }

  if (([v12 isEqualToString:v13] & 1) == 0 && (objc_msgSend(v12, "length") || -[__CFString length](v13, "length")))
  {
    if (filterCopy)
    {
      if (filterCopy == 2)
      {
        [highlightCopy setTitleShared:v13];
      }

      else if (filterCopy == 1)
      {
        [highlightCopy setTitle:v13];
      }
    }

    else
    {
      [highlightCopy setTitleMixed:v13];
    }
  }
}

+ (void)updateTitlesForHighlight:(id)highlight dateRangeTitleGenerator:(id)generator options:(unint64_t)options
{
  generatorCopy = generator;
  highlightCopy = highlight;
  [self _updateTitlesForHighlight:highlightCopy dateRangeTitleGenerator:generatorCopy options:options filter:1];
  [self _updateTitlesForHighlight:highlightCopy dateRangeTitleGenerator:generatorCopy options:options filter:2];
  [self _updateTitlesForHighlight:highlightCopy dateRangeTitleGenerator:generatorCopy options:options filter:0];
}

- (void)_updateDayGroupHighlight:(id)highlight withNewAssets:(id)assets
{
  v25 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  assetsCopy = assets;
  v8 = [MEMORY[0x1E695DFA8] setWithSet:assetsCopy];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __79__PLPhotosHighlightGenerator_Curation___updateDayGroupHighlight_withNewAssets___block_invoke;
  v23[3] = &unk_1E75702B8;
  v23[4] = self;
  v9 = [MEMORY[0x1E696AE18] predicateWithBlock:v23];
  [v8 filterUsingPredicate:v9];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = assetsCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
        [(PLPhotosHighlightGenerator *)self markHighlightNeedingNewKeyAssetsWithAsset:v15, v19];
        v16 = [v8 containsObject:v15];
        v17 = highlightCopy;
        if ((v16 & 1) == 0)
        {
          dayGroupHighlightBeingExtendedAssets = [v15 dayGroupHighlightBeingExtendedAssets];

          if (!dayGroupHighlightBeingExtendedAssets)
          {
            continue;
          }

          v17 = 0;
        }

        [v15 setDayGroupHighlightBeingExtendedAssets:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v12);
  }
}

uint64_t __79__PLPhotosHighlightGenerator_Curation___updateDayGroupHighlight_withNewAssets___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() assetEligibleForCuration:v2];

  return v3;
}

- (void)_updateDayHighlight:(id)highlight withNewAssets:(id)assets
{
  v27 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  assetsCopy = assets;
  v8 = [MEMORY[0x1E695DFA8] setWithSet:assetsCopy];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __74__PLPhotosHighlightGenerator_Curation___updateDayHighlight_withNewAssets___block_invoke;
  v25[3] = &unk_1E75702B8;
  v25[4] = self;
  v9 = [MEMORY[0x1E696AE18] predicateWithBlock:v25];
  [v8 filterUsingPredicate:v9];

  type = [highlightCopy type];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = assetsCopy;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = type - 7;
    v15 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if (v14 > 0xFFFFFFFD)
        {
          [(PLPhotosHighlightGenerator *)self markHighlightNeedingNewKeyAssetsWithAsset:v17, v21];
        }

        else
        {
          [(PLPhotosHighlightGenerator *)self resetDayGroupCurationForAsset:v17];
        }

        if ([v8 containsObject:{v17, v21}])
        {
          [v17 setHighlightBeingSummaryAssets:highlightCopy];
          v18 = highlightCopy;
LABEL_15:
          [v17 setHighlightBeingExtendedAssets:v18];
          continue;
        }

        highlightBeingSummaryAssets = [v17 highlightBeingSummaryAssets];

        if (highlightBeingSummaryAssets)
        {
          [v17 setHighlightBeingSummaryAssets:0];
        }

        highlightBeingExtendedAssets = [v17 highlightBeingExtendedAssets];

        if (highlightBeingExtendedAssets)
        {
          v18 = 0;
          goto LABEL_15;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v13);
  }
}

uint64_t __74__PLPhotosHighlightGenerator_Curation___updateDayHighlight_withNewAssets___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() assetEligibleForCuration:v2];

  return v3;
}

- (void)markHighlightNeedingNewKeyAssetsWithAsset:(id)asset
{
  assetCopy = asset;
  highlightBeingKeyAssetPrivate = [assetCopy highlightBeingKeyAssetPrivate];
  dayGroupHighlightBeingKeyAssetPrivate = [assetCopy dayGroupHighlightBeingKeyAssetPrivate];
  monthHighlightBeingKeyAssetPrivate = [assetCopy monthHighlightBeingKeyAssetPrivate];
  yearHighlightBeingKeyAssetPrivate = [assetCopy yearHighlightBeingKeyAssetPrivate];
  highlightBeingKeyAssetShared = [assetCopy highlightBeingKeyAssetShared];
  dayGroupHighlightBeingKeyAssetShared = [assetCopy dayGroupHighlightBeingKeyAssetShared];
  monthHighlightBeingKeyAssetShared = [assetCopy monthHighlightBeingKeyAssetShared];
  yearHighlightBeingKeyAssetShared = [assetCopy yearHighlightBeingKeyAssetShared];
  if (highlightBeingKeyAssetPrivate)
  {
    [assetCopy setHighlightBeingKeyAssetPrivate:0];
    highlightsNeedingNewKeyAsset = [(PLPhotosHighlightGenerator *)self highlightsNeedingNewKeyAsset];
    [highlightsNeedingNewKeyAsset addObject:highlightBeingKeyAssetPrivate];
  }

  if (dayGroupHighlightBeingKeyAssetPrivate)
  {
    [assetCopy setDayGroupHighlightBeingKeyAssetPrivate:0];
    highlightsNeedingNewKeyAsset2 = [(PLPhotosHighlightGenerator *)self highlightsNeedingNewKeyAsset];
    [highlightsNeedingNewKeyAsset2 addObject:dayGroupHighlightBeingKeyAssetPrivate];
  }

  if (monthHighlightBeingKeyAssetPrivate)
  {
    [assetCopy setMonthHighlightBeingKeyAssetPrivate:0];
    highlightsNeedingNewKeyAsset3 = [(PLPhotosHighlightGenerator *)self highlightsNeedingNewKeyAsset];
    [highlightsNeedingNewKeyAsset3 addObject:monthHighlightBeingKeyAssetPrivate];
  }

  if (yearHighlightBeingKeyAssetPrivate)
  {
    [assetCopy setYearHighlightBeingKeyAssetPrivate:0];
    highlightsNeedingNewKeyAsset4 = [(PLPhotosHighlightGenerator *)self highlightsNeedingNewKeyAsset];
    [highlightsNeedingNewKeyAsset4 addObject:yearHighlightBeingKeyAssetPrivate];
  }

  if (highlightBeingKeyAssetShared)
  {
    [assetCopy setHighlightBeingKeyAssetShared:0];
    highlightsNeedingNewKeyAsset5 = [(PLPhotosHighlightGenerator *)self highlightsNeedingNewKeyAsset];
    [highlightsNeedingNewKeyAsset5 addObject:highlightBeingKeyAssetShared];
  }

  if (dayGroupHighlightBeingKeyAssetShared)
  {
    [assetCopy setDayGroupHighlightBeingKeyAssetShared:0];
    highlightsNeedingNewKeyAsset6 = [(PLPhotosHighlightGenerator *)self highlightsNeedingNewKeyAsset];
    [highlightsNeedingNewKeyAsset6 addObject:dayGroupHighlightBeingKeyAssetShared];
  }

  if (monthHighlightBeingKeyAssetShared)
  {
    [assetCopy setMonthHighlightBeingKeyAssetShared:0];
    highlightsNeedingNewKeyAsset7 = [(PLPhotosHighlightGenerator *)self highlightsNeedingNewKeyAsset];
    [highlightsNeedingNewKeyAsset7 addObject:monthHighlightBeingKeyAssetShared];
  }

  if (yearHighlightBeingKeyAssetShared)
  {
    [assetCopy setYearHighlightBeingKeyAssetShared:0];
    highlightsNeedingNewKeyAsset8 = [(PLPhotosHighlightGenerator *)self highlightsNeedingNewKeyAsset];
    [highlightsNeedingNewKeyAsset8 addObject:yearHighlightBeingKeyAssetShared];
  }
}

- (BOOL)_highlightShouldNotBeVisible:(id)visible sharingConsideration:(int64_t)consideration
{
  visibleCopy = visible;
  [visibleCopy promotionScore];
  if (v6 != 0.2)
  {
    kind = [visibleCopy kind];
    if (kind == 3)
    {
      switch(consideration)
      {
        case 2:
          dayGroupExtendedAssetsCount = [visibleCopy dayGroupExtendedAssetsCount];
          goto LABEL_18;
        case 1:
          dayGroupExtendedAssetsCount = [visibleCopy dayGroupExtendedAssetsCountShared];
          goto LABEL_18;
        case 0:
          dayGroupExtendedAssetsCount = [visibleCopy dayGroupExtendedAssetsCountPrivate];
          goto LABEL_18;
      }
    }

    else if (!kind)
    {
      switch(consideration)
      {
        case 2:
          dayGroupExtendedAssetsCount = [visibleCopy extendedCount];
          goto LABEL_18;
        case 1:
          dayGroupExtendedAssetsCount = [visibleCopy extendedCountShared];
          goto LABEL_18;
        case 0:
          dayGroupExtendedAssetsCount = [visibleCopy extendedCountPrivate];
LABEL_18:
          v7 = dayGroupExtendedAssetsCount == 0;
          goto LABEL_19;
      }
    }

    v7 = 0;
    goto LABEL_19;
  }

  v7 = 1;
LABEL_19:

  return v7;
}

- (BOOL)_setVisibilityStateForHighlight:(id)highlight shouldForceUpdate:(BOOL)update sharingConsideration:(int64_t)consideration
{
  updateCopy = update;
  highlightCopy = highlight;
  if (consideration > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_1E756ACA8[consideration];
  }

  v10 = v9;
  type = [highlightCopy type];
  v12 = [highlightCopy valueForKey:v10];
  unsignedShortValue = [v12 unsignedShortValue];

  sharingComposition = [highlightCopy sharingComposition];
  if (consideration == 2 || sharingComposition == 2 || !consideration && !sharingComposition || (v15 = 0, consideration == 1) && sharingComposition == 1)
  {
    if ([(PLPhotosHighlightGenerator *)self _highlightShouldNotBeVisible:highlightCopy sharingConsideration:consideration])
    {
LABEL_11:
      v15 = 0;
      goto LABEL_12;
    }

    v19 = [highlightCopy category] != 1 && type != 5;
    if (v19)
    {
      v15 = unsignedShortValue;
    }

    else
    {
      v15 = 1;
    }

    if (v19 && updateCopy)
    {
      if (type > 7)
      {
        goto LABEL_13;
      }

      if (((1 << type) & 0x16) != 0)
      {
        if (_os_feature_enabled_impl())
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }
      }

      else
      {
        if (((1 << type) & 0x89) == 0)
        {
          v16 = 0;
          if (type != 6)
          {
            goto LABEL_15;
          }

          goto LABEL_11;
        }

        _os_feature_enabled_impl();
        v15 = 1;
      }
    }
  }

LABEL_12:
  if (unsignedShortValue != v15)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v15];
    [highlightCopy setValue:v17 forKey:v10];

    v16 = 1;
    goto LABEL_15;
  }

LABEL_13:
  v16 = 0;
LABEL_15:

  return v16;
}

- (BOOL)setVisibilityStateForHighlight:(id)highlight shouldForceUpdate:(BOOL)update
{
  updateCopy = update;
  highlightCopy = highlight;
  v7 = [(PLPhotosHighlightGenerator *)self _setVisibilityStateForHighlight:highlightCopy shouldForceUpdate:updateCopy sharingConsideration:0];
  v8 = [(PLPhotosHighlightGenerator *)self _setVisibilityStateForHighlight:highlightCopy shouldForceUpdate:updateCopy sharingConsideration:1];
  LOBYTE(updateCopy) = [(PLPhotosHighlightGenerator *)self _setVisibilityStateForHighlight:highlightCopy shouldForceUpdate:updateCopy sharingConsideration:2];

  return v7 || v8 || updateCopy;
}

- (BOOL)shouldForceVisibilityStateUpdateForHighlight:(id)highlight highlightCluster:(id)cluster
{
  highlightCopy = highlight;
  clusterCopy = cluster;
  v10 = 1;
  if ([highlightCopy enrichmentState])
  {
    category = [highlightCopy category];
    if (category == [clusterCopy category])
    {
      type = [highlightCopy type];
      if (type == [clusterCopy type] && (objc_msgSend(highlightCopy, "visibilityState") || !-[PLPhotosHighlightGenerator _highlightTypeSupportsVisibilityStateDayOnly:](self, "_highlightTypeSupportsVisibilityStateDayOnly:", type)))
      {
        v10 = 0;
      }
    }
  }

  return v10;
}

- (void)resetDayGroupCurationForAsset:(id)asset
{
  assetCopy = asset;
  [(PLPhotosHighlightGenerator *)self markHighlightNeedingNewKeyAssetsWithAsset:assetCopy];
  dayGroupHighlightBeingAssets = [assetCopy dayGroupHighlightBeingAssets];

  if (dayGroupHighlightBeingAssets)
  {
    [assetCopy setDayGroupHighlightBeingAssets:0];
  }

  dayGroupHighlightBeingExtendedAssets = [assetCopy dayGroupHighlightBeingExtendedAssets];

  if (dayGroupHighlightBeingExtendedAssets)
  {
    [assetCopy setDayGroupHighlightBeingExtendedAssets:0];
  }
}

- (void)updateCurationForHighlight:(id)highlight withAssetsBelongingToCuration:(id)curation
{
  v23 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  curationCopy = curation;
  kind = [highlightCopy kind];
  if ((kind - 1) < 2)
  {
    v10 = PLMomentsGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      uuid = [highlightCopy uuid];
      v21 = 138412290;
      v22 = uuid;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Trying to update curation on a non-supported highlight kind: %@", &v21, 0xCu);
    }

    goto LABEL_8;
  }

  if (kind == 3)
  {
    [(PLPhotosHighlightGenerator *)self _updateDayGroupHighlight:highlightCopy withNewAssets:curationCopy];
    dayGroupExtendedAssets = [highlightCopy dayGroupExtendedAssets];
    goto LABEL_10;
  }

  if (kind)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_14;
  }

  [(PLPhotosHighlightGenerator *)self _updateDayHighlight:highlightCopy withNewAssets:curationCopy];
  dayGroupExtendedAssets = [highlightCopy extendedAssets];
LABEL_10:
  v13 = dayGroupExtendedAssets;
  if (dayGroupExtendedAssets)
  {
    v14 = dayGroupExtendedAssets;
  }

  else
  {
    v14 = [MEMORY[0x1E695DFD8] set];
  }

  v12 = v14;

LABEL_14:
  if ([v12 count])
  {
    [highlightCopy promotionScore];
    if (v15 < 0.3)
    {
      [highlightCopy setPromotionScore:?];
    }

    sharingComposition = [highlightCopy sharingComposition];
    if (!sharingComposition)
    {
      v17 = 0;
LABEL_23:
      keyAssetForKindPrivate = [highlightCopy keyAssetForKindPrivate];
      if (([highlightCopy missingKeyAssetForKindPrivate] & 1) != 0 || !objc_msgSend(v12, "containsObject:", keyAssetForKindPrivate))
      {
        goto LABEL_31;
      }

      v19 = [objc_opt_class() assetEligibleForCuration:keyAssetForKindPrivate];

      if ((v17 & v19) != 1)
      {
        goto LABEL_29;
      }

LABEL_26:
      keyAssetForKindPrivate = [highlightCopy keyAssetForKindShared];
      if (([highlightCopy missingKeyAssetForKindShared] & 1) == 0 && objc_msgSend(v12, "containsObject:", keyAssetForKindPrivate))
      {
        LOBYTE(v19) = [objc_opt_class() assetEligibleForCuration:keyAssetForKindPrivate];

LABEL_29:
        if (v19)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

LABEL_31:

LABEL_32:
      highlightsNeedingNewKeyAsset = [(PLPhotosHighlightGenerator *)self highlightsNeedingNewKeyAsset];
      [highlightsNeedingNewKeyAsset addObject:highlightCopy];

      goto LABEL_33;
    }

    if (sharingComposition == 1)
    {
      goto LABEL_26;
    }

    if (sharingComposition == 2)
    {
      v17 = 1;
      goto LABEL_23;
    }
  }

  else
  {
    [highlightCopy setPromotionScore:0.2];
  }

LABEL_33:
}

+ (id)_bestAssetInAssets:(id)assets fallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  v41[2] = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
  v41[0] = v7;
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v41[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  v10 = [assetsCopy sortedArrayUsingDescriptors:v9];

  v11 = [assetsCopy count];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    if (v11 >= 6)
    {
      v16 = -1;
    }

    else
    {
      v16 = 4;
    }

    v17 = *v36;
    v18 = 0.0;
LABEL_6:
    v19 = 0;
    while (1)
    {
      if (*v36 != v17)
      {
        objc_enumerationMutation(v12);
      }

      v20 = *(*(&v35 + 1) + 8 * v19);
      if ([self assetEligibleForCuration:v20])
      {
        [self curationScoreForAsset:v20];
        v22 = v21;
        if (!v15 || v18 < v21)
        {
          v23 = v20;

          v18 = v22;
          v15 = v23;
        }

        if (!--v16)
        {
          break;
        }
      }

      if (v14 == ++v19)
      {
        v14 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v14)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  if (!v15 && fallbackCopy)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = v12;
    v25 = [v24 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v32;
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v31 + 1) + 8 * i);
          if ([v29 visibilityStateIsEqualToState:{0, v31}])
          {
            v15 = v29;
            goto LABEL_30;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_30:
  }

  return v15;
}

+ (BOOL)assetEligibleForCuration:(id)curation
{
  curationCopy = curation;
  v5 = curationCopy;
  if (curationCopy && [curationCopy visibilityStateIsEqualToState:0])
  {
    [self curationScoreForAsset:v5];
    v7 = v6 >= 0.5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (double)curationScoreForAsset:(id)asset
{
  assetCopy = asset;
  [assetCopy curationScore];
  v5 = v4;
  v6 = 0.25;
  if ([assetCopy kindSubtype] != 10 && (objc_msgSend(assetCopy, "isScreenRecording") & 1) == 0)
  {
    if (fabs(v5) <= 2.22044605e-16)
    {
      v6 = 0.5;
    }

    else
    {
      v6 = v5;
    }
  }

  return v6;
}

+ (id)_provisionalKeyAssetForMonthAndYearHighlight:(id)highlight sharingConsideration:(int64_t)consideration
{
  v34 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  v26 = [MEMORY[0x1E695DFA8] set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  childPhotosHighlights = [highlightCopy childPhotosHighlights];
  v7 = [childPhotosHighlights countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v7)
  {
    goto LABEL_31;
  }

  v8 = v7;
  v9 = *v30;
  v10 = 0.0;
  do
  {
    v11 = 0;
    do
    {
      if (*v30 != v9)
      {
        objc_enumerationMutation(childPhotosHighlights);
      }

      v12 = *(*(&v29 + 1) + 8 * v11);
      if (consideration > 2)
      {
        v13 = 0;
      }

      else
      {
        v13 = off_1E756ACA8[consideration];
      }

      v14 = v13;
      v15 = [v12 valueForKey:v14];
      unsignedShortValue = [v15 unsignedShortValue];

      kind = [highlightCopy kind];
      if ((kind - 1) < 2)
      {
        if ((unsignedShortValue & 0xFFFE) != 2)
        {
          goto LABEL_19;
        }

        switch(consideration)
        {
          case 2:
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotosHighlightGenerator+Curation.m" lineNumber:621 description:@"Invalid sharing consideration for provisional key asset."];

            break;
          case 1:
            keyAssetForKindShared = [v12 keyAssetForKindShared];
            goto LABEL_22;
          case 0:
            keyAssetForKindShared = [v12 keyAssetForKindPrivate];
LABEL_22:
            currentHandler2 = keyAssetForKindShared;
            if (keyAssetForKindShared)
            {
              [v12 promotionScore];
              v21 = v20;
              if (![v26 count] || v21 >= v10)
              {
                if (v21 > v10)
                {
                  [v26 removeAllObjects];
                }

                [v26 addObject:currentHandler2];
                v10 = v21;
              }
            }

            goto LABEL_13;
        }

        currentHandler2 = 0;
        goto LABEL_13;
      }

      if (!kind || kind == 3)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLPhotosHighlightGenerator+Curation.m" lineNumber:604 description:@"Invalid kind for provisional key asset."];
LABEL_13:
      }

LABEL_19:

      ++v11;
    }

    while (v8 != v11);
    v23 = [childPhotosHighlights countByEnumeratingWithState:&v29 objects:v33 count:16];
    v8 = v23;
  }

  while (v23);
LABEL_31:

  if ([v26 count] < 2)
  {
    [v26 anyObject];
  }

  else
  {
    [self _bestAssetInAssets:v26 fallback:1];
  }
  v24 = ;

  return v24;
}

+ (id)_provisionalKeyAssetForDayGroupHighlight:(id)highlight sharingConsideration:(int64_t)consideration
{
  v29 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  v8 = [MEMORY[0x1E695DFA8] set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v23 = highlightCopy;
  childDayGroupPhotosHighlights = [highlightCopy childDayGroupPhotosHighlights];
  v10 = [childDayGroupPhotosHighlights countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = v10;
  v12 = *v25;
  v13 = 0.0;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v25 != v12)
      {
        objc_enumerationMutation(childDayGroupPhotosHighlights);
      }

      if (consideration == 2)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotosHighlightGenerator+Curation.m" lineNumber:553 description:@"Invalid sharing consideration for provisional key asset."];

LABEL_18:
        v17 = 0;
        goto LABEL_19;
      }

      v15 = *(*(&v24 + 1) + 8 * i);
      if (consideration == 1)
      {
        keyAssetForKindShared = [*(*(&v24 + 1) + 8 * i) keyAssetForKindShared];
      }

      else
      {
        if (consideration)
        {
          goto LABEL_18;
        }

        keyAssetForKindShared = [*(*(&v24 + 1) + 8 * i) keyAssetForKindPrivate];
      }

      v17 = keyAssetForKindShared;
      if (keyAssetForKindShared)
      {
        [v15 promotionScore];
        v19 = v18;
        if (![v8 count] || v19 >= v13)
        {
          if (v19 > v13)
          {
            [v8 removeAllObjects];
          }

          [v8 addObject:v17];
          v13 = v19;
        }
      }

LABEL_19:
    }

    v11 = [childDayGroupPhotosHighlights countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v11);
LABEL_21:

  if ([v8 count] < 2)
  {
    [v8 anyObject];
  }

  else
  {
    [self _bestAssetInAssets:v8 fallback:1];
  }
  v21 = ;

  return v21;
}

+ (id)_provisionalKeyAssetForDayHighlight:(id)highlight sharingConsideration:(int64_t)consideration
{
  highlightCopy = highlight;
  sharingComposition = [highlightCopy sharingComposition];
  if (consideration == 2 || sharingComposition == 2)
  {
    switch(consideration)
    {
      case 2:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotosHighlightGenerator+Curation.m" lineNumber:527 description:@"Invalid sharing consideration for provisional key asset."];

        break;
      case 1:
LABEL_12:
        extendedAssetsShared = [highlightCopy extendedAssetsShared];
        goto LABEL_13;
      case 0:
LABEL_11:
        extendedAssetsShared = [highlightCopy extendedAssetsPrivate];
LABEL_13:
        v11 = extendedAssetsShared;
LABEL_16:
        v9 = [self _bestAssetInAssets:v11 fallback:0];

        goto LABEL_17;
    }

    v11 = 0;
    goto LABEL_16;
  }

  if (!consideration && !sharingComposition)
  {
    goto LABEL_11;
  }

  v9 = 0;
  if (consideration == 1 && sharingComposition == 1)
  {
    goto LABEL_12;
  }

LABEL_17:

  return v9;
}

+ (id)provisionalKeyAssetForHighlight:(id)highlight sharingConsideration:(int64_t)consideration
{
  highlightCopy = highlight;
  kind = [highlightCopy kind];
  if ((kind - 1) < 2)
  {
    v8 = [self _provisionalKeyAssetForMonthAndYearHighlight:highlightCopy sharingConsideration:consideration];
    goto LABEL_7;
  }

  if (kind == 3)
  {
    v8 = [self _provisionalKeyAssetForDayGroupHighlight:highlightCopy sharingConsideration:consideration];
    goto LABEL_7;
  }

  if (!kind)
  {
    v8 = [self _provisionalKeyAssetForDayHighlight:highlightCopy sharingConsideration:consideration];
LABEL_7:
    v9 = v8;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

+ (void)updateKeyAssetForHighlights:(id)highlights
{
  v39[4] = *MEMORY[0x1E69E9840];
  highlightsCopy = highlights;
  v38[0] = &unk_1F0FBD078;
  v38[1] = &unk_1F0FBD0A8;
  v39[0] = &unk_1F0FBD090;
  v39[1] = &unk_1F0FBD0C0;
  v38[2] = &unk_1F0FBD0D8;
  v38[3] = &unk_1F0FBD108;
  v39[2] = &unk_1F0FBD0F0;
  v39[3] = &unk_1F0FBD120;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:4];
  v25 = highlightsCopy;
  allObjects = [highlightsCopy allObjects];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __68__PLPhotosHighlightGenerator_Curation__updateKeyAssetForHighlights___block_invoke;
  v33[3] = &unk_1E756E530;
  v24 = v5;
  v34 = v24;
  v7 = [allObjects sortedArrayUsingComparator:v33];

  v8 = [MEMORY[0x1E695DFA8] set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    v27 = *v30;
    selfCopy = self;
    v26 = v9;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        if (([v8 containsObject:v14] & 1) == 0 && (objc_msgSend(v14, "isDeleted") & 1) == 0)
        {
          keyAssetForKindPrivate = [v14 keyAssetForKindPrivate];
          uniqueObjectID = [keyAssetForKindPrivate uniqueObjectID];

          keyAssetForKindShared = [v14 keyAssetForKindShared];
          uniqueObjectID2 = [keyAssetForKindShared uniqueObjectID];

          v19 = [objc_opt_class() provisionalKeyAssetForHighlight:v14 sharingConsideration:0];
          v20 = [objc_opt_class() provisionalKeyAssetForHighlight:v14 sharingConsideration:1];
          [v14 setKeyAssetForKindPrivate:v19];
          [v14 setKeyAssetForKindShared:v20];
          if (v19 | v20)
          {
            [objc_opt_class() _updateMixedSharingCompositionKeyAssetRelationshipForHighlight:v14];
            parentPhotosHighlight = [v14 parentPhotosHighlight];
            if ([self _shouldUpdateKeyAssetForParentHighlight:parentPhotosHighlight withPrivateKeyAssetObjectID:uniqueObjectID andSharedKeyAssetObjectID:uniqueObjectID2])
            {
              [self _updateParentHighlightNeedingNewKeyAsset:parentPhotosHighlight withProvisionalKeyAssetPrivate:v19 andProvisionalKeyAssetShared:v20 updatedHighlights:v8];
            }

            parentDayGroupPhotosHighlight = [v14 parentDayGroupPhotosHighlight];
            if ([self _shouldUpdateKeyAssetForParentHighlight:parentDayGroupPhotosHighlight withPrivateKeyAssetObjectID:uniqueObjectID andSharedKeyAssetObjectID:uniqueObjectID2])
            {
              [selfCopy _updateParentHighlightNeedingNewKeyAsset:parentDayGroupPhotosHighlight withProvisionalKeyAssetPrivate:v19 andProvisionalKeyAssetShared:v20 updatedHighlights:v8];
            }

            self = selfCopy;
            v9 = v26;
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            uuid = [v14 uuid];
            *buf = 138412290;
            v36 = uuid;
            _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "No provisonal key asset found for highlight: %@", buf, 0xCu);

            self = selfCopy;
          }

          v12 = v27;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v11);
  }
}

uint64_t __68__PLPhotosHighlightGenerator_Curation__updateKeyAssetForHighlights___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 kind];
  v8 = [v6 kind];
  if (v7 == v8)
  {
    v9 = [v5 uuid];
    v10 = [v6 uuid];
    v11 = [v9 compare:v10];
  }

  else
  {
    v12 = v8;
    v13 = *(a1 + 32);
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v7];
    v10 = [v13 objectForKeyedSubscript:v9];
    v14 = *(a1 + 32);
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v12];
    v16 = [v14 objectForKeyedSubscript:v15];
    v11 = [v10 compare:v16];
  }

  return v11;
}

+ (void)_updateParentHighlightNeedingNewKeyAsset:(id)asset withProvisionalKeyAssetPrivate:(id)private andProvisionalKeyAssetShared:(id)shared updatedHighlights:(id)highlights
{
  v23 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  privateCopy = private;
  sharedCopy = shared;
  highlightsCopy = highlights;
  if (!privateCopy)
  {
    uniqueObjectID = 0;
    if (sharedCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    uniqueObjectID2 = 0;
    goto LABEL_6;
  }

  keyAssetForKindPrivate = [assetCopy keyAssetForKindPrivate];
  uniqueObjectID = [keyAssetForKindPrivate uniqueObjectID];

  [assetCopy setKeyAssetForKindPrivate:privateCopy];
  if (!sharedCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  keyAssetForKindShared = [assetCopy keyAssetForKindShared];
  uniqueObjectID2 = [keyAssetForKindShared uniqueObjectID];

  [assetCopy setKeyAssetForKindShared:sharedCopy];
LABEL_6:
  [objc_opt_class() _updateMixedSharingCompositionKeyAssetRelationshipForHighlight:assetCopy];
  if (([assetCopy missingKeyAssetForKindPrivate] & 1) == 0 && (objc_msgSend(assetCopy, "missingKeyAssetForKindShared") & 1) == 0)
  {
    [highlightsCopy addObject:assetCopy];
  }

  parentPhotosHighlight = [assetCopy parentPhotosHighlight];
  if ([parentPhotosHighlight isEqual:assetCopy])
  {
    v19 = PLMomentsGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      objectID = [assetCopy objectID];
      v21 = 138543362;
      v22 = objectID;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Ignoring call to update parent highlight (parent is set to self) for: %{public}@", &v21, 0xCu);
    }
  }

  else if ([self _shouldUpdateKeyAssetForParentHighlight:parentPhotosHighlight withPrivateKeyAssetObjectID:uniqueObjectID andSharedKeyAssetObjectID:uniqueObjectID2])
  {
    [self _updateParentHighlightNeedingNewKeyAsset:parentPhotosHighlight withProvisionalKeyAssetPrivate:privateCopy andProvisionalKeyAssetShared:sharedCopy updatedHighlights:highlightsCopy];
  }
}

+ (void)_updateMixedSharingCompositionKeyAssetRelationshipForHighlight:(id)highlight
{
  highlightCopy = highlight;
  keyAssetForKindPrivate = [highlightCopy keyAssetForKindPrivate];
  if (keyAssetForKindPrivate && (v5 = keyAssetForKindPrivate, [highlightCopy keyAssetForKindShared], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = MEMORY[0x1E695DFD8];
    keyAssetForKindShared = [highlightCopy keyAssetForKindShared];
    keyAssetForKindPrivate2 = [highlightCopy keyAssetForKindPrivate];
    v10 = [v7 setWithObjects:{keyAssetForKindShared, keyAssetForKindPrivate2, 0}];
    v11 = [self _bestAssetInAssets:v10 fallback:1];

    if ([v11 hasLibraryScope])
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [highlightCopy setMixedSharingCompositionKeyAssetRelationship:v12];
  }

  else
  {
    keyAssetForKindShared2 = [highlightCopy keyAssetForKindShared];

    if (keyAssetForKindShared2)
    {
      v14 = highlightCopy;
      v15 = 2;
    }

    else
    {
      keyAssetForKindPrivate3 = [highlightCopy keyAssetForKindPrivate];

      v14 = highlightCopy;
      v15 = keyAssetForKindPrivate3 != 0;
    }

    [v14 setMixedSharingCompositionKeyAssetRelationship:v15];
  }
}

+ (BOOL)_shouldUpdateKeyAssetForParentHighlight:(id)highlight withPrivateKeyAssetObjectID:(id)d andSharedKeyAssetObjectID:(id)iD
{
  highlightCopy = highlight;
  dCopy = d;
  iDCopy = iD;
  v14 = 1;
  if (!highlightCopy || !dCopy || ([highlightCopy keyAssetForKindPrivate], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "uniqueObjectID"), v11 = objc_claimAutoreleasedReturnValue(), v10, LOBYTE(v10) = objc_msgSend(v11, "isEqual:", dCopy), v11, (v10 & 1) == 0))
  {
    if (!highlightCopy || !iDCopy || ([highlightCopy keyAssetForKindShared], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "uniqueObjectID"), v13 = objc_claimAutoreleasedReturnValue(), v12, LOBYTE(v12) = objc_msgSend(v13, "isEqual:", iDCopy), v13, (v12 & 1) == 0))
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)resetPreviousRecentHighlightCurationForHighlight:(id)highlight
{
  highlightCopy = highlight;
  [highlightCopy setKeyAssetForKindPrivate:0];
  [highlightCopy setSummaryAssets:0];
  [highlightCopy setExtendedAssets:0];
}

- (void)updateRecentHighlightCurationForHighlight:(id)highlight
{
  highlightCopy = highlight;
  assets = [highlightCopy assets];
  if ([assets count])
  {
    v6 = [MEMORY[0x1E695DFA8] setWithSet:assets];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__PLPhotosHighlightGenerator_Recent__updateRecentHighlightCurationForHighlight___block_invoke;
    v8[3] = &unk_1E75702B8;
    v8[4] = self;
    v7 = [MEMORY[0x1E696AE18] predicateWithBlock:v8];
    [v6 filterUsingPredicate:v7];

    [highlightCopy setSummaryAssets:v6];
    [highlightCopy setExtendedAssets:v6];
    [highlightCopy setPromotionScore:0.3];
  }
}

uint64_t __80__PLPhotosHighlightGenerator_Recent__updateRecentHighlightCurationForHighlight___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() assetEligibleForRecents:v2];

  return v3;
}

- (id)fetchAllOngoingTripDayGroupHighlights
{
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self.type == %lu", 4];
  dataManager = [(PLPhotosHighlightGenerator *)self dataManager];
  v8 = 0;
  v5 = [dataManager allPhotosHighlightsOfKind:3 withPredicate:v3 error:&v8];

  v6 = [MEMORY[0x1E695DFD8] setWithArray:v5];

  return v6;
}

- (id)fetchAllRecentHighlights
{
  v15[2] = *MEMORY[0x1E69E9840];
  recentHighlightsDateInterval = [(PLPhotosHighlightGenerator *)self recentHighlightsDateInterval];
  startDate = [recentHighlightsDateInterval startDate];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self.startDate >= %@", startDate];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self.category == %lu", 1];
  v7 = MEMORY[0x1E696AB28];
  v15[0] = v6;
  v15[1] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v9 = [v7 orPredicateWithSubpredicates:v8];

  dataManager = [(PLPhotosHighlightGenerator *)self dataManager];
  v14 = 0;
  v11 = [dataManager allPhotosHighlightsOfKind:0 withPredicate:v9 error:&v14];

  v12 = [MEMORY[0x1E695DFD8] setWithArray:v11];

  return v12;
}

+ (BOOL)assetEligibleForRecents:(id)recents
{
  recentsCopy = recents;
  v4 = recentsCopy;
  if (recentsCopy && [recentsCopy visibilityStateIsEqualToState:0] && objc_msgSend(v4, "kindSubtype") != 10)
  {
    v5 = [v4 isScreenRecording] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_consumeHighlightItemListChanges:(id)changes forKind:(unsigned __int16)kind rule:(id)rule resultBlock:(id)block
{
  kindCopy = kind;
  v102 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  ruleCopy = rule;
  blockCopy = block;
  v71 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(changesCopy, "count")}];
  v10 = [MEMORY[0x1E695DFA8] set];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v11 = changesCopy;
  v12 = [v11 countByEnumeratingWithState:&v87 objects:v101 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v88;
    v68 = *v88;
    v69 = v10;
    v67 = v11;
    do
    {
      v15 = 0;
      v74 = v13;
      do
      {
        if (*v88 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v87 + 1) + 8 * v15);
        if ([v16 isCandidateForReuse])
        {
          parentHighlightItem = [v16 parentHighlightItem];
          v18 = PLMomentsGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            [parentHighlightItem uuid];
            v20 = v19 = v10;
            [parentHighlightItem startDate];
            v22 = v21 = v11;
            endDate = [parentHighlightItem endDate];
            v24 = v16;
            v25 = v15;
            v26 = endDate;
            *buf = 138413058;
            v94 = v24;
            v95 = 2112;
            v96 = v20;
            v97 = 2112;
            v98 = v22;
            v99 = 2112;
            v100 = endDate;
            _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "[HighlightsGeneration] Need to delete: %@ [%@]-(%@-%@)", buf, 0x2Au);

            v15 = v25;
            v11 = v21;

            v10 = v19;
            v13 = v74;
          }

          [v10 addObject:parentHighlightItem];
          goto LABEL_10;
        }

        if (([v16 hasChanges] & 1) != 0 || objc_msgSend(v16, "isNewList"))
        {
          sortedChildHighlightItems = [v16 sortedChildHighlightItems];
          v28 = [sortedChildHighlightItems count];

          if (v28)
          {
            if ([v16 isNewList])
            {
              dataManager = [(PLPhotosHighlightGenerator *)self dataManager];
              insertNewPhotosHighlight = [dataManager insertNewPhotosHighlight];

              [insertNewPhotosHighlight setPromotionScore:0.3];
            }

            else
            {
              insertNewPhotosHighlight = [v16 parentHighlightItem];
            }

            dateRangeTitleGenerator = [(PLPhotosHighlightGenerator *)self dateRangeTitleGenerator];
            v85[0] = MEMORY[0x1E69E9820];
            v85[1] = 3221225472;
            v85[2] = __104__PLPhotosHighlightGenerator_MonthsAndYears___consumeHighlightItemListChanges_forKind_rule_resultBlock___block_invoke;
            v85[3] = &unk_1E7576E70;
            v32 = insertNewPhotosHighlight;
            v86 = v32;
            [ruleCopy titlesForHighlightItemList:v16 dateRangeTitleGenerator:dateRangeTitleGenerator resultBlock:v85];

            [v32 setKind:kindCopy];
            startDate = [v16 startDate];
            [v32 setStartDate:startDate];

            endDate2 = [v16 endDate];
            [v32 setEndDate:endDate2];

            addedHighlightItems = [v16 addedHighlightItems];
            if ([addedHighlightItems count])
            {

              goto LABEL_22;
            }

            removedHighlightItems = [v16 removedHighlightItems];
            v37 = [removedHighlightItems count];

            if (v37)
            {
LABEL_22:
              v73 = v15;
              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              v75 = v16;
              sortedChildHighlightItems2 = [v16 sortedChildHighlightItems];
              v39 = [sortedChildHighlightItems2 countByEnumeratingWithState:&v81 objects:v92 count:16];
              if (v39)
              {
                v40 = v39;
                v41 = *v82;
                do
                {
                  for (i = 0; i != v40; ++i)
                  {
                    if (*v82 != v41)
                    {
                      objc_enumerationMutation(sortedChildHighlightItems2);
                    }

                    v43 = *(*(&v81 + 1) + 8 * i);
                    parentPhotosHighlight = [v43 parentPhotosHighlight];
                    v45 = [parentPhotosHighlight isEqual:v32];

                    if ((v45 & 1) == 0)
                    {
                      keyAssetForKindPrivate = [v43 keyAssetForKindPrivate];
                      monthHighlightBeingKeyAssetPrivate = [keyAssetForKindPrivate monthHighlightBeingKeyAssetPrivate];

                      if (monthHighlightBeingKeyAssetPrivate)
                      {
                        highlightsNeedingNewKeyAsset = [(PLPhotosHighlightGenerator *)self highlightsNeedingNewKeyAsset];
                        [highlightsNeedingNewKeyAsset addObject:monthHighlightBeingKeyAssetPrivate];
                      }

                      keyAssetForKindShared = [v43 keyAssetForKindShared];
                      monthHighlightBeingKeyAssetShared = [keyAssetForKindShared monthHighlightBeingKeyAssetShared];

                      if (monthHighlightBeingKeyAssetShared)
                      {
                        highlightsNeedingNewKeyAsset2 = [(PLPhotosHighlightGenerator *)self highlightsNeedingNewKeyAsset];
                        [highlightsNeedingNewKeyAsset2 addObject:monthHighlightBeingKeyAssetShared];
                      }

                      [v43 setParentPhotosHighlight:v32];
                    }
                  }

                  v40 = [sortedChildHighlightItems2 countByEnumeratingWithState:&v81 objects:v92 count:16];
                }

                while (v40);
              }

              v79 = 0u;
              v80 = 0u;
              v77 = 0u;
              v78 = 0u;
              obj = [v75 removedHighlightItems];
              v52 = [obj countByEnumeratingWithState:&v77 objects:v91 count:16];
              if (v52)
              {
                v53 = v52;
                v54 = *v78;
                do
                {
                  for (j = 0; j != v53; ++j)
                  {
                    if (*v78 != v54)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v56 = *(*(&v77 + 1) + 8 * j);
                    keyAssetForKindShared2 = [v56 keyAssetForKindShared];
                    keyAssetForKindShared3 = [v32 keyAssetForKindShared];
                    v59 = keyAssetForKindShared3;
                    if (keyAssetForKindShared2 == keyAssetForKindShared3)
                    {
                    }

                    else
                    {
                      keyAssetForKindPrivate2 = [v56 keyAssetForKindPrivate];
                      keyAssetForKindPrivate3 = [v32 keyAssetForKindPrivate];

                      if (keyAssetForKindPrivate2 != keyAssetForKindPrivate3)
                      {
                        goto LABEL_45;
                      }
                    }

                    highlightsNeedingNewKeyAsset3 = [(PLPhotosHighlightGenerator *)self highlightsNeedingNewKeyAsset];
                    [highlightsNeedingNewKeyAsset3 addObject:v32];

LABEL_45:
                    parentPhotosHighlight2 = [v56 parentPhotosHighlight];
                    v64 = [parentPhotosHighlight2 isEqual:v32];

                    if (v64)
                    {
                      [v56 setParentPhotosHighlight:0];
                    }
                  }

                  v53 = [obj countByEnumeratingWithState:&v77 objects:v91 count:16];
                }

                while (v53);
              }

              v11 = v67;
              v15 = v73;
              v16 = v75;
            }

            if (([v16 isNewList] & 1) != 0 || (objc_msgSend(v32, "missingKeyAssetForKindPrivate") & 1) != 0 || objc_msgSend(v32, "missingKeyAssetForKindShared"))
            {
              highlightsNeedingNewKeyAsset4 = [(PLPhotosHighlightGenerator *)self highlightsNeedingNewKeyAsset];
              [highlightsNeedingNewKeyAsset4 addObject:v32];
            }

            [v32 bumpHighlightVersion];
            [v71 addObject:v32];

            v14 = v68;
            v10 = v69;
            v13 = v74;
            goto LABEL_55;
          }

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            parentHighlightItem = [v16 parentHighlightItem];
            *buf = 138412546;
            v94 = v16;
            v95 = 2112;
            v96 = parentHighlightItem;
            _os_log_fault_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Tring to generate a month/year with 0 child: %@ - %@", buf, 0x16u);
LABEL_10:
          }
        }

LABEL_55:
        ++v15;
      }

      while (v15 != v13);
      v13 = [v11 countByEnumeratingWithState:&v87 objects:v101 count:16];
    }

    while (v13);
  }

  blockCopy[2](blockCopy, v71, v10);
}

void __104__PLPhotosHighlightGenerator_MonthsAndYears___consumeHighlightItemListChanges_forKind_rule_resultBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setTitle:a2];
  [*(a1 + 32) setSubtitle:v6];
}

- (void)generateHighlightListForUpdatedHighlights:(id)highlights deletedHighlights:(id)deletedHighlights
{
  v138 = *MEMORY[0x1E69E9840];
  highlightsCopy = highlights;
  deletedHighlightsCopy = deletedHighlights;
  v57 = objc_alloc_init(PLMonthGroupingRule);
  v61 = [[PLHighlightItemClusterer alloc] initWithRule:v57];
  v123 = 0;
  v124 = &v123;
  v125 = 0x3032000000;
  v126 = __Block_byref_object_copy__102376;
  v127 = __Block_byref_object_dispose__102377;
  v128 = 0;
  v117 = 0;
  v118 = &v117;
  v119 = 0x3032000000;
  v120 = __Block_byref_object_copy__102376;
  v121 = __Block_byref_object_dispose__102377;
  v122 = 0;
  v52 = highlightsCopy;
  v59 = [MEMORY[0x1E695DFD8] setWithArray:highlightsCopy];
  dataManager = [(PLPhotosHighlightGenerator *)self dataManager];
  v116[0] = MEMORY[0x1E69E9820];
  v116[1] = 3221225472;
  v116[2] = __106__PLPhotosHighlightGenerator_MonthsAndYears__generateHighlightListForUpdatedHighlights_deletedHighlights___block_invoke;
  v116[3] = &unk_1E7575270;
  v116[4] = &v123;
  v116[5] = &v117;
  [(PLHighlightItemClusterer *)v61 restoreExistingHighlightItemListsFromUpdatedHighlightItems:v59 deletedHighlightItems:deletedHighlightsCopy usingModelReader:dataManager progressBlock:0 restoreBlock:v116];

  allObjects = [v118[5] allObjects];
  v56 = [(PLHighlightItemClusterer *)v61 processHighlightItems:allObjects withRestoredHighlightItemLists:v124[5] progressBlock:0];

  v110 = 0;
  v111 = &v110;
  v112 = 0x3032000000;
  v113 = __Block_byref_object_copy__102376;
  v114 = __Block_byref_object_dispose__102377;
  v115 = 0;
  v104 = 0;
  v105 = &v104;
  v106 = 0x3032000000;
  v107 = __Block_byref_object_copy__102376;
  v108 = __Block_byref_object_dispose__102377;
  v109 = 0;
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __106__PLPhotosHighlightGenerator_MonthsAndYears__generateHighlightListForUpdatedHighlights_deletedHighlights___block_invoke_2;
  v103[3] = &unk_1E7575270;
  v103[4] = &v110;
  v103[5] = &v104;
  [(PLPhotosHighlightGenerator *)self _consumeHighlightItemListChanges:v56 forKind:1 rule:v57 resultBlock:v103];
  v66 = [MEMORY[0x1E695DFA8] set];
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v8 = v124[5];
  v9 = [v8 countByEnumeratingWithState:&v99 objects:v137 count:16];
  if (v9)
  {
    v10 = *v100;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v100 != v10)
        {
          objc_enumerationMutation(v8);
        }

        parentHighlightItem = [*(*(&v99 + 1) + 8 * i) parentHighlightItem];
        [v66 addObject:parentHighlightItem];
      }

      v9 = [v8 countByEnumeratingWithState:&v99 objects:v137 count:16];
    }

    while (v9);
  }

  [v66 addObjectsFromArray:v111[5]];
  allObjects2 = [v66 allObjects];
  v60 = [(PLPhotosHighlightGenerator *)self updateElectedEventForUpdatedMonths:allObjects2];

  if ([v111[5] count] || objc_msgSend(v105[5], "count") || objc_msgSend(v60, "count"))
  {
    v14 = objc_alloc_init(PLYearGroupingRule);
    v15 = [[PLHighlightItemClusterer alloc] initWithRule:v14];
    v55 = v14;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v134 = __Block_byref_object_copy__102376;
    v135 = __Block_byref_object_dispose__102377;
    v136 = 0;
    v93 = 0;
    v94 = &v93;
    v95 = 0x3032000000;
    v96 = __Block_byref_object_copy__102376;
    v97 = __Block_byref_object_dispose__102377;
    v98 = 0;
    v16 = [MEMORY[0x1E695DFA8] setWithArray:v111[5]];
    [v16 addObjectsFromArray:v60];
    v17 = v105[5];
    dataManager2 = [(PLPhotosHighlightGenerator *)self dataManager];
    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = __106__PLPhotosHighlightGenerator_MonthsAndYears__generateHighlightListForUpdatedHighlights_deletedHighlights___block_invoke_3;
    v92[3] = &unk_1E7575270;
    v92[4] = buf;
    v92[5] = &v93;
    [(PLHighlightItemClusterer *)v15 restoreExistingHighlightItemListsFromUpdatedHighlightItems:v16 deletedHighlightItems:v17 usingModelReader:dataManager2 progressBlock:0 restoreBlock:v92];
    v51 = v16;
    v54 = v15;

    v86 = 0;
    v87 = &v86;
    v88 = 0x3032000000;
    v89 = __Block_byref_object_copy__102376;
    v90 = __Block_byref_object_dispose__102377;
    v91 = 0;
    allObjects3 = [v94[5] allObjects];
    v53 = [(PLHighlightItemClusterer *)v15 processHighlightItems:allObjects3 withRestoredHighlightItemLists:*(*&buf[8] + 40) progressBlock:0];

    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __106__PLPhotosHighlightGenerator_MonthsAndYears__generateHighlightListForUpdatedHighlights_deletedHighlights___block_invoke_4;
    v85[3] = &unk_1E7575298;
    v85[4] = &v86;
    [(PLPhotosHighlightGenerator *)self _consumeHighlightItemListChanges:v53 forKind:2 rule:v55 resultBlock:v85];
    v20 = [MEMORY[0x1E695DFA8] set];
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v21 = *(*&buf[8] + 40);
    v22 = [v21 countByEnumeratingWithState:&v81 objects:v132 count:16];
    if (v22)
    {
      v23 = *v82;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v82 != v23)
          {
            objc_enumerationMutation(v21);
          }

          parentHighlightItem2 = [*(*(&v81 + 1) + 8 * j) parentHighlightItem];
          [v20 addObject:parentHighlightItem2];
        }

        v22 = [v21 countByEnumeratingWithState:&v81 objects:v132 count:16];
      }

      while (v22);
    }

    [v20 addObjectsFromArray:v87[5]];
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = v20;
    v26 = [obj countByEnumeratingWithState:&v77 objects:v131 count:16];
    if (v26)
    {
      v63 = *v78;
      do
      {
        v27 = 0;
        v64 = v26;
        do
        {
          if (*v78 != v63)
          {
            objc_enumerationMutation(obj);
          }

          v28 = 0;
          v65 = v27;
          v29 = *(*(&v77 + 1) + 8 * v27);
          do
          {
            v30 = off_1E756ACA8[v28];
            v73 = 0u;
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            childPhotosHighlights = [v29 childPhotosHighlights];
            v32 = [childPhotosHighlights countByEnumeratingWithState:&v73 objects:v130 count:16];
            if (v32)
            {
              v33 = *v74;
              while (2)
              {
                for (k = 0; k != v32; ++k)
                {
                  if (*v74 != v33)
                  {
                    objc_enumerationMutation(childPhotosHighlights);
                  }

                  v35 = [*(*(&v73 + 1) + 8 * k) valueForKey:{v30, v51}];
                  v36 = [v35 unsignedShortValue] == 0;

                  if (!v36)
                  {
                    v32 = 4;
                    goto LABEL_34;
                  }
                }

                v32 = [childPhotosHighlights countByEnumeratingWithState:&v73 objects:v130 count:16];
                if (v32)
                {
                  continue;
                }

                break;
              }
            }

LABEL_34:

            v37 = [v29 valueForKey:v30];
            v38 = [v37 unsignedShortValue] == v32;

            if (!v38)
            {
              v39 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v32];
              [v29 setValue:v39 forKey:v30];

              [v29 bumpHighlightVersion];
              sharingComposition = [v29 sharingComposition];
              if (sharingComposition)
              {
                if (sharingComposition == 1)
                {
                  goto LABEL_39;
                }

                if (sharingComposition != 2)
                {
                  goto LABEL_43;
                }

                if (([v29 missingKeyAssetForKindPrivate] & 1) == 0)
                {
LABEL_39:
                  missingKeyAssetForKindShared = [v29 missingKeyAssetForKindShared];
LABEL_41:
                  if (!missingKeyAssetForKindShared)
                  {
                    goto LABEL_43;
                  }
                }

                highlightsNeedingNewKeyAsset = [(PLPhotosHighlightGenerator *)self highlightsNeedingNewKeyAsset];
                [highlightsNeedingNewKeyAsset addObject:v29];

                goto LABEL_43;
              }

              missingKeyAssetForKindShared = [v29 missingKeyAssetForKindPrivate];
              goto LABEL_41;
            }

LABEL_43:

            ++v28;
          }

          while (v28 != 3);
          v27 = v65 + 1;
        }

        while (v65 + 1 != v64);
        v26 = [obj countByEnumeratingWithState:&v77 objects:v131 count:16];
      }

      while (v26);
    }

    _Block_object_dispose(&v86, 8);
    _Block_object_dispose(&v93, 8);

    _Block_object_dispose(buf, 8);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v68 = v105[5];
  v43 = [v68 countByEnumeratingWithState:&v69 objects:v129 count:16];
  if (v43)
  {
    v44 = *v70;
    do
    {
      for (m = 0; m != v43; ++m)
      {
        if (*v70 != v44)
        {
          objc_enumerationMutation(v68);
        }

        v46 = *(*(&v69 + 1) + 8 * m);
        v47 = PLMomentsGetLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          uuid = [v46 uuid];
          startDate = [v46 startDate];
          endDate = [v46 endDate];
          *buf = 138412802;
          *&buf[4] = uuid;
          *&buf[12] = 2112;
          *&buf[14] = startDate;
          *&buf[22] = 2112;
          v134 = endDate;
          _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_INFO, "[HighlightsGeneration] Deleting month: [%@]-(%@-%@)", buf, 0x20u);
        }

        [v46 delete];
      }

      v43 = [v68 countByEnumeratingWithState:&v69 objects:v129 count:16];
    }

    while (v43);
  }

  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v110, 8);

  _Block_object_dispose(&v117, 8);
  _Block_object_dispose(&v123, 8);
}

void __106__PLPhotosHighlightGenerator_MonthsAndYears__generateHighlightListForUpdatedHighlights_deletedHighlights___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __106__PLPhotosHighlightGenerator_MonthsAndYears__generateHighlightListForUpdatedHighlights_deletedHighlights___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __106__PLPhotosHighlightGenerator_MonthsAndYears__generateHighlightListForUpdatedHighlights_deletedHighlights___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __106__PLPhotosHighlightGenerator_MonthsAndYears__generateHighlightListForUpdatedHighlights_deletedHighlights___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = PLMomentsGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v12 uuid];
          v15 = [v12 startDate];
          v16 = [v12 endDate];
          *buf = 138412802;
          v23 = v14;
          v24 = 2112;
          v25 = v15;
          v26 = 2112;
          v27 = v16;
          _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, "[HighlightsGeneration] Deleting year: [%@]-(%@-%@)", buf, 0x20u);
        }

        [v12 delete];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v9);
  }
}

- (id)updateElectedEventForUpdatedMonths:(id)months
{
  v93 = *MEMORY[0x1E69E9840];
  monthsCopy = months;
  array = [MEMORY[0x1E695DF70] array];
  v43 = objc_alloc_init(PLMonthGroupingRule);
  v50 = [[PLHighlightItemPromoter alloc] initWithRule:v43];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = monthsCopy;
  v46 = [obj countByEnumeratingWithState:&v85 objects:v92 count:16];
  if (v46)
  {
    v45 = *v86;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v86 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v52 = 0;
        v53 = *(*(&v85 + 1) + 8 * i);
        do
        {
          context = objc_autoreleasePoolPush();
          v55 = off_1E756ACA8[v52];
          v54 = [MEMORY[0x1E695DFA8] set];
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          childPhotosHighlights = [v53 childPhotosHighlights];
          v5 = [childPhotosHighlights countByEnumeratingWithState:&v81 objects:v91 count:16];
          if (!v5)
          {

LABEL_19:
            v75 = 0;
            v76 = &v75;
            v77 = 0x3032000000;
            v78 = __Block_byref_object_copy__102376;
            v79 = __Block_byref_object_dispose__102377;
            v80 = 0;
            v69 = 0;
            v70 = &v69;
            v71 = 0x3032000000;
            v72 = __Block_byref_object_copy__102376;
            v73 = __Block_byref_object_dispose__102377;
            v74 = 0;
            v65 = 0;
            v66 = &v65;
            v67 = 0x2020000000;
            v68 = 0;
            v14 = [PLHighlightItemList alloc];
            childPhotosHighlights2 = [v53 childPhotosHighlights];
            allObjects = [childPhotosHighlights2 allObjects];
            v17 = [(PLHighlightItemList *)v14 initWithParentHighlightItem:v53 childHighlightItems:allObjects];

            v64[0] = MEMORY[0x1E69E9820];
            v64[1] = 3221225472;
            v64[2] = __81__PLPhotosHighlightGenerator_MonthsAndYears__updateElectedEventForUpdatedMonths___block_invoke;
            v64[3] = &unk_1E7575248;
            v64[4] = &v75;
            v64[5] = &v69;
            v64[6] = &v65;
            [(PLHighlightItemPromoter *)v50 processHighlightItemsInHighlightItemList:v17 currentlyPromotedHighlightItems:v54 withSharingConsideration:v52 resultBlock:v64];
            v18 = *(v66 + 24);
            if (*(v66 + 24))
            {
              v19 = 2;
            }

            else
            {
              v19 = 0;
            }

            v20 = [v53 valueForKey:v55];
            v21 = [v20 unsignedShortValue] == v19;

            if (!v21)
            {
              v22 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v19];
              [v53 setValue:v22 forKey:v55];

              if (v18 && (([v53 missingKeyAssetForKindPrivate] & 1) != 0 || objc_msgSend(v53, "missingKeyAssetForKindShared")))
              {
                highlightsNeedingNewKeyAsset = [(PLPhotosHighlightGenerator *)self highlightsNeedingNewKeyAsset];
                [highlightsNeedingNewKeyAsset addObject:v53];
              }

              [v53 bumpHighlightVersion];
              [array addObject:v53];
            }

            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v24 = v76[5];
            v25 = [v24 countByEnumeratingWithState:&v60 objects:v90 count:16];
            if (v25)
            {
              v26 = *v61;
              do
              {
                for (j = 0; j != v25; ++j)
                {
                  if (*v61 != v26)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v28 = *(*(&v60 + 1) + 8 * j);
                  type = [v28 type];
                  if ((type - 1) < 2u || type == 4)
                  {
                    v31 = 2;
                  }

                  else
                  {
                    v31 = 3;
                  }

                  v32 = [MEMORY[0x1E696AD98] numberWithInt:v31];
                  [v28 setValue:v32 forKey:v55];
                }

                v25 = [v24 countByEnumeratingWithState:&v60 objects:v90 count:16];
              }

              while (v25);
            }

            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v33 = v70[5];
            v34 = [v33 countByEnumeratingWithState:&v56 objects:v89 count:16];
            if (v34)
            {
              v35 = *v57;
              do
              {
                for (k = 0; k != v34; ++k)
                {
                  if (*v57 != v35)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v37 = *(*(&v56 + 1) + 8 * k);
                  type2 = [v37 type];
                  v40 = type2 != 4 && (type2 - 3) < 0xFFFEu;
                  v41 = [MEMORY[0x1E696AD98] numberWithInt:v40];
                  [v37 setValue:v41 forKey:v55];
                }

                v34 = [v33 countByEnumeratingWithState:&v56 objects:v89 count:16];
              }

              while (v34);
            }

            _Block_object_dispose(&v65, 8);
            _Block_object_dispose(&v69, 8);

            _Block_object_dispose(&v75, 8);
            goto LABEL_55;
          }

          v6 = 0;
          v7 = 0;
          v8 = *v82;
          do
          {
            for (m = 0; m != v5; ++m)
            {
              if (*v82 != v8)
              {
                objc_enumerationMutation(childPhotosHighlights);
              }

              v10 = *(*(&v81 + 1) + 8 * m);
              v11 = [v10 enrichmentState] != 0;
              v12 = [v10 valueForKey:v55];
              unsignedShortValue = [v12 unsignedShortValue];

              if ((unsignedShortValue & 0xFFFE) == 2)
              {
                [v54 addObject:v10];
              }

              v7 |= v11;
              v6 |= (unsignedShortValue & 0xFFFE) == 2;
            }

            v5 = [childPhotosHighlights countByEnumeratingWithState:&v81 objects:v91 count:16];
          }

          while (v5);

          if ((v7 & v6 & 1) == 0)
          {
            goto LABEL_19;
          }

LABEL_55:

          objc_autoreleasePoolPop(context);
          ++v52;
        }

        while (v52 != 3);
      }

      v46 = [obj countByEnumeratingWithState:&v85 objects:v92 count:16];
    }

    while (v46);
  }

  return array;
}

void __81__PLPhotosHighlightGenerator_MonthsAndYears__updateElectedEventForUpdatedMonths___block_invoke(void *a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1[4] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(a1[5] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  *(*(a1[6] + 8) + 24) = a4;
}

+ (void)updateTitleForHighlights:(id)highlights forKind:(unsigned __int16)kind forceUpdateLocale:(BOOL)locale dateRangeTitleGenerator:(id)generator
{
  localeCopy = locale;
  kindCopy = kind;
  v30 = *MEMORY[0x1E69E9840];
  highlightsCopy = highlights;
  generatorCopy = generator;
  v9 = off_1E7560908;
  if (kindCopy != 1)
  {
    v9 = off_1E7561178;
  }

  v10 = objc_alloc_init(*v9);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = highlightsCopy;
  v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v25 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        v17 = [PLHighlightItemList alloc];
        childPhotosHighlights = [v15 childPhotosHighlights];
        allObjects = [childPhotosHighlights allObjects];
        v20 = [(PLHighlightItemList *)v17 initWithParentHighlightItem:v15 childHighlightItems:allObjects];

        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __121__PLPhotosHighlightGenerator_MonthsAndYears__updateTitleForHighlights_forKind_forceUpdateLocale_dateRangeTitleGenerator___block_invoke;
        v24[3] = &unk_1E7576E70;
        v24[4] = v15;
        [v10 titlesForHighlightItemList:v20 dateRangeTitleGenerator:generatorCopy forceUpdateLocale:localeCopy resultBlock:v24];

        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }
}

void __121__PLPhotosHighlightGenerator_MonthsAndYears__updateTitleForHighlights_forKind_forceUpdateLocale_dateRangeTitleGenerator___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setTitle:a2];
  [*(a1 + 32) setSubtitle:v6];
}

@end