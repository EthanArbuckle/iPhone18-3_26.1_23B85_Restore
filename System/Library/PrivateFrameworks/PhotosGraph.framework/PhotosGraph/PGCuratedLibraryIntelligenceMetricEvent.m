@interface PGCuratedLibraryIntelligenceMetricEvent
+ (id)librarySizeRangeDescriptionForLibrarySizeRange:(int64_t)a3;
- (PGCuratedLibraryIntelligenceMetricEvent)initWithGraphManager:(id)a3;
- (double)_ratioFromNumerator:(unint64_t)a3 denominator:(unint64_t)a4;
- (id)_aggregationGroups;
- (id)_assetsStatisticsInHighlights:(id)a3 photoLibrary:(id)a4 includeUtility:(BOOL)a5 progressReporter:(id)a6;
- (id)_dayHighlights;
- (id)_daysWithinAggregations;
- (id)_daysWithinTrips;
- (id)_defaultHighlights;
- (id)_longTripDayGroups;
- (id)_shortTripDayGroups;
- (id)payload;
- (unint64_t)_debugNumberOfAssets;
- (unint64_t)_numberOfDayHighlights;
- (void)_fillContentScoreStatisticsWithGraph:(id)a3 progressReporter:(id)a4;
- (void)_fillDayHighlightsStatisticsWithGraph:(id)a3 progressReporter:(id)a4;
- (void)_fillGenericStatisticsWithGraph:(id)a3;
- (void)_fillHiddenHighlightsStatisticsWithGraph:(id)a3;
- (void)_fillKeyAssetsStatisticsWithGraph:(id)a3 progressReporter:(id)a4;
- (void)_fillMomentsStatisticsWithGraph:(id)a3;
- (void)_fillMonthHighlightsStatisticsWithGraph:(id)a3 progressReporter:(id)a4;
- (void)_fillOnesiesHighlightStatisticsWithGraph:(id)a3 progressReporter:(id)a4;
- (void)_fillProcessingLevelStatisticsWithGraph:(id)a3 progressReporter:(id)a4;
- (void)_fillYearHighlightsStatisticsWithGraph:(id)a3;
- (void)_saveKey:(id)a3 doubleValue:(double)a4 payload:(id)a5;
- (void)_saveKey:(id)a3 integerValue:(unint64_t)a4 payload:(id)a5;
- (void)gatherMetricsWithProgressBlock:(id)a3;
@end

@implementation PGCuratedLibraryIntelligenceMetricEvent

- (id)_longTripDayGroups
{
  v2 = [(PGManager *)self->_manager photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type = %d", 1];
  [v3 setPredicate:v4];

  v5 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000304 options:v3];

  return v5;
}

- (id)_shortTripDayGroups
{
  v2 = [(PGManager *)self->_manager photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type = %d", 2];
  [v3 setPredicate:v4];

  v5 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000304 options:v3];

  return v5;
}

- (id)_daysWithinTrips
{
  v2 = [(PGManager *)self->_manager photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type = %d", 5];
  [v3 setPredicate:v4];

  v5 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000301 options:v3];

  return v5;
}

- (id)_aggregationGroups
{
  v2 = [(PGManager *)self->_manager photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type = %d", 3];
  [v3 setPredicate:v4];

  v5 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000304 options:v3];

  return v5;
}

- (id)_daysWithinAggregations
{
  v2 = [(PGManager *)self->_manager photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type = %d", 6];
  [v3 setPredicate:v4];

  v5 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000301 options:v3];

  return v5;
}

- (id)_defaultHighlights
{
  v2 = [(PGManager *)self->_manager photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type = %d", 0];
  [v3 setPredicate:v4];

  v5 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000301 options:v3];

  return v5;
}

- (unint64_t)_numberOfDayHighlights
{
  v2 = [(PGManager *)self->_manager photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  [v3 setShouldPrefetchCount:1];
  v4 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000301 options:v3];
  v5 = [v4 count];

  return v5;
}

- (id)_dayHighlights
{
  v2 = [(PGManager *)self->_manager photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  v4 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000301 options:v3];

  return v4;
}

- (double)_ratioFromNumerator:(unint64_t)a3 denominator:(unint64_t)a4
{
  if (a4)
  {
    return a3 / a4;
  }

  else
  {
    return -1.0;
  }
}

- (id)_assetsStatisticsInHighlights:(id)a3 photoLibrary:(id)a4 includeUtility:(BOOL)a5 progressReporter:(id)a6
{
  v7 = a5;
  v46 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (![v12 isCancelledWithProgress:0.0])
  {
    v33 = v11;
    v32 = objc_autoreleasePoolPush();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v34 = v10;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = 0;
      v19 = *v36;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v35 + 1) + 8 * i);
          v17 += [v21 estimatedAssetCount];
          v18 += [v21 extendedCount];
        }

        v16 = [v14 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v16);
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    if (v7)
    {
      v11 = v33;
      v22 = [v33 librarySpecificFetchOptions];
      [v22 setShouldPrefetchCount:1];
      v23 = [(PGCuratedLibraryIntelligenceMetricEvent *)self utilityPredicate];
      [v22 setInternalPredicate:v23];

      [v22 setIncludeGuestAssets:1];
      v24 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollections:v14 options:v22];
      v25 = [v24 count];
      v26 = v32;
      if ([v12 isCancelledWithProgress:0.8])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v43 = 787;
          v44 = 2080;
          v45 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        objc_autoreleasePoolPop(v32);
        goto LABEL_24;
      }
    }

    else
    {
      v25 = 0;
      v26 = v32;
      v11 = v33;
    }

    objc_autoreleasePoolPop(v26);
    if (![v12 isCancelledWithProgress:1.0])
    {
      v39[0] = @"total";
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
      v40[0] = v27;
      v39[1] = @"curated";
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
      v40[1] = v28;
      v39[2] = @"utility";
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
      v40[2] = v29;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];

      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v43 = 790;
      v44 = 2080;
      v45 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

LABEL_24:
    v13 = MEMORY[0x277CBEC10];
LABEL_26:
    v10 = v34;
    goto LABEL_27;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v43 = 764;
    v44 = 2080;
    v45 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v13 = MEMORY[0x277CBEC10];
LABEL_27:

  v30 = *MEMORY[0x277D85DE8];

  return v13;
}

- (unint64_t)_debugNumberOfAssets
{
  v3 = [(PGManager *)self->_manager photoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"creationDate >= %@", self->_debugDate];
  [v4 setPredicate:v5];

  [v4 setShouldPrefetchCount:1];
  [v4 setIncludeGuestAssets:1];
  v6 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v4];
  v7 = [v6 count];

  return v7;
}

- (id)payload
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"librarySize" integerValue:self->_librarySize payload:v3];
  v4 = [objc_opt_class() librarySizeRangeDescriptionForLibrarySizeRange:self->_librarySizeRange];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"librarySizeRange" stringValue:v4 payload:v3];

  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfDaysWithPhotosInPastYear" integerValue:self->_numberOfDaysWithPhotosInPastYear payload:v3];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfDayHighlights" integerValue:self->_numberOfDayHighlights payload:v3];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfDefaultDayHighlights" integerValue:self->_numberOfDefaultDayHighlights payload:v3];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfDaysInTrips" integerValue:self->_numberOfDaysInTrips payload:v3];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfDaysInAggregations" integerValue:self->_numberOfDaysInAggregations payload:v3];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfDefaultDays" doubleValue:v3 payload:self->_ratioOfDefaultDays];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfDaysInTrips" doubleValue:v3 payload:self->_ratioOfDaysInTrips];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfDaysInAggregations" doubleValue:v3 payload:self->_ratioOfDaysInAggregations];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfAggregations" integerValue:self->_numberOfAggregations payload:v3];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfShortTrips" integerValue:self->_numberOfShortTrips payload:v3];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfLongTrips" integerValue:self->_numberOfLongTrips payload:v3];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"averageNumberOfAssetsInDefaultHighlights" doubleValue:v3 payload:self->_averageNumberOfAssetsInDefaultHighlights];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"averageNumberOfAssetsInAggregationHighlights" doubleValue:v3 payload:self->_averageNumberOfAssetsInAggregationHighlights];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"averageNumberOfAssetsInTripHighlights" doubleValue:v3 payload:self->_averageNumberOfAssetsInTripHighlights];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfHiddenDayHighlights" doubleValue:v3 payload:self->_ratioOfHiddenDayHighlights];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfAssetsInDefaultHighlights" doubleValue:v3 payload:self->_ratioOfAssetsInDefaultHighlights];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfAssetsInAggregationHighlights" doubleValue:v3 payload:self->_ratioOfAssetsInAggregationHighlights];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfAssetsInTripHighlights" doubleValue:v3 payload:self->_ratioOfAssetsInTripHighlights];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfAssetsWithUtilityCurationScore" doubleValue:v3 payload:self->_ratioOfAssetsWithUtilityCurationScore];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfAssetsWithDefaultCurationScore" doubleValue:v3 payload:self->_ratioOfAssetsWithDefaultCurationScore];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfAssetsWithImprovedCurationScore" doubleValue:v3 payload:self->_ratioOfAssetsWithImprovedCurationScore];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfAssetsWithBetterCurationScore" doubleValue:v3 payload:self->_ratioOfAssetsWithBetterCurationScore];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"personalHighAestheticScore" doubleValue:v3 payload:self->_personalHighAestheticScore];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"personalGoodAestheticScore" doubleValue:v3 payload:self->_personalGoodAestheticScore];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"topTierAestheticScore" doubleValue:v3 payload:self->_topTierAestheticScore];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"topTierAestheticScoreForTripKeyAsset" doubleValue:v3 payload:self->_topTierAestheticScoreForTripKeyAsset];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfMonthHighlights" integerValue:self->_numberOfMonthHighlights payload:v3];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"averageNumberOfPromotedHighlightsPerMonth" doubleValue:v3 payload:self->_averageNumberOfPromotedHighlightsPerMonth];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"averageNumberOfPromotedHighlightsPerMonthPastYear" doubleValue:v3 payload:self->_averageNumberOfPromotedHighlightsPerMonthPastYear];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"averageNumberOfCuratedAssetsPerMonth" doubleValue:v3 payload:self->_averageNumberOfCuratedAssetsPerMonth];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfCuratedAssetsCoveredInMonth" doubleValue:v3 payload:self->_ratioOfCuratedAssetsCoveredInMonth];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfYearHighlights" integerValue:self->_numberOfYearHighlights payload:v3];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOf1siesAmongVisibleHighlights" doubleValue:v3 payload:self->_ratioOfCurated1siesAmongVisibleHighlights];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOf2siesAmongVisibleHighlights" doubleValue:v3 payload:self->_ratioOfCurated2siesAmongVisibleHighlights];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfCuratedAssets" doubleValue:v3 payload:self->_numberOfCuratedAssets];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfCuratedAssets" doubleValue:v3 payload:self->_ratioOfCuratedAssets];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfCuratedAssetsInTrips" doubleValue:v3 payload:self->_ratioOfCuratedAssetsInTrips];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfCuratedAssetsInDefaultHighlights" doubleValue:v3 payload:self->_ratioOfCuratedAssetsInDefaultHighlights];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfCuratedAssetsInAggregations" doubleValue:v3 payload:self->_ratioOfCuratedAssetsInAggregations];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfUtilityAssets" doubleValue:v3 payload:self->_ratioOfUtilityAssets];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfUtilityAssetsInTrips" doubleValue:v3 payload:self->_ratioOfUtilityAssetsInTrips];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfDedupedAssets" doubleValue:v3 payload:self->_ratioOfDedupedAssets];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfDedupedAssetsInTrips" doubleValue:v3 payload:self->_ratioOfDedupedAssetsInTrips];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfMoments" integerValue:self->_numberOfMoments payload:v3];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfPhotoKeyAssets" doubleValue:v3 payload:self->_ratioOfPhotoKeyAssets];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfVideoKeyAssets" doubleValue:v3 payload:self->_ratioOfVideoKeyAssets];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfAutoplayedPhotoKeyAssets" doubleValue:v3 payload:self->_ratioOfAutoplayedPhotoKeyAssets];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfAutoplayedVideoKeyAssets" doubleValue:v3 payload:self->_ratioOfAutoplayedVideoKeyAssets];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfProcessedScenes" doubleValue:v3 payload:self->_ratioOfProcessedScenes];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfProcessedFaces" doubleValue:v3 payload:self->_ratioOfProcessedFaces];

  return v3;
}

- (void)_saveKey:(id)a3 integerValue:(unint64_t)a4 payload:(id)a5
{
  v7 = MEMORY[0x277CCABB0];
  v8 = a5;
  v9 = a3;
  v10 = [v7 numberWithUnsignedInteger:a4];
  [v8 setObject:v10 forKeyedSubscript:v9];
}

- (void)_saveKey:(id)a3 doubleValue:(double)a4 payload:(id)a5
{
  if (*&PGMetricsUnavailableDoubleValue != a4)
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = a5;
    v9 = a3;
    v10 = [v7 numberWithDouble:a4];
    [v8 setObject:v10 forKeyedSubscript:v9];
  }
}

- (void)_fillProcessingLevelStatisticsWithGraph:(id)a3 progressReporter:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = v7;
  if (![v9 isCancelledWithProgress:0.0])
  {
    v10 = [(PGManager *)self->_manager photoLibrary];
    [v10 ratioOfAssetsWithFacesProcessed];
    [(PGCuratedLibraryIntelligenceMetricEvent *)self setRatioOfProcessedFaces:?];
    if ([v9 isCancelledWithProgress:0.5])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_11:

        goto LABEL_12;
      }

      v13 = 67109378;
      v14 = 619;
      v15 = 2080;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      [v10 ratioOfAssetsWithScenesProcessed];
      [(PGCuratedLibraryIntelligenceMetricEvent *)self setRatioOfProcessedScenes:?];
      if (![v9 isCancelledWithProgress:1.0] || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_11;
      }

      v13 = 67109378;
      v14 = 621;
      v15 = 2080;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
      v11 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v13, 0x12u);
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = 67109378;
    v14 = 614;
    v15 = 2080;
    v16 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v13, 0x12u);
  }

LABEL_12:

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_fillMomentsStatisticsWithGraph:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  self->_numberOfMoments = [v5 numberOfMomentNodes];
  objc_autoreleasePoolPop(v4);
}

- (void)_fillKeyAssetsStatisticsWithGraph:(id)a3 progressReporter:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = v7;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v10 = [v9 isCancelledWithProgress:0.0];
  *(v46 + 24) = v10;
  if (!v10)
  {
    v11 = [(PGCuratedLibraryIntelligenceMetricEvent *)self _dayHighlights];
    if (v46[3])
    {
      *(v46 + 24) = 1;
      goto LABEL_7;
    }

    v12 = [v9 isCancelledWithProgress:0.2];
    *(v46 + 24) = v12;
    if (v12)
    {
LABEL_7:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 562;
        LOWORD(v54) = 2080;
        *(&v54 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_21;
    }

    *buf = 0;
    *&v54 = buf;
    *(&v54 + 1) = 0x2020000000;
    v55 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v13 = [(PGManager *)self->_manager photoLibrary];
    v14 = [v13 librarySpecificFetchOptions];

    v15 = [MEMORY[0x277CD97A8] fetchKeyAssetByHighlightUUIDForHighlights:v11 options:v14];
    if (v46[3])
    {
      *(v46 + 24) = 1;
      goto LABEL_12;
    }

    v16 = [v9 isCancelledWithProgress:0.5];
    *(v46 + 24) = v16;
    if (v16)
    {
LABEL_12:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v49 = 67109378;
        v50 = 572;
        v51 = 2080;
        v52 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v49, 0x12u);
      }

      goto LABEL_20;
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __94__PGCuratedLibraryIntelligenceMetricEvent__fillKeyAssetsStatisticsWithGraph_progressReporter___block_invoke;
    v26[3] = &unk_278880030;
    v28 = buf;
    v29 = &v37;
    v30 = &v41;
    v31 = &v33;
    v32 = &v45;
    v25 = v9;
    v27 = v25;
    [v15 enumerateKeysAndObjectsUsingBlock:v26];
    v17 = *(v54 + 24);
    v18 = v42[3];
    [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v17 denominator:v18 + v17];
    self->_ratioOfPhotoKeyAssets = v19;
    [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v38[3] denominator:v18 + v17];
    self->_ratioOfAutoplayedPhotoKeyAssets = v20;
    [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v42[3] denominator:v18 + v17];
    self->_ratioOfVideoKeyAssets = v21;
    [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v34[3] denominator:v18 + v17];
    self->_ratioOfAutoplayedVideoKeyAssets = v22;
    if (v46[3])
    {
      *(v46 + 24) = 1;
    }

    else
    {
      v23 = [v25 isCancelledWithProgress:1.0];
      *(v46 + 24) = v23;
      if ((v23 & 1) == 0)
      {
LABEL_19:

LABEL_20:
        _Block_object_dispose(&v33, 8);
        _Block_object_dispose(&v37, 8);
        _Block_object_dispose(&v41, 8);
        _Block_object_dispose(buf, 8);
LABEL_21:

        goto LABEL_22;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v49 = 67109378;
      v50 = 600;
      v51 = 2080;
      v52 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v49, 0x12u);
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 559;
    LOWORD(v54) = 2080;
    *(&v54 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_22:
  _Block_object_dispose(&v45, 8);

  objc_autoreleasePoolPop(v8);
  v24 = *MEMORY[0x277D85DE8];
}

void __94__PGCuratedLibraryIntelligenceMetricEvent__fillKeyAssetsStatisticsWithGraph_progressReporter___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  [v9 highlightVisibilityScore];
  v5 = v4;
  if ([v9 mediaType] == 1)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    if (v5 < 0.769230769)
    {
      goto LABEL_8;
    }

    v6 = 48;
  }

  else
  {
    if ([v9 mediaType] != 2)
    {
      goto LABEL_8;
    }

    ++*(*(*(a1 + 56) + 8) + 24);
    if (v5 < 0.769230769)
    {
      goto LABEL_8;
    }

    v6 = 64;
  }

  ++*(*(*(a1 + v6) + 8) + 24);
LABEL_8:
  v7 = *(*(a1 + 72) + 8);
  if (*(v7 + 24))
  {
    v8 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) isCancelledWithProgress:0.8];
    v7 = *(*(a1 + 72) + 8);
  }

  *(v7 + 24) = v8;
}

- (void)_fillOnesiesHighlightStatisticsWithGraph:(id)a3 progressReporter:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = v7;
  if (![v9 isCancelledWithProgress:0.0])
  {
    v10 = [(PGManager *)self->_manager photoLibrary];
    v11 = [v10 librarySpecificFetchOptions];

    v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"visibilityState == %d || visibilityState == %d", 1, 3];
    [v11 setInternalPredicate:v12];

    v13 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:0x7FFFFFFFFFFFFFFFLL options:v11];
    if ([v9 isCancelledWithProgress:0.4])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_30:

        goto LABEL_31;
      }

      *buf = 67109378;
      v40 = 530;
      v41 = 2080;
      v42 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
      v14 = MEMORY[0x277D86220];
    }

    else
    {
      v31 = v11;
      v32 = v8;
      v33 = v6;
      v29 = [v13 count];
      v30 = v13;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = 0;
        v19 = 0;
        v20 = *v35;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v35 != v20)
            {
              objc_enumerationMutation(v15);
            }

            v22 = *(*(&v34 + 1) + 8 * i);
            v23 = objc_autoreleasePoolPush();
            v24 = [v22 extendedCount];
            if (v24 == 1)
            {
              v25 = v19 + 1;
            }

            else
            {
              v25 = v19;
            }

            if (v24 == 2)
            {
              ++v18;
            }

            else
            {
              v19 = v25;
            }

            if ([v9 isCancelledWithProgress:0.8])
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v40 = 547;
                v41 = 2080;
                v42 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              objc_autoreleasePoolPop(v23);

              v8 = v32;
              v6 = v33;
              v13 = v30;
              v11 = v31;
              goto LABEL_30;
            }

            objc_autoreleasePoolPop(v23);
          }

          v17 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v19 denominator:v29];
      self->_ratioOfCurated1siesAmongVisibleHighlights = v26;
      [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v18 denominator:v29];
      self->_ratioOfCurated2siesAmongVisibleHighlights = v27;
      v8 = v32;
      v6 = v33;
      v13 = v30;
      v11 = v31;
      if (![v9 isCancelledWithProgress:1.0] || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      *buf = 67109378;
      v40 = 552;
      v41 = 2080;
      v42 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
      v14 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v40 = 525;
    v41 = 2080;
    v42 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_31:

  objc_autoreleasePoolPop(v8);
  v28 = *MEMORY[0x277D85DE8];
}

- (void)_fillHiddenHighlightsStatisticsWithGraph:(id)a3
{
  v10 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(PGManager *)self->_manager photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"promotionScore < 0.25"];
  [v6 setInternalPredicate:v7];

  v8 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000301 options:v6];
  -[PGCuratedLibraryIntelligenceMetricEvent _ratioFromNumerator:denominator:](self, "_ratioFromNumerator:denominator:", [v8 count], self->_numberOfDayHighlights);
  self->_ratioOfHiddenDayHighlights = v9;

  objc_autoreleasePoolPop(v4);
}

- (void)_fillYearHighlightsStatisticsWithGraph:(id)a3
{
  v8 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(PGManager *)self->_manager photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  v7 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000303 options:v6];
  self->_numberOfYearHighlights = [v7 count];

  objc_autoreleasePoolPop(v4);
}

- (void)_fillMonthHighlightsStatisticsWithGraph:(id)a3 progressReporter:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = v7;
  v49 = v9;
  if ([v9 isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v61 = 445;
      v62 = 2080;
      v63 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  else
  {
    v10 = [(PGManager *)self->_manager photoLibrary];
    v11 = [v10 librarySpecificFetchOptions];
    v12 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000302 options:v11];
    self->_numberOfMonthHighlights = [v12 count];
    if ([v9 isCancelledWithProgress:0.2])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v61 = 452;
        v62 = 2080;
        v63 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      v48 = [MEMORY[0x277D27690] currentLocalDate];
      v13 = [v10 librarySpecificFetchOptions];
      v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"visibilityState == %d || visibilityState == %d", 3, 2];
      v47 = v13;
      [v13 setInternalPredicate:v14];

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      obj = v12;
      v46 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      if (v46)
      {
        v45 = *v55;
        v42 = v8;
        v43 = v6;
        v40 = v11;
        v41 = v10;
        v39 = v12;
        v38 = self;
        while (2)
        {
          v19 = 0;
          v20 = v49;
          do
          {
            if (*v55 != v45)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v54 + 1) + 8 * v19);
            v22 = objc_autoreleasePoolPush();
            v23 = [v21 startDate];
            [v23 timeIntervalSinceDate:v48];
            v25 = v24;

            if (v25 < 0.0)
            {
              v25 = -v25;
            }

            if (v25 < 31536000.0)
            {
              ++v15;
            }

            v26 = [MEMORY[0x277CD9958] fetchChildHighlightsForHighlight:v21 options:v47];
            if ([v20 isCancelledWithProgress:0.5])
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v61 = 476;
                v62 = 2080;
                v63 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              objc_autoreleasePoolPop(v22);
              v8 = v42;
              v6 = v43;
              v11 = v40;
              v10 = v41;
              v12 = v39;
              goto LABEL_38;
            }

            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v27 = v26;
            v28 = [v27 countByEnumeratingWithState:&v50 objects:v58 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v51;
              do
              {
                for (i = 0; i != v29; ++i)
                {
                  if (*v51 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v17 += [*(*(&v50 + 1) + 8 * i) extendedCount];
                }

                if (v25 >= 31536000.0)
                {
                  v32 = 0;
                }

                else
                {
                  v32 = v29;
                }

                v18 += v29;
                v16 += v32;
                v29 = [v27 countByEnumeratingWithState:&v50 objects:v58 count:16];
              }

              while (v29);
            }

            objc_autoreleasePoolPop(v22);
            v20 = v49;
            if ([v49 isCancelledWithProgress:0.5])
            {
              v8 = v42;
              v6 = v43;
              v11 = v40;
              v10 = v41;
              v12 = v39;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v61 = 487;
                v62 = 2080;
                v63 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

LABEL_38:

              goto LABEL_39;
            }

            ++v19;
          }

          while (v19 != v46);
          v8 = v42;
          v6 = v43;
          v11 = v40;
          v10 = v41;
          v12 = v39;
          self = v38;
          v46 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
          if (v46)
          {
            continue;
          }

          break;
        }
      }

      [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v16 denominator:v15];
      self->_averageNumberOfPromotedHighlightsPerMonthPastYear = v33;
      [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v18 denominator:self->_numberOfMonthHighlights];
      self->_averageNumberOfPromotedHighlightsPerMonth = v34;
      [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v17 denominator:self->_numberOfMonthHighlights];
      self->_averageNumberOfCuratedAssetsPerMonth = v35;
      [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v17 denominator:self->_numberOfCuratedAssets];
      self->_ratioOfCuratedAssetsCoveredInMonth = v36;
      if ([v49 isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v61 = 494;
        v62 = 2080;
        v63 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

LABEL_39:
    }
  }

  objc_autoreleasePoolPop(v8);
  v37 = *MEMORY[0x277D85DE8];
}

- (void)_fillContentScoreStatisticsWithGraph:(id)a3 progressReporter:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  if ([a4 isCancelledWithProgress:{a3, 0.0}])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8[0] = 67109378;
      v8[1] = 375;
      v9 = 2080;
      v10 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v8, 0x12u);
    }
  }

  else
  {
    v5 = *&PGMetricsUnavailableDoubleValue;
    *&self->_ratioOfAssetsWithUtilityCurationScore = PGMetricsUnavailableDoubleValue;
    self->_ratioOfAssetsWithDefaultCurationScore = v5;
    v6 = *&PGMetricsUnavailableDoubleValue;
    *&self->_ratioOfAssetsWithImprovedCurationScore = PGMetricsUnavailableDoubleValue;
    self->_ratioOfAssetsWithBetterCurationScore = v6;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_fillDayHighlightsStatisticsWithGraph:(id)a3 progressReporter:(id)a4
{
  v112 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v111 = 269;
      *&v111[4] = 2080;
      *&v111[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  else
  {
    v106 = v6;
    v8 = [(PGManager *)self->_manager photoLibrary];
    v9 = [(PGManager *)self->_manager enrichmentLoggingConnection];
    v10 = objc_autoreleasePoolPush();
    self->_numberOfDayHighlights = [(PGCuratedLibraryIntelligenceMetricEvent *)self _numberOfDayHighlights];
    objc_autoreleasePoolPop(v10);
    context = objc_autoreleasePoolPush();
    v11 = v9;
    v12 = os_signpost_id_generate(v11);
    v13 = v11;
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "DayDefaultStatistics", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v102 = mach_absolute_time();
    v15 = [(PGCuratedLibraryIntelligenceMetricEvent *)self _defaultHighlights];
    self->_numberOfDefaultDayHighlights = [v15 count];
    v108 = v7;
    v16 = [v7 childProgressReporterFromStart:0.01 toEnd:0.09];
    v107 = v8;
    v17 = [(PGCuratedLibraryIntelligenceMetricEvent *)self _assetsStatisticsInHighlights:v15 photoLibrary:v8 includeUtility:0 progressReporter:v16];
    v18 = [v17 objectForKeyedSubscript:@"total"];
    v19 = [v18 unsignedIntegerValue];

    v20 = [v17 objectForKeyedSubscript:@"curated"];
    v21 = [v20 unsignedIntegerValue];

    [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v19 denominator:self->_numberOfDefaultDayHighlights];
    self->_averageNumberOfAssetsInDefaultHighlights = v22;
    [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v19 denominator:self->_librarySize];
    self->_ratioOfAssetsInDefaultHighlights = v23;
    v99 = v21;
    [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v21 denominator:v19];
    self->_ratioOfCuratedAssetsInDefaultHighlights = v24;
    [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:self->_numberOfDefaultDayHighlights denominator:self->_numberOfDayHighlights];
    self->_ratioOfDefaultDays = v25;
    v26 = mach_absolute_time();
    v27 = info;
    v28 = v14;
    v29 = v28;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v29, OS_SIGNPOST_INTERVAL_END, v12, "DayDefaultStatistics", "", buf, 2u);
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v111 = "DayDefaultStatistics";
      *&v111[8] = 2048;
      *&v111[10] = ((((v26 - v102) * v27.numer) / v27.denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v7 = v108;
    if ([v108 isCancelledWithProgress:0.1])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v111 = 300;
        *&v111[4] = 2080;
        *&v111[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      objc_autoreleasePoolPop(context);
      v30 = v107;
    }

    else
    {

      objc_autoreleasePoolPop(context);
      v31 = objc_autoreleasePoolPush();
      v32 = v29;
      v33 = os_signpost_id_generate(v32);
      v34 = v32;
      v35 = v34;
      if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v33, "DayAggregationsStatistics", "", buf, 2u);
      }

      info = 0;
      mach_timebase_info(&info);
      v36 = mach_absolute_time();
      v37 = [(PGCuratedLibraryIntelligenceMetricEvent *)self _daysWithinAggregations];
      if ([v108 isCancelledWithProgress:0.2])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v111 = 308;
          *&v111[4] = 2080;
          *&v111[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        objc_autoreleasePoolPop(v31);
        v30 = v107;
        v7 = v108;
      }

      else
      {
        v38 = [(PGCuratedLibraryIntelligenceMetricEvent *)self _aggregationGroups];
        if ([v108 isCancelledWithProgress:0.3])
        {
          LOBYTE(v39) = 1;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v111 = 311;
            *&v111[4] = 2080;
            *&v111[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          contexta = 0;
          v40 = 0;
          v30 = v107;
          v7 = v108;
        }

        else
        {
          v97 = v38;
          self->_numberOfAggregations = [v38 count];
          self->_numberOfDaysInAggregations = [v37 count];
          [v108 childProgressReporterFromStart:0.31 toEnd:0.39];
          v95 = spid = v37;
          v41 = [(PGCuratedLibraryIntelligenceMetricEvent *)self _assetsStatisticsInHighlights:v37 photoLibrary:v107 includeUtility:0 progressReporter:?];
          v42 = [v41 objectForKeyedSubscript:@"total"];
          v43 = [v42 unsignedIntegerValue];

          v93 = v41;
          v44 = [v41 objectForKeyedSubscript:@"curated"];
          v45 = [v44 unsignedIntegerValue];

          [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v43 denominator:self->_numberOfAggregations];
          self->_averageNumberOfAssetsInAggregationHighlights = v46;
          [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v43 denominator:self->_librarySize];
          self->_ratioOfAssetsInAggregationHighlights = v47;
          contexta = v45;
          [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v45 denominator:v43];
          self->_ratioOfCuratedAssetsInAggregations = v48;
          [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:self->_numberOfDaysInAggregations denominator:self->_numberOfDayHighlights];
          self->_ratioOfDaysInAggregations = v49;
          v50 = mach_absolute_time();
          numer = info.numer;
          denom = info.denom;
          v53 = v35;
          v54 = v53;
          if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v54, OS_SIGNPOST_INTERVAL_END, v33, "DayAggregationsStatistics", "", buf, 2u);
          }

          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *v111 = "DayAggregationsStatistics";
            *&v111[8] = 2048;
            *&v111[10] = ((((v50 - v36) * numer) / denom) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v54, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
          }

          v7 = v108;
          v39 = [v108 isCancelledWithProgress:0.4];
          v30 = v107;
          v38 = v97;
          if (v39 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v111 = 327;
            *&v111[4] = 2080;
            *&v111[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v40 = v39 ^ 1;

          v37 = spid;
        }

        objc_autoreleasePoolPop(v31);
        if (v40)
        {
          v55 = objc_autoreleasePoolPush();
          v56 = v35;
          v57 = os_signpost_id_generate(v56);
          v58 = v56;
          v59 = v58;
          if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v59, OS_SIGNPOST_INTERVAL_BEGIN, v57, "TripsStatistics", "", buf, 2u);
          }

          info = 0;
          mach_timebase_info(&info);
          v60 = mach_absolute_time();
          v61 = [(PGCuratedLibraryIntelligenceMetricEvent *)self _daysWithinTrips];
          if ((v39 & 1) != 0 || [v108 isCancelledWithProgress:0.5])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v111 = 335;
              *&v111[4] = 2080;
              *&v111[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            objc_autoreleasePoolPop(v55);
            v7 = v108;
          }

          else
          {
            v98 = v60;
            v63 = [(PGCuratedLibraryIntelligenceMetricEvent *)self _shortTripDayGroups];
            v103 = v63;
            if ([v108 isCancelledWithProgress:0.6])
            {
              LOBYTE(v64) = 1;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v111 = 338;
                *&v111[4] = 2080;
                *&v111[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              v65 = 0;
              v66 = 0;
              v7 = v108;
            }

            else
            {
              spida = v61;
              v67 = [(PGCuratedLibraryIntelligenceMetricEvent *)self _longTripDayGroups];
              if ([v108 isCancelledWithProgress:0.7])
              {
                LOBYTE(v64) = 1;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *v111 = 341;
                  *&v111[4] = 2080;
                  *&v111[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                v65 = 0;
                v66 = 0;
                v7 = v108;
              }

              else
              {
                v96 = v55;
                self->_numberOfShortTrips = [v63 count];
                v94 = v67;
                v68 = [v67 count];
                self->_numberOfLongTrips = v68;
                numberOfShortTrips = self->_numberOfShortTrips;
                self->_numberOfDaysInTrips = [spida count];
                v92 = [v108 childProgressReporterFromStart:0.71 toEnd:0.79];
                v70 = [(PGCuratedLibraryIntelligenceMetricEvent *)self _assetsStatisticsInHighlights:spida photoLibrary:v30 includeUtility:0 progressReporter:v92];
                v71 = [v70 objectForKeyedSubscript:@"total"];
                v72 = [v71 unsignedIntegerValue];

                [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v72 denominator:numberOfShortTrips + v68];
                self->_averageNumberOfAssetsInTripHighlights = v73;
                [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v72 denominator:self->_librarySize];
                self->_ratioOfAssetsInTripHighlights = v74;
                v75 = [v70 objectForKeyedSubscript:@"curated"];
                v76 = [v75 unsignedIntegerValue];

                [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v76 denominator:v72];
                self->_ratioOfCuratedAssetsInTrips = v77;
                v91 = v70;
                v78 = [v70 objectForKeyedSubscript:@"utility"];
                v79 = [v78 unsignedIntegerValue];

                [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v79 denominator:v72];
                self->_ratioOfUtilityAssetsInTrips = v80;
                v81 = v76;
                [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v72 - (v76 + v79) denominator:v72];
                self->_ratioOfDedupedAssetsInTrips = v82;
                [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:self->_numberOfDaysInTrips denominator:self->_numberOfDayHighlights];
                self->_ratioOfDaysInTrips = v83;
                v84 = mach_absolute_time();
                v86 = info.numer;
                v85 = info.denom;
                v87 = v59;
                v88 = v87;
                if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v87))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v88, OS_SIGNPOST_INTERVAL_END, v57, "TripsStatistics", "", buf, 2u);
                }

                v55 = v96;
                if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  *v111 = "TripsStatistics";
                  *&v111[8] = 2048;
                  *&v111[10] = ((((v84 - v98) * v86) / v85) / 1000000.0);
                  _os_log_impl(&dword_22F0FC000, v88, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
                }

                v7 = v108;
                v64 = [v108 isCancelledWithProgress:0.8];
                v30 = v107;
                v65 = v81;
                if (v64 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *v111 = 363;
                  *&v111[4] = 2080;
                  *&v111[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                v66 = v64 ^ 1;

                v67 = v94;
              }

              v61 = spida;
            }

            objc_autoreleasePoolPop(v55);
            if (v66)
            {
              self->_numberOfCuratedAssets = contexta + v99 + v65;
              librarySize = self->_librarySize;
              [PGCuratedLibraryIntelligenceMetricEvent _ratioFromNumerator:"_ratioFromNumerator:denominator:" denominator:?];
              self->_ratioOfCuratedAssets = v90;
              if (((v64 & 1) != 0 || [v7 isCancelledWithProgress:1.0]) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v111 = 370;
                *&v111[4] = 2080;
                *&v111[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }
            }
          }
        }
      }
    }

    v6 = v106;
  }

  v62 = *MEMORY[0x277D85DE8];
}

- (void)_fillGenericStatisticsWithGraph:(id)a3
{
  v13 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v13 infoNode];
  self->_librarySize = [v5 numberOfAssets];

  self->_librarySizeRange = [v13 librarySizeRange];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [MEMORY[0x277D27690] dateByAddingDays:-365 toDate:v6];
  v8 = [MEMORY[0x277D27690] startOfDayForDate:v7];

  v9 = [(PGManager *)self->_manager photoLibrary];
  v10 = [v9 librarySpecificFetchOptions];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"startDate >= %@", v8];
  [v10 setPredicate:v11];

  [v10 setShouldPrefetchCount:1];
  v12 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000301 options:v10];
  self->_numberOfDaysWithPhotosInPastYear = [v12 count];

  objc_autoreleasePoolPop(v4);
}

- (void)gatherMetricsWithProgressBlock:(id)a3
{
  v4 = a3;
  v5 = [(PGManager *)self->_manager enrichmentLoggingConnection];
  manager = self->_manager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__PGCuratedLibraryIntelligenceMetricEvent_gatherMetricsWithProgressBlock___block_invoke;
  v9[3] = &unk_27888B2F8;
  v11 = self;
  v12 = v4;
  v10 = v5;
  v7 = v5;
  v8 = v4;
  [(PGManager *)manager performSynchronousConcurrentGraphReadUsingBlock:v9];
}

void __74__PGCuratedLibraryIntelligenceMetricEvent_gatherMetricsWithProgressBlock___block_invoke(uint64_t a1, void *a2)
{
  v185 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 48))
  {
    [MEMORY[0x277D22C80] progressReporterWithProgressBlock:?];
  }

  else
  {
    [MEMORY[0x277D22C80] ignoreProgress];
  }
  v4 = ;

  v5 = v4;
  if ([v5 isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v184 = 163;
      *&v184[4] = 2080;
      *&v184[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  else
  {
    v6 = [v3 graph];
    v7 = *(a1 + 32);
    v8 = os_signpost_id_generate(v7);
    v9 = v7;
    v10 = v9;
    v170 = v8 - 1;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CuratedLibraryIntelligenceMetrics", "", buf, 2u);
    }

    spid = v8;

    info = 0;
    mach_timebase_info(&info);
    v169 = mach_absolute_time();
    v11 = +[PGLogging sharedLogging];
    v12 = [v11 loggingConnection];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "CuratedLibraryIntelligenceMetricsGeneric", buf, 2u);
    }

    v171 = v10;

    v13 = *(a1 + 32);
    v14 = os_signpost_id_generate(v13);
    v15 = v13;
    v16 = v15;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CuratedLibraryIntelligenceMetricsGeneric", "", buf, 2u);
    }

    v181 = 0;
    mach_timebase_info(&v181);
    v17 = mach_absolute_time();
    [*(a1 + 40) _fillGenericStatisticsWithGraph:v6];
    v18 = mach_absolute_time();
    v19 = v181;
    v20 = v16;
    v21 = v20;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v21, OS_SIGNPOST_INTERVAL_END, v14, "CuratedLibraryIntelligenceMetricsGeneric", "", buf, 2u);
    }

    v22 = v21;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v184 = "CuratedLibraryIntelligenceMetricsGeneric";
      *&v184[8] = 2048;
      *&v184[10] = ((((v18 - v17) * v19.numer) / v19.denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    if ([v5 isCancelledWithProgress:0.1])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v184 = 173;
        *&v184[4] = 2080;
        *&v184[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      v23 = +[PGLogging sharedLogging];
      v24 = [v23 loggingConnection];

      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_INFO, "CuratedLibraryIntelligenceMetricsProcessingLevels", buf, 2u);
      }

      v25 = *(a1 + 32);
      v26 = os_signpost_id_generate(v25);
      v27 = v25;
      v28 = v27;
      if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "CuratedLibraryIntelligenceMetricsProcessingLevels", "", buf, 2u);
      }

      v180 = 0;
      mach_timebase_info(&v180);
      v29 = mach_absolute_time();
      v30 = [v5 childProgressReporterFromStart:0.11 toEnd:0.19];
      [*(a1 + 40) _fillProcessingLevelStatisticsWithGraph:v6 progressReporter:v30];
      if ([v5 isCancelledWithProgress:0.2])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v184 = 180;
          *&v184[4] = 2080;
          *&v184[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }

      else
      {
        v166 = v30;
        v31 = mach_absolute_time();
        numer = v180.numer;
        denom = v180.denom;
        v167 = v28;
        v34 = v28;
        v35 = v34;
        if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v35, OS_SIGNPOST_INTERVAL_END, v26, "CuratedLibraryIntelligenceMetricsProcessingLevels", "", buf, 2u);
        }

        v36 = v35;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *v184 = "CuratedLibraryIntelligenceMetricsProcessingLevels";
          *&v184[8] = 2048;
          *&v184[10] = ((((v31 - v29) * numer) / denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        v37 = +[PGLogging sharedLogging];
        v38 = [v37 loggingConnection];

        v28 = v167;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_INFO, "CuratedLibraryIntelligenceMetricsDayHighlights", buf, 2u);
        }

        v39 = *(a1 + 32);
        v40 = os_signpost_id_generate(v39);
        v41 = v39;
        v42 = v41;
        if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v42, OS_SIGNPOST_INTERVAL_BEGIN, v40, "CuratedLibraryIntelligenceMetricsDayHighlights", "", buf, 2u);
        }

        v179 = 0;
        mach_timebase_info(&v179);
        v43 = mach_absolute_time();
        v164 = [v5 childProgressReporterFromStart:0.21 toEnd:0.29];
        [*(a1 + 40) _fillDayHighlightsStatisticsWithGraph:v6 progressReporter:?];
        v165 = v42;
        if ([v5 isCancelledWithProgress:0.3])
        {
          v30 = v166;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v184 = 188;
            *&v184[4] = 2080;
            *&v184[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }

        else
        {
          v163 = v6;
          v44 = mach_absolute_time();
          v46 = v179.numer;
          v45 = v179.denom;
          v47 = v42;
          v48 = v47;
          if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v48, OS_SIGNPOST_INTERVAL_END, v40, "CuratedLibraryIntelligenceMetricsDayHighlights", "", buf, 2u);
          }

          v49 = v48;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *v184 = "CuratedLibraryIntelligenceMetricsDayHighlights";
            *&v184[8] = 2048;
            *&v184[10] = ((((v44 - v43) * v46) / v45) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v49, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
          }

          v50 = +[PGLogging sharedLogging];
          v51 = [v50 loggingConnection];

          v28 = v167;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22F0FC000, v51, OS_LOG_TYPE_INFO, "CuratedLibraryIntelligenceMetricsContentScore", buf, 2u);
          }

          v52 = *(a1 + 32);
          v53 = os_signpost_id_generate(v52);
          v54 = v52;
          v55 = v54;
          v6 = v163;
          if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v55, OS_SIGNPOST_INTERVAL_BEGIN, v53, "CuratedLibraryIntelligenceMetricsContentScore", "", buf, 2u);
          }

          v178 = 0;
          mach_timebase_info(&v178);
          v56 = mach_absolute_time();
          v161 = [v5 childProgressReporterFromStart:0.31 toEnd:0.39];
          [*(a1 + 40) _fillContentScoreStatisticsWithGraph:v163 progressReporter:?];
          v162 = v55;
          if ([v5 isCancelledWithProgress:0.4])
          {
            v30 = v166;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v184 = 196;
              *&v184[4] = 2080;
              *&v184[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }

          else
          {
            v159 = mach_absolute_time();
            v58 = v178.numer;
            v57 = v178.denom;
            v59 = v55;
            v60 = v59;
            if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v60, OS_SIGNPOST_INTERVAL_END, v53, "CuratedLibraryIntelligenceMetricsContentScore", "", buf, 2u);
            }

            v61 = v60;
            if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              *v184 = "CuratedLibraryIntelligenceMetricsContentScore";
              *&v184[8] = 2048;
              *&v184[10] = ((((v159 - v56) * v58) / v57) / 1000000.0);
              _os_log_impl(&dword_22F0FC000, v61, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
            }

            v62 = +[PGLogging sharedLogging];
            v63 = [v62 loggingConnection];

            if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22F0FC000, v63, OS_LOG_TYPE_INFO, "CuratedLibraryIntelligenceMetricsMonthHighlights", buf, 2u);
            }

            v64 = *(a1 + 32);
            v65 = os_signpost_id_generate(v64);
            v66 = v64;
            v67 = v66;
            if (v65 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v67, OS_SIGNPOST_INTERVAL_BEGIN, v65, "CuratedLibraryIntelligenceMetricsMonthHighlights", "", buf, 2u);
            }

            v177 = 0;
            mach_timebase_info(&v177);
            v68 = mach_absolute_time();
            v158 = [v5 childProgressReporterFromStart:0.51 toEnd:0.59];
            [*(a1 + 40) _fillMonthHighlightsStatisticsWithGraph:v163 progressReporter:?];
            v160 = v67;
            if ([v5 isCancelledWithProgress:0.6])
            {
              v30 = v166;
              v28 = v167;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v184 = 204;
                *&v184[4] = 2080;
                *&v184[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }
            }

            else
            {
              v69 = mach_absolute_time();
              v71 = v177.numer;
              v70 = v177.denom;
              v72 = v67;
              v73 = v72;
              if (v65 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_22F0FC000, v73, OS_SIGNPOST_INTERVAL_END, v65, "CuratedLibraryIntelligenceMetricsMonthHighlights", "", buf, 2u);
              }

              v74 = v73;
              if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                *v184 = "CuratedLibraryIntelligenceMetricsMonthHighlights";
                *&v184[8] = 2048;
                *&v184[10] = ((((v69 - v68) * v71) / v70) / 1000000.0);
                _os_log_impl(&dword_22F0FC000, v74, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
              }

              v75 = +[PGLogging sharedLogging];
              v76 = [v75 loggingConnection];

              v28 = v167;
              if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22F0FC000, v76, OS_LOG_TYPE_INFO, "CuratedLibraryIntelligenceMetricsYearHighlights", buf, 2u);
              }

              v77 = *(a1 + 32);
              v78 = os_signpost_id_generate(v77);
              v79 = v77;
              v80 = v79;
              if (v78 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v79))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_22F0FC000, v80, OS_SIGNPOST_INTERVAL_BEGIN, v78, "CuratedLibraryIntelligenceMetricsYearHighlights", "", buf, 2u);
              }

              v176 = 0;
              mach_timebase_info(&v176);
              v81 = mach_absolute_time();
              [*(a1 + 40) _fillYearHighlightsStatisticsWithGraph:v163];
              v157 = v80;
              if ([v5 isCancelledWithProgress:0.7])
              {
                v82 = MEMORY[0x277D86220];
                v83 = MEMORY[0x277D86220];
                v30 = v166;
                if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *v184 = 211;
                  *&v184[4] = 2080;
                  *&v184[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                  _os_log_impl(&dword_22F0FC000, v82, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }
              }

              else
              {
                v155 = mach_absolute_time();
                v85 = v176.numer;
                v84 = v176.denom;
                v86 = v80;
                v87 = v86;
                if (v78 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v86))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v87, OS_SIGNPOST_INTERVAL_END, v78, "CuratedLibraryIntelligenceMetricsYearHighlights", "", buf, 2u);
                }

                v88 = v87;
                if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  *v184 = "CuratedLibraryIntelligenceMetricsYearHighlights";
                  *&v184[8] = 2048;
                  *&v184[10] = ((((v155 - v81) * v85) / v84) / 1000000.0);
                  _os_log_impl(&dword_22F0FC000, v88, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
                }

                v89 = +[PGLogging sharedLogging];
                v90 = [v89 loggingConnection];

                if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22F0FC000, v90, OS_LOG_TYPE_INFO, "CuratedLibraryIntelligenceMetricsHiddenHighlights", buf, 2u);
                }

                v91 = *(a1 + 32);
                v92 = os_signpost_id_generate(v91);
                v93 = v91;
                v94 = v93;
                if (v92 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v93))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v94, OS_SIGNPOST_INTERVAL_BEGIN, v92, "CuratedLibraryIntelligenceMetricsHiddenHighlights", "", buf, 2u);
                }

                v175 = 0;
                mach_timebase_info(&v175);
                v95 = mach_absolute_time();
                [*(a1 + 40) _fillHiddenHighlightsStatisticsWithGraph:v163];
                v96 = mach_absolute_time();
                v97 = v175;
                v98 = v94;
                v99 = v98;
                if (v92 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v98))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v99, OS_SIGNPOST_INTERVAL_END, v92, "CuratedLibraryIntelligenceMetricsHiddenHighlights", "", buf, 2u);
                }

                v100 = v99;
                if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  *v184 = "CuratedLibraryIntelligenceMetricsHiddenHighlights";
                  *&v184[8] = 2048;
                  *&v184[10] = ((((v96 - v95) * v97.numer) / v97.denom) / 1000000.0);
                  _os_log_impl(&dword_22F0FC000, v100, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
                }

                v156 = v100;

                v101 = +[PGLogging sharedLogging];
                v102 = [v101 loggingConnection];

                if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22F0FC000, v102, OS_LOG_TYPE_INFO, "CuratedLibraryIntelligenceMetricsOnesieHighlights", buf, 2u);
                }

                v103 = *(a1 + 32);
                v104 = os_signpost_id_generate(v103);
                v105 = v103;
                v106 = v105;
                if (v104 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v105))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v106, OS_SIGNPOST_INTERVAL_BEGIN, v104, "CuratedLibraryIntelligenceMetricsOnesieHighlights", "", buf, 2u);
                }

                v174 = 0;
                mach_timebase_info(&v174);
                v107 = mach_absolute_time();
                v153 = [v5 childProgressReporterFromStart:0.71 toEnd:0.79];
                [*(a1 + 40) _fillOnesiesHighlightStatisticsWithGraph:v163 progressReporter:?];
                v154 = v106;
                if ([v5 isCancelledWithProgress:0.8])
                {
                  v108 = MEMORY[0x277D86220];
                  v109 = MEMORY[0x277D86220];
                  v10 = v171;
                  v30 = v166;
                  v28 = v167;
                  v82 = v156;
                  if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    *v184 = 225;
                    *&v184[4] = 2080;
                    *&v184[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                    _os_log_impl(&dword_22F0FC000, v108, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }
                }

                else
                {
                  v110 = mach_absolute_time();
                  v112 = v174.numer;
                  v111 = v174.denom;
                  v113 = v106;
                  v114 = v113;
                  if (v104 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v113))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v114, OS_SIGNPOST_INTERVAL_END, v104, "CuratedLibraryIntelligenceMetricsOnesieHighlights", "", buf, 2u);
                  }

                  v115 = v114;
                  if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315394;
                    *v184 = "CuratedLibraryIntelligenceMetricsOnesieHighlights";
                    *&v184[8] = 2048;
                    *&v184[10] = ((((v110 - v107) * v112) / v111) / 1000000.0);
                    _os_log_impl(&dword_22F0FC000, v115, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
                  }

                  v116 = +[PGLogging sharedLogging];
                  v117 = [v116 loggingConnection];

                  v28 = v167;
                  if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_22F0FC000, v117, OS_LOG_TYPE_INFO, "CuratedLibraryIntelligenceMetricsMoments", buf, 2u);
                  }

                  v118 = *(a1 + 32);
                  v119 = os_signpost_id_generate(v118);
                  v120 = v118;
                  v121 = v120;
                  if (v119 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v120))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v121, OS_SIGNPOST_INTERVAL_BEGIN, v119, "CuratedLibraryIntelligenceMetricsMoments", "", buf, 2u);
                  }

                  v173 = 0;
                  mach_timebase_info(&v173);
                  v122 = mach_absolute_time();
                  [*(a1 + 40) _fillMomentsStatisticsWithGraph:v163];
                  v152 = v121;
                  if ([v5 isCancelledWithProgress:0.9])
                  {
                    v123 = MEMORY[0x277D86220];
                    v124 = MEMORY[0x277D86220];
                    v10 = v171;
                    v30 = v166;
                    v82 = v156;
                    if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
                    {
                      *buf = 67109378;
                      *v184 = 232;
                      *&v184[4] = 2080;
                      *&v184[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                      _os_log_impl(&dword_22F0FC000, v123, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                    }
                  }

                  else
                  {
                    v150 = mach_absolute_time();
                    v126 = v173.numer;
                    v125 = v173.denom;
                    v127 = v121;
                    v128 = v127;
                    if (v119 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v127))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v128, OS_SIGNPOST_INTERVAL_END, v119, "CuratedLibraryIntelligenceMetricsMoments", "", buf, 2u);
                    }

                    v129 = v128;
                    if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136315394;
                      *v184 = "CuratedLibraryIntelligenceMetricsMoments";
                      *&v184[8] = 2048;
                      *&v184[10] = ((((v150 - v122) * v126) / v125) / 1000000.0);
                      _os_log_impl(&dword_22F0FC000, v129, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
                    }

                    v130 = +[PGLogging sharedLogging];
                    v131 = [v130 loggingConnection];

                    v28 = v167;
                    if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_22F0FC000, v131, OS_LOG_TYPE_INFO, "CuratedLibraryIntelligenceMetricsKeyAssets", buf, 2u);
                    }

                    v132 = *(a1 + 32);
                    v133 = os_signpost_id_generate(v132);
                    v134 = v132;
                    v135 = v134;
                    if (v133 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v134))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v135, OS_SIGNPOST_INTERVAL_BEGIN, v133, "CuratedLibraryIntelligenceMetricsKeyAssets", "", buf, 2u);
                    }

                    v172 = 0;
                    mach_timebase_info(&v172);
                    v149 = mach_absolute_time();
                    v151 = [v5 childProgressReporterFromStart:0.91 toEnd:0.99];
                    [*(a1 + 40) _fillKeyAssetsStatisticsWithGraph:v163 progressReporter:?];
                    v136 = mach_absolute_time();
                    v137 = v172;
                    v138 = v135;
                    v139 = v138;
                    if (v133 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v138))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v139, OS_SIGNPOST_INTERVAL_END, v133, "CuratedLibraryIntelligenceMetricsKeyAssets", "", buf, 2u);
                    }

                    v123 = v139;
                    if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136315394;
                      *v184 = "CuratedLibraryIntelligenceMetricsKeyAssets";
                      *&v184[8] = 2048;
                      *&v184[10] = ((((v136 - v149) * v137.numer) / v137.denom) / 1000000.0);
                      _os_log_impl(&dword_22F0FC000, v123, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
                    }

                    v140 = mach_absolute_time();
                    v142 = info.numer;
                    v141 = info.denom;
                    v10 = v171;
                    v143 = v171;
                    v144 = v143;
                    if (v170 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v143))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v144, OS_SIGNPOST_INTERVAL_END, spid, "CuratedLibraryIntelligenceMetrics", "", buf, 2u);
                    }

                    v145 = v144;
                    if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136315394;
                      *v184 = "CuratedLibraryIntelligenceMetrics";
                      *&v184[8] = 2048;
                      *&v184[10] = ((((v140 - v169) * v142) / v141) / 1000000.0);
                      _os_log_impl(&dword_22F0FC000, v145, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
                    }

                    v82 = v156;
                    if ([v5 isCancelledWithProgress:1.0])
                    {
                      v146 = MEMORY[0x277D86220];
                      v147 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
                      {
                        *buf = 67109378;
                        *v184 = 243;
                        *&v184[4] = 2080;
                        *&v184[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                      }
                    }

                    v30 = v166;
                  }

                  v108 = v152;
                }
              }
            }
          }
        }
      }
    }
  }

  v148 = *MEMORY[0x277D85DE8];
}

- (PGCuratedLibraryIntelligenceMetricEvent)initWithGraphManager:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PGCuratedLibraryIntelligenceMetricEvent;
  v6 = [(PGCuratedLibraryIntelligenceMetricEvent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, a3);
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1559088000.0];
    debugDate = v7->_debugDate;
    v7->_debugDate = v8;
  }

  return v7;
}

+ (id)librarySizeRangeDescriptionForLibrarySizeRange:(int64_t)a3
{
  if (a3 > 5)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = *off_278880050[a3];
  }

  return v4;
}

@end