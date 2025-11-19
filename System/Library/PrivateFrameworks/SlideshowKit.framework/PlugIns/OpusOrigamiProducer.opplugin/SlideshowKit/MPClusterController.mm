@interface MPClusterController
+ (id)sharedController;
+ (void)releaseSharedController;
- (MPClusterController)init;
- (id)allSlidesSortedByPaths:(id)a3;
- (id)clusterSlidesSortedByUserDefinedSortOrder:(id)a3 userDefinedSlideOrder:(id)a4;
- (id)clustersBasedOnOrderedPaths:(id)a3;
- (id)dayOfYearClusterForAssetAtPath:(id)a3;
- (id)dayOfYearClusters;
- (id)findBestChronologicalCluster:(id)a3 startingWithSlide:(id)a4;
- (id)findBestCluster:(id)a3;
- (id)findBestCluster:(id)a3 withMaxEffectSize:(int64_t)a4 idealEffectSize:(int64_t)a5;
- (id)findBestClusterBasedOnUserDefinedSlideOrder:(id)a3 startingWithSlide:(id)a4;
- (id)hourOfYearClusterForAssetAtPath:(id)a3;
- (id)hourOfYearClusters;
- (id)keywordClusters;
- (id)locationClusters;
- (id)minuteOfYearClusterForAssetAtPath:(id)a3;
- (id)minuteOfYearClusters;
- (id)monthClusterForAssetAtPath:(id)a3;
- (id)monthClusters;
- (id)monthOfYearClusterForAssetAtPath:(id)a3;
- (id)monthOfYearClusters;
- (id)nextLeastUsedSlides:(int64_t)a3 forLayer:(id)a4 markAsUsed:(BOOL)a5;
- (id)orderedAndPrioritizedSlideClusters;
- (id)prioritizedSlideClustersDictionary;
- (id)roundedFifteenMinuteOfYearClusterForAssetAtPath:(id)a3;
- (id)roundedFifteenMinuteOfYearClusters;
- (id)roundedFiveMinuteOfYearClusterForAssetAtPath:(id)a3;
- (id)roundedFiveMinuteOfYearClusters;
- (id)userProvidedClusters;
- (id)yearClusterForAssetAtPath:(id)a3;
- (id)yearClusters;
- (int64_t)addSlideForPath:(id)a3 withIndex:(int64_t)a4;
- (void)_removeAllSingleSlideClustersForClusterCategory:(id)a3;
- (void)addKeywords:(id)a3 forSlide:(id)a4;
- (void)addPaths:(id)a3 toUserDefinedCluster:(id)a4;
- (void)createLocationClustersForPaths:(id)a3;
- (void)dealloc;
- (void)dumpClustersStatistics;
- (void)dumpSlidesStatistics;
- (void)flush;
- (void)flushClusters;
- (void)removeAllSingleSlideClusters;
- (void)resetAllUsageCounters;
- (void)sortClusterSlidesChronologically:(id *)a3;
- (void)updateClusterRatings;
- (void)updateDayOfYearClustersWithDate:(id)a3 ofSlide:(id)a4;
- (void)updateHourOfYearClustersWithDate:(id)a3 ofSlide:(id)a4;
- (void)updateMinuteOfYearClustersWithDate:(id)a3 ofSlide:(id)a4;
- (void)updateMonthClustersWithDate:(id)a3 ofSlide:(id)a4;
- (void)updateMonthOfYearClustersWithDate:(id)a3 ofSlide:(id)a4;
- (void)updateRatingsForDayOfYearClusters;
- (void)updateRatingsForHourOfYearClusters;
- (void)updateRatingsForKeywordClusters;
- (void)updateRatingsForLocationClusters;
- (void)updateRatingsForMinuteOfYearClusters;
- (void)updateRatingsForMonthClusters;
- (void)updateRatingsForMonthOfYearClusters;
- (void)updateRatingsForRoundedFifteenMinuteOfYearClusters;
- (void)updateRatingsForRoundedFiveMinuteOfYearClusters;
- (void)updateRatingsForYearClusters;
- (void)updateRoundedFifteenMinuteOfYearClustersWithDate:(id)a3 ofSlide:(id)a4;
- (void)updateRoundedFiveMinuteOfYearClustersWithDate:(id)a3 ofSlide:(id)a4;
- (void)updateYearClustersWithDate:(id)a3 ofSlide:(id)a4;
@end

@implementation MPClusterController

+ (id)sharedController
{
  result = qword_1EF290;
  if (!qword_1EF290)
  {
    objc_sync_enter(a1);
    if (!qword_1EF290)
    {
      qword_1EF290 = objc_alloc_init(MPClusterController);
    }

    objc_sync_exit(a1);
    return qword_1EF290;
  }

  return result;
}

+ (void)releaseSharedController
{
  if (qword_1EF290)
  {
    objc_sync_enter(a1);

    qword_1EF290 = 0;

    objc_sync_exit(a1);
  }
}

- (MPClusterController)init
{
  v5.receiver = self;
  v5.super_class = MPClusterController;
  v2 = [(MPClusterController *)&v5 init];
  if (v2)
  {
    v2->mSlides = +[NSMutableDictionary dictionary];
    v2->mSlideClusters = +[NSMutableDictionary dictionary];
    v3 = objc_alloc_init(MPCluster);
    v2->mAllSlidesCluster = v3;
    [(MPCluster *)v3 setName:@"allSlides"];
    [(MPCluster *)v2->mAllSlidesCluster setRating:0.0];
    v2->mMinimumRequiredClusterRating = 0.0;
    v2->mOldestSlideTimestamp = [+[NSDate distantFuture](NSDate copy];
    v2->mNewestSlideTimestamp = [+[NSDate distantPast](NSDate copy];
  }

  return v2;
}

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMutableDictionary *)self->mSlides objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) setUsableSlideClusters:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  self->mSlideClusters = 0;
  self->mSlides = 0;

  self->mAllSlidesCluster = 0;
  self->mOldestSlideTimestamp = 0;

  self->mNewestSlideTimestamp = 0;
  v8.receiver = self;
  v8.super_class = MPClusterController;
  [(MPClusterController *)&v8 dealloc];
}

- (void)flush
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMutableDictionary *)self->mSlides objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) setUsableSlideClusters:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->mSlides removeAllObjects];
  [(NSMutableDictionary *)self->mSlideClusters removeAllObjects];

  v8 = objc_alloc_init(MPCluster);
  self->mAllSlidesCluster = v8;
  [(MPCluster *)v8 setName:@"allSlides"];
  [(MPCluster *)self->mAllSlidesCluster setRating:0.0];
}

- (int64_t)addSlideForPath:(id)a3 withIndex:(int64_t)a4
{
  v7 = [(MPDocument *)self->mAuthoredDocument keywordsForPath:?];
  v8 = [(MPDocument *)self->mAuthoredDocument creationDateForPath:a3];
  v9 = +[NSMutableDictionary dictionary];
  if (!v8)
  {
    NSLog(@"Asset: %@ has no creation date metadata, using epoch as a workaround.", a3);
    v8 = [NSDate dateWithTimeIntervalSince1970:0.0];
  }

  [(NSDate *)v8 timeIntervalSince1970];
  [v9 setObject:a3 forKey:{-[NSNumber stringValue](+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:"), "stringValue")}];
  p_mOldestSlideTimestamp = &self->mOldestSlideTimestamp;
  if ([(NSDate *)v8 compare:self->mOldestSlideTimestamp]== NSOrderedAscending || (p_mOldestSlideTimestamp = &self->mNewestSlideTimestamp, [(NSDate *)v8 compare:self->mNewestSlideTimestamp]== &dword_0 + 1))
  {

    *p_mOldestSlideTimestamp = [(NSDate *)v8 copy];
  }

  v11 = [(NSMutableDictionary *)self->mSlides objectForKey:a3];
  if (v11)
  {
    v12 = v11;
    [(MPClusterSlide *)v11 setReferenceCounter:[(MPClusterSlide *)v11 referenceCounter]+ 1];
    v13 = [(MPClusterSlide *)v12 referenceCounter];
  }

  else
  {
    v12 = objc_alloc_init(MPClusterSlide);
    [(MPClusterSlide *)v12 setPath:a3];
    [(MPClusterSlide *)v12 setIndex:a4];
    v13 = 1;
    [(MPClusterSlide *)v12 setReferenceCounter:1];
    [(MPClusterSlide *)v12 setCaptureDate:v8];
    [(MPClusterController *)self addKeywords:v7 forSlide:v12];
    [(NSMutableDictionary *)self->mSlides setValue:v12 forKey:a3];
  }

  v14 = [(MPClusterSlide *)v12 captureDate];
  [(MPClusterController *)self updateYearClustersWithDate:v14 ofSlide:v12];
  [(MPClusterController *)self updateMonthClustersWithDate:v14 ofSlide:v12];
  [(MPClusterController *)self updateMonthOfYearClustersWithDate:v14 ofSlide:v12];
  [(MPClusterController *)self updateDayOfYearClustersWithDate:v14 ofSlide:v12];
  [(MPClusterController *)self updateHourOfYearClustersWithDate:v14 ofSlide:v12];
  [(MPClusterController *)self updateMinuteOfYearClustersWithDate:v14 ofSlide:v12];
  [(MPClusterController *)self updateRoundedFiveMinuteOfYearClustersWithDate:v14 ofSlide:v12];
  [(MPClusterController *)self updateRoundedFifteenMinuteOfYearClustersWithDate:v14 ofSlide:v12];
  [(MPClusterController *)self updateAllSlidesClusterWithSlide:v12];
  return v13;
}

- (void)addKeywords:(id)a3 forSlide:(id)a4
{
  v7 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"keywordClusters"];
  if (!v7)
  {
    v7 = +[NSMutableDictionary dictionary];
    [(NSMutableDictionary *)self->mSlideClusters setObject:v7 forKey:@"keywordClusters"];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [v7 objectForKey:v12];
        if (!v13)
        {
          v13 = objc_alloc_init(MPCluster);
          [(MPCluster *)v13 setName:[NSString stringWithFormat:@"keyword: %@", v12]];
          [v7 setObject:v13 forKey:v12];
        }

        [(MPCluster *)v13 addSlide:a4];
      }

      v9 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (id)allSlidesSortedByPaths:(id)a3
{
  v5 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = [(NSMutableDictionary *)self->mSlides objectForKey:*(*(&v12 + 1) + 8 * v9)];
        if (v10)
        {
          [v5 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)nextLeastUsedSlides:(int64_t)a3 forLayer:(id)a4 markAsUsed:(BOOL)a5
{
  v5 = a5;
  v8 = [(MPClusterController *)self allSlidesSortedByUsage];
  v9 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v19;
    v14 = a3 - 1;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v16 = *(*(&v18 + 1) + 8 * v15);
      [v9 addObject:{objc_msgSend(v16, "path")}];
      if (v5)
      {
        [v16 setUsageCounterForLayer:a4 to:{objc_msgSend(v16, "overallUsageCounter") + 1}];
      }

      if (v14 == v12)
      {
        break;
      }

      v15 = v15 + 1;
      ++v12;
      if (v11 == v15)
      {
        v11 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        return v9;
      }
    }
  }

  return v9;
}

- (id)clusterSlidesSortedByUserDefinedSortOrder:(id)a3 userDefinedSlideOrder:(id)a4
{
  v5 = [a3 allSlides];

  return [v5 sortedArrayUsingFunction:sortSlidesByUserDefinedOrder1 context:a4];
}

- (void)sortClusterSlidesChronologically:(id *)a3
{
  v4 = [*a3 allSlides];
  v14 = 1;
  v5 = [v4 sortedArrayUsingFunction:sortSlidesByCaptureDate1 context:&v14];
  [*a3 removeAllSlides];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*a3 addSlide:*(*(&v10 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)clustersBasedOnOrderedPaths:(id)a3
{
  v5 = +[NSMutableArray array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v37 + 1) + 8 * v9);
        v11 = +[NSMutableArray array];
        v12 = [(MPClusterController *)self yearClusterForAssetAtPath:v10];
        if (v12)
        {
          v13 = v12;
          [v12 rating];
          if (v14 >= self->mMinimumRequiredClusterRating && [v13 slideCount] >= 2)
          {
            [v11 addObject:v13];
          }
        }

        v15 = [(MPClusterController *)self monthClusterForAssetAtPath:v10];
        if (v15)
        {
          v16 = v15;
          [v15 rating];
          if (v17 >= self->mMinimumRequiredClusterRating && [v16 slideCount] >= 2)
          {
            [v11 addObject:v16];
          }
        }

        v18 = [(MPClusterController *)self monthOfYearClusterForAssetAtPath:v10];
        if (v18)
        {
          v19 = v18;
          [v18 rating];
          if (v20 >= self->mMinimumRequiredClusterRating && [v19 slideCount] >= 2)
          {
            [v11 addObject:v19];
          }
        }

        v21 = [(MPClusterController *)self dayOfYearClusterForAssetAtPath:v10];
        if (v21)
        {
          v22 = v21;
          [v21 rating];
          if (v23 >= self->mMinimumRequiredClusterRating && [v22 slideCount] >= 2)
          {
            [v11 addObject:v22];
          }
        }

        v24 = [(MPClusterController *)self hourOfYearClusterForAssetAtPath:v10];
        if (v24)
        {
          v25 = v24;
          [v24 rating];
          if (v26 >= self->mMinimumRequiredClusterRating && [v25 slideCount] >= 2)
          {
            [v11 addObject:v25];
          }
        }

        v27 = [(MPClusterController *)self minuteOfYearClusterForAssetAtPath:v10];
        if (v27)
        {
          v28 = v27;
          [v27 rating];
          if (v29 >= self->mMinimumRequiredClusterRating && [v28 slideCount] >= 2)
          {
            [v11 addObject:v28];
          }
        }

        v30 = [(MPClusterController *)self roundedFiveMinuteOfYearClusterForAssetAtPath:v10];
        if (v30)
        {
          v31 = v30;
          [v30 rating];
          if (v32 >= self->mMinimumRequiredClusterRating && [v31 slideCount] >= 2)
          {
            [v11 addObject:v31];
          }
        }

        v33 = [(MPClusterController *)self roundedFifteenMinuteOfYearClusterForAssetAtPath:v10];
        if (v33)
        {
          v34 = v33;
          [v33 rating];
          if (v35 >= self->mMinimumRequiredClusterRating && [v34 slideCount] >= 2)
          {
            [v11 addObject:v34];
          }
        }

        [v5 addObject:v11];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v7);
  }

  return v5;
}

- (void)resetAllUsageCounters
{
  v2 = [(MPClusterController *)self allSlides];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) resetAllUsageCounters];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)flushClusters
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMutableDictionary *)self->mSlides objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) setUsableSlideClusters:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->mSlides removeAllObjects];
  [(NSMutableDictionary *)self->mSlideClusters removeAllObjects];

  v8 = objc_alloc_init(MPCluster);
  self->mAllSlidesCluster = v8;
  [(MPCluster *)v8 setName:@"allSlides"];
  [(MPCluster *)self->mAllSlidesCluster setRating:0.0];
}

- (id)findBestCluster:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = *v13;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(a3);
      }

      v10 = *(*(&v12 + 1) + 8 * i);
      if ([v10 slideCount] > v6)
      {
        v6 = [v10 slideCount];
        v7 = v10;
      }
    }

    v5 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v5);
  return v7;
}

- (id)findBestCluster:(id)a3 withMaxEffectSize:(int64_t)a4 idealEffectSize:(int64_t)a5
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  v12 = *v23;
  while (2)
  {
    for (i = 0; i != v9; i = i + 1)
    {
      v14 = v11;
      if (*v23 != v12)
      {
        objc_enumerationMutation(a3);
      }

      v15 = *(*(&v22 + 1) + 8 * i);
      v16 = [v15 slideCount];
      v11 = v16 - a5;
      if (v16 == a5)
      {
        return v15;
      }

      if (v16 <= a4)
      {
        if (v11 < 1 || (v17 = v15, v14) && v11 >= v14)
        {
          v18 = v14 < 1;
          v19 = v11 > a5;
          v20 = !v18 || !v19;
          if (v18 && v19)
          {
            v17 = v15;
          }

          else
          {
            v17 = v10;
          }

          if (v20)
          {
            v11 = v14;
          }

          else
          {
            v11 = v16;
          }
        }
      }

      else
      {
        v17 = v10;
        v11 = v14;
      }

      if (v17)
      {
        v10 = v17;
      }

      else
      {
        v10 = v15;
      }
    }

    v9 = [a3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

  return v10;
}

- (id)findBestChronologicalCluster:(id)a3 startingWithSlide:(id)a4
{
  v7 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if ([v12 clusterContainsSlideAtPath:{objc_msgSend(a4, "path")}])
        {
          v13 = [v12 allSlidesSortedChronologically];
          if ([v13 count])
          {
            if ([v13 objectAtIndex:0] == a4)
            {
              [v7 addObject:v12];
            }
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return [(MPClusterController *)self findBestCluster:v7];
}

- (id)findBestClusterBasedOnUserDefinedSlideOrder:(id)a3 startingWithSlide:(id)a4
{
  v7 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if ([v12 clusterContainsSlideAtPath:{objc_msgSend(a4, "path")}])
        {
          v13 = [objc_msgSend(v12 "allSlides")];
          if ([v13 count])
          {
            if ([v13 objectAtIndex:0] == a4)
            {
              [v7 addObject:v12];
            }
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return [(MPClusterController *)self findBestCluster:v7];
}

- (void)removeAllSingleSlideClusters
{
  [(MPClusterController *)self _removeAllSingleSlideClustersForClusterCategory:@"yearClusters"];
  [(MPClusterController *)self _removeAllSingleSlideClustersForClusterCategory:@"monthClusters"];
  [(MPClusterController *)self _removeAllSingleSlideClustersForClusterCategory:@"monthOfYearClusters"];
  [(MPClusterController *)self _removeAllSingleSlideClustersForClusterCategory:@"dayOfYearClusters"];
  [(MPClusterController *)self _removeAllSingleSlideClustersForClusterCategory:@"hourOfYearClusters"];
  [(MPClusterController *)self _removeAllSingleSlideClustersForClusterCategory:@"minuteOfYearClusters"];
  [(MPClusterController *)self _removeAllSingleSlideClustersForClusterCategory:@"roundedFiveMinuteOfYearClusters"];
  [(MPClusterController *)self _removeAllSingleSlideClustersForClusterCategory:@"roundedFifteenMinuteOfYearClusters"];
  [(MPClusterController *)self _removeAllSingleSlideClustersForClusterCategory:@"keywordYearClusters"];

  [(MPClusterController *)self _removeAllSingleSlideClustersForClusterCategory:@"locationClusters"];
}

- (void)updateYearClustersWithDate:(id)a3 ofSlide:(id)a4
{
  v6 = [a3 descriptionWithFormat:@"'Y:'yyyy"];
  v7 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"yearClusters"];
  if (!v7)
  {
    v7 = +[NSMutableDictionary dictionary];
    [(NSMutableDictionary *)self->mSlideClusters setObject:v7 forKey:@"yearClusters"];
  }

  v8 = [v7 objectForKey:v6];
  if (!v8)
  {
    v8 = objc_alloc_init(MPCluster);
    [(MPCluster *)v8 setName:v6];
    [v7 setObject:v8 forKey:v6];
  }

  [(MPCluster *)v8 addSlide:a4];
}

- (void)updateMonthClustersWithDate:(id)a3 ofSlide:(id)a4
{
  v6 = [a3 descriptionWithFormat:@"'M:'MM"];
  v7 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"monthClusters"];
  if (!v7)
  {
    v7 = +[NSMutableDictionary dictionary];
    [(NSMutableDictionary *)self->mSlideClusters setObject:v7 forKey:@"monthClusters"];
  }

  v8 = [v7 objectForKey:v6];
  if (!v8)
  {
    v8 = objc_alloc_init(MPCluster);
    [(MPCluster *)v8 setName:v6];
    [v7 setObject:v8 forKey:v6];
  }

  [(MPCluster *)v8 addSlide:a4];
}

- (void)updateMonthOfYearClustersWithDate:(id)a3 ofSlide:(id)a4
{
  v6 = [a3 descriptionWithFormat:@"'Y-M:'yyyy-MM"];
  v7 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"monthOfYearClusters"];
  if (!v7)
  {
    v7 = +[NSMutableDictionary dictionary];
    [(NSMutableDictionary *)self->mSlideClusters setObject:v7 forKey:@"monthOfYearClusters"];
  }

  v8 = [v7 objectForKey:v6];
  if (!v8)
  {
    v8 = objc_alloc_init(MPCluster);
    [(MPCluster *)v8 setName:v6];
    [v7 setObject:v8 forKey:v6];
  }

  [(MPCluster *)v8 addSlide:a4];
}

- (void)updateDayOfYearClustersWithDate:(id)a3 ofSlide:(id)a4
{
  v6 = [a3 descriptionWithFormat:@"'Y-M-D:'yyyy-MM-dd"];
  v7 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"dayOfYearClusters"];
  if (!v7)
  {
    v7 = +[NSMutableDictionary dictionary];
    [(NSMutableDictionary *)self->mSlideClusters setObject:v7 forKey:@"dayOfYearClusters"];
  }

  v8 = [v7 objectForKey:v6];
  if (!v8)
  {
    v8 = objc_alloc_init(MPCluster);
    [(MPCluster *)v8 setName:v6];
    [v7 setValue:v8 forKey:v6];
  }

  [(MPCluster *)v8 addSlide:a4];
}

- (void)updateHourOfYearClustersWithDate:(id)a3 ofSlide:(id)a4
{
  v6 = [a3 descriptionWithFormat:@"'Y-M-D-H:'yyyy-MM-dd-HH"];
  v7 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"hourOfYearClusters"];
  if (!v7)
  {
    v7 = +[NSMutableDictionary dictionary];
    [(NSMutableDictionary *)self->mSlideClusters setObject:v7 forKey:@"hourOfYearClusters"];
  }

  v8 = [v7 objectForKey:v6];
  if (!v8)
  {
    v8 = objc_alloc_init(MPCluster);
    [(MPCluster *)v8 setName:v6];
    [v7 setObject:v8 forKey:v6];
  }

  [(MPCluster *)v8 addSlide:a4];
}

- (void)updateMinuteOfYearClustersWithDate:(id)a3 ofSlide:(id)a4
{
  v6 = [a3 descriptionWithFormat:@"'Y-M-D-H-M:'yyyy-MM-dd-HH-mm"];
  v7 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"minuteOfYearClusters"];
  if (!v7)
  {
    v7 = +[NSMutableDictionary dictionary];
    [(NSMutableDictionary *)self->mSlideClusters setObject:v7 forKey:@"minuteOfYearClusters"];
  }

  v8 = [v7 objectForKey:v6];
  if (!v8)
  {
    v8 = objc_alloc_init(MPCluster);
    [(MPCluster *)v8 setName:v6];
    [v7 setObject:v8 forKey:v6];
  }

  [(MPCluster *)v8 addSlide:a4];
}

- (void)updateRoundedFiveMinuteOfYearClustersWithDate:(id)a3 ofSlide:(id)a4
{
  v6 = [objc_msgSend(a3 "roundMinuteToNearstFive")];
  v7 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"roundedFiveMinuteOfYearClusters"];
  if (!v7)
  {
    v7 = +[NSMutableDictionary dictionary];
    [(NSMutableDictionary *)self->mSlideClusters setObject:v7 forKey:@"roundedFiveMinuteOfYearClusters"];
  }

  v8 = [v7 objectForKey:v6];
  if (!v8)
  {
    v8 = objc_alloc_init(MPCluster);
    [(MPCluster *)v8 setName:v6];
    [v7 setObject:v8 forKey:v6];
  }

  [(MPCluster *)v8 addSlide:a4];
}

- (void)updateRoundedFifteenMinuteOfYearClustersWithDate:(id)a3 ofSlide:(id)a4
{
  v6 = [objc_msgSend(a3 "roundMinuteToNearstFifteen")];
  v7 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"roundedFifteenMinuteOfYearClusters"];
  if (!v7)
  {
    v7 = +[NSMutableDictionary dictionary];
    [(NSMutableDictionary *)self->mSlideClusters setObject:v7 forKey:@"roundedFifteenMinuteOfYearClusters"];
  }

  v8 = [v7 objectForKey:v6];
  if (!v8)
  {
    v8 = objc_alloc_init(MPCluster);
    [(MPCluster *)v8 setName:v6];
    [v7 setObject:v8 forKey:v6];
  }

  [(MPCluster *)v8 addSlide:a4];
}

- (id)yearClusters
{
  v2 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"yearClusters"];

  return [v2 allValues];
}

- (id)monthClusters
{
  v2 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"monthClusters"];

  return [v2 allValues];
}

- (id)monthOfYearClusters
{
  v2 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"monthOfYearClusters"];

  return [v2 allValues];
}

- (id)dayOfYearClusters
{
  v2 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"dayOfYearClusters"];

  return [v2 allValues];
}

- (id)hourOfYearClusters
{
  v2 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"hourOfYearClusters"];

  return [v2 allValues];
}

- (id)minuteOfYearClusters
{
  v2 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"minuteOfYearClusters"];

  return [v2 allValues];
}

- (id)roundedFiveMinuteOfYearClusters
{
  v2 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"roundedFiveMinuteOfYearClusters"];

  return [v2 allValues];
}

- (id)roundedFifteenMinuteOfYearClusters
{
  v2 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"roundedFifteenMinuteOfYearClusters"];

  return [v2 allValues];
}

- (id)keywordClusters
{
  v2 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"keywordClusters"];

  return [v2 allValues];
}

- (id)locationClusters
{
  v2 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"locationClusters"];

  return [v2 allValues];
}

- (id)userProvidedClusters
{
  v2 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"userDefinedClusters"];

  return [v2 allValues];
}

- (id)yearClusterForAssetAtPath:(id)a3
{
  v5 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"yearClusters"];
  v6 = [-[MPDocument creationDateForPath:](self->mAuthoredDocument creationDateForPath:{a3), "descriptionWithFormat:", @"'Y:'yyyy"}];

  return [v5 objectForKey:v6];
}

- (id)monthClusterForAssetAtPath:(id)a3
{
  v5 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"monthClusters"];
  v6 = [-[MPDocument creationDateForPath:](self->mAuthoredDocument creationDateForPath:{a3), "descriptionWithFormat:", @"'M:'MM"}];

  return [v5 objectForKey:v6];
}

- (id)monthOfYearClusterForAssetAtPath:(id)a3
{
  v5 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"monthOfYearClusters"];
  v6 = [-[MPDocument creationDateForPath:](self->mAuthoredDocument creationDateForPath:{a3), "descriptionWithFormat:", @"'Y-M:'yyyy-MM"}];

  return [v5 objectForKey:v6];
}

- (id)dayOfYearClusterForAssetAtPath:(id)a3
{
  v5 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"dayOfYearClusters"];
  v6 = [-[MPDocument creationDateForPath:](self->mAuthoredDocument creationDateForPath:{a3), "descriptionWithFormat:", @"'Y-M-D:'yyyy-MM-dd"}];

  return [v5 objectForKey:v6];
}

- (id)hourOfYearClusterForAssetAtPath:(id)a3
{
  v5 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"hourOfYearClusters"];
  v6 = [-[MPDocument creationDateForPath:](self->mAuthoredDocument creationDateForPath:{a3), "descriptionWithFormat:", @"'Y-M-D-H:'yyyy-MM-dd-HH"}];

  return [v5 objectForKey:v6];
}

- (id)minuteOfYearClusterForAssetAtPath:(id)a3
{
  v5 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"minuteOfYearClusters"];
  v6 = [-[MPDocument creationDateForPath:](self->mAuthoredDocument creationDateForPath:{a3), "descriptionWithFormat:", @"'Y-M-D-H-M:'yyyy-MM-dd-HH-mm"}];

  return [v5 objectForKey:v6];
}

- (id)roundedFiveMinuteOfYearClusterForAssetAtPath:(id)a3
{
  v5 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"roundedFiveMinuteOfYearClusters"];
  v6 = [objc_msgSend(-[MPDocument creationDateForPath:](self->mAuthoredDocument creationDateForPath:{a3), "roundMinuteToNearstFive"), "descriptionWithFormat:", @"'Y-M-D-H-r5M:'yyyy-MM-dd-HH-mm"}];

  return [v5 objectForKey:v6];
}

- (id)roundedFifteenMinuteOfYearClusterForAssetAtPath:(id)a3
{
  v5 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"roundedFifteenMinuteOfYearClusters"];
  v6 = [objc_msgSend(-[MPDocument creationDateForPath:](self->mAuthoredDocument creationDateForPath:{a3), "roundMinuteToNearstFifteen"), "descriptionWithFormat:", @"'Y-M-D-H-r15M:'yyyy-MM-dd-HH-mm"}];

  return [v5 objectForKey:v6];
}

- (void)addPaths:(id)a3 toUserDefinedCluster:(id)a4
{
  v7 = [a3 count];
  if (a4 && v7)
  {
    v8 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"userDefinedClusters"];
    if (!v8)
    {
      v8 = +[NSMutableDictionary dictionary];
      [(NSMutableDictionary *)self->mSlideClusters setObject:v8 forKey:@"userDefinedClusters"];
    }

    v9 = [v8 objectForKey:a4];
    if (!v9)
    {
      v9 = objc_alloc_init(MPCluster);
      [v8 setObject:v9 forKey:a4];
      [(MPCluster *)v9 setRating:10.0];
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(a3);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          v15 = [(NSMutableDictionary *)self->mSlides objectForKey:v14];
          if (!v15)
          {
            v15 = objc_alloc_init(MPClusterSlide);
            [(MPClusterSlide *)v15 setPath:v14];
          }

          [(MPCluster *)v9 addSlide:v15];
        }

        v11 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }
}

- (void)createLocationClustersForPaths:(id)a3
{
  v21 = +[NSMutableDictionary dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(a3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [(MPDocument *)self->mAuthoredDocument latitudeForPath:v8];
        v10 = [(MPDocument *)self->mAuthoredDocument longitudeForPath:v8];
        if (v9)
        {
          v11 = v10 == 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = &stru_1AC858;
        if (!v11)
        {
          v12 = [&stru_1AC858 stringByAppendingPathComponent:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@:%@", v9, v10)}];
        }

        v13 = [(MPDocument *)self->mAuthoredDocument placeForPath:v8];
        if (v13)
        {
          v12 = [(__CFString *)v12 stringByAppendingPathComponent:v13];
        }

        v14 = [(MPDocument *)self->mAuthoredDocument cityForPath:v8];
        if (v14)
        {
          v12 = [(__CFString *)v12 stringByAppendingPathComponent:v14];
        }

        v15 = [(MPDocument *)self->mAuthoredDocument stateForPath:v8];
        if (v15)
        {
          v12 = [(__CFString *)v12 stringByAppendingPathComponent:v15];
        }

        v16 = [(MPDocument *)self->mAuthoredDocument countryForPath:v8];
        if (v16)
        {
          v12 = [(__CFString *)v12 stringByAppendingPathComponent:v16];
        }

        if ([(__CFString *)v12 length])
        {
          v17 = v21;
          if ([(__CFString *)v12 length])
          {
            v17 = v21;
            do
            {
              v18 = [(__CFString *)v12 lastPathComponent];
              v17 = [v17 objectForKey:v18];
              if (!v17)
              {
                [0 setObject:+[NSMutableDictionary dictionary](NSMutableDictionary forKey:{"dictionary"), v18}];
                v17 = [0 objectForKey:v18];
              }

              v12 = [(__CFString *)v12 stringByDeletingLastPathComponent];
            }

            while ([(__CFString *)v12 length]);
          }

          v19 = [v17 objectForKey:@"photos"];
          if (!v19)
          {
            v19 = +[NSMutableArray array];
            [v17 setObject:v19 forKey:@"photos"];
          }

          [v19 addObject:v8];
        }
      }

      v5 = [a3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }
}

- (id)orderedAndPrioritizedSlideClusters
{
  v3 = [(MPClusterController *)self prioritizedSlideClustersDictionary];
  v4 = [v3 allKeys];
  v5 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        [v10 floatValue];
        if (self->mMinimumRequiredClusterRating <= v11)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = [[NSMutableArray alloc] initWithArray:{objc_msgSend(v5, "sortedArrayUsingSelector:", "compare:")}];
  v13 = +[NSMutableArray array];
  v14 = [v12 count] - 1;
  if (v14 >= 0)
  {
    do
    {
      [v13 addObjectsFromArray:{objc_msgSend(v3, "objectForKey:", objc_msgSend(v12, "objectAtIndex:", v14--))}];
    }

    while (v14 != -1);
  }

  if (![v13 count])
  {
    [v13 addObject:self->mAllSlidesCluster];
  }

  return v13;
}

- (id)prioritizedSlideClustersDictionary
{
  [(MPClusterController *)self updateClusterRatings];
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(MPClusterController *)self yearClusters];
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v155 objects:v169 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v156;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v156 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v155 + 1) + 8 * i);
        if ([v9 slideCount] >= 2)
        {
          [v9 rating];
          v11 = v10;
          *&v10 = v11;
          v12 = [v3 objectForKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v10)}];
          if (!v12)
          {
            v12 = +[NSMutableArray array];
            *&v13 = v11;
            [v3 setObject:v12 forKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v13)}];
          }

          [v12 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v155 objects:v169 count:16];
    }

    while (v6);
  }

  v14 = [(MPClusterController *)self monthClusters];
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v151 objects:v168 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v152;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v152 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v151 + 1) + 8 * j);
        if ([v19 slideCount] >= 2)
        {
          [v19 rating];
          v21 = v20;
          *&v20 = v21;
          v22 = [v3 objectForKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v20)}];
          if (!v22)
          {
            v22 = +[NSMutableArray array];
            *&v23 = v21;
            [v3 setObject:v22 forKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v23)}];
          }

          [v22 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v151 objects:v168 count:16];
    }

    while (v16);
  }

  v24 = [(MPClusterController *)self monthOfYearClusters];
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v25 = [v24 countByEnumeratingWithState:&v147 objects:v167 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v148;
    do
    {
      for (k = 0; k != v26; k = k + 1)
      {
        if (*v148 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v147 + 1) + 8 * k);
        if ([v29 slideCount] >= 2)
        {
          [v29 rating];
          v31 = v30;
          *&v30 = v31;
          v32 = [v3 objectForKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v30)}];
          if (!v32)
          {
            v32 = +[NSMutableArray array];
            *&v33 = v31;
            [v3 setObject:v32 forKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v33)}];
          }

          [v32 addObject:v29];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v147 objects:v167 count:16];
    }

    while (v26);
  }

  v34 = [(MPClusterController *)self dayOfYearClusters];
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v35 = [v34 countByEnumeratingWithState:&v143 objects:v166 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v144;
    do
    {
      for (m = 0; m != v36; m = m + 1)
      {
        if (*v144 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v143 + 1) + 8 * m);
        if ([v39 slideCount] >= 2)
        {
          [v39 rating];
          v41 = v40;
          *&v40 = v41;
          v42 = [v3 objectForKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v40)}];
          if (!v42)
          {
            v42 = +[NSMutableArray array];
            *&v43 = v41;
            [v3 setObject:v42 forKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v43)}];
          }

          [v42 addObject:v39];
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v143 objects:v166 count:16];
    }

    while (v36);
  }

  v44 = [(MPClusterController *)self hourOfYearClusters];
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v45 = [v44 countByEnumeratingWithState:&v139 objects:v165 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v140;
    do
    {
      for (n = 0; n != v46; n = n + 1)
      {
        if (*v140 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v139 + 1) + 8 * n);
        if ([v49 slideCount] >= 2)
        {
          [v49 rating];
          v51 = v50;
          *&v50 = v51;
          v52 = [v3 objectForKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v50)}];
          if (!v52)
          {
            v52 = +[NSMutableArray array];
            *&v53 = v51;
            [v3 setObject:v52 forKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v53)}];
          }

          [v52 addObject:v49];
        }
      }

      v46 = [v44 countByEnumeratingWithState:&v139 objects:v165 count:16];
    }

    while (v46);
  }

  v54 = [(MPClusterController *)self minuteOfYearClusters];
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v55 = [v54 countByEnumeratingWithState:&v135 objects:v164 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v136;
    do
    {
      for (ii = 0; ii != v56; ii = ii + 1)
      {
        if (*v136 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = *(*(&v135 + 1) + 8 * ii);
        if ([v59 slideCount] >= 2)
        {
          [v59 rating];
          v61 = v60;
          *&v60 = v61;
          v62 = [v3 objectForKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v60)}];
          if (!v62)
          {
            v62 = +[NSMutableArray array];
            *&v63 = v61;
            [v3 setObject:v62 forKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v63)}];
          }

          [v62 addObject:v59];
        }
      }

      v56 = [v54 countByEnumeratingWithState:&v135 objects:v164 count:16];
    }

    while (v56);
  }

  v64 = [(MPClusterController *)self roundedFiveMinuteOfYearClusters];
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v65 = [v64 countByEnumeratingWithState:&v131 objects:v163 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v132;
    do
    {
      for (jj = 0; jj != v66; jj = jj + 1)
      {
        if (*v132 != v67)
        {
          objc_enumerationMutation(v64);
        }

        v69 = *(*(&v131 + 1) + 8 * jj);
        if ([v69 slideCount] >= 2)
        {
          [v69 rating];
          v71 = v70;
          *&v70 = v71;
          v72 = [v3 objectForKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v70)}];
          if (!v72)
          {
            v72 = +[NSMutableArray array];
            *&v73 = v71;
            [v3 setObject:v72 forKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v73)}];
          }

          [v72 addObject:v69];
        }
      }

      v66 = [v64 countByEnumeratingWithState:&v131 objects:v163 count:16];
    }

    while (v66);
  }

  v74 = [(MPClusterController *)self roundedFifteenMinuteOfYearClusters];
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v75 = [v74 countByEnumeratingWithState:&v127 objects:v162 count:16];
  if (v75)
  {
    v76 = v75;
    v77 = *v128;
    do
    {
      for (kk = 0; kk != v76; kk = kk + 1)
      {
        if (*v128 != v77)
        {
          objc_enumerationMutation(v74);
        }

        v79 = *(*(&v127 + 1) + 8 * kk);
        if ([v79 slideCount] >= 2)
        {
          [v79 rating];
          v81 = v80;
          *&v80 = v81;
          v82 = [v3 objectForKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v80)}];
          if (!v82)
          {
            v82 = +[NSMutableArray array];
            *&v83 = v81;
            [v3 setObject:v82 forKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v83)}];
          }

          [v82 addObject:v79];
        }
      }

      v76 = [v74 countByEnumeratingWithState:&v127 objects:v162 count:16];
    }

    while (v76);
  }

  v84 = [(MPClusterController *)self keywordClusters];
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v85 = [v84 countByEnumeratingWithState:&v123 objects:v161 count:16];
  if (v85)
  {
    v86 = v85;
    v87 = *v124;
    do
    {
      for (mm = 0; mm != v86; mm = mm + 1)
      {
        if (*v124 != v87)
        {
          objc_enumerationMutation(v84);
        }

        v89 = *(*(&v123 + 1) + 8 * mm);
        if ([v89 slideCount] >= 2)
        {
          [v89 rating];
          v91 = v90;
          *&v90 = v91;
          v92 = [v3 objectForKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v90)}];
          if (!v92)
          {
            v92 = +[NSMutableArray array];
            *&v93 = v91;
            [v3 setObject:v92 forKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v93)}];
          }

          [v92 addObject:v89];
        }
      }

      v86 = [v84 countByEnumeratingWithState:&v123 objects:v161 count:16];
    }

    while (v86);
  }

  v94 = [(MPClusterController *)self locationClusters];
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v95 = [v94 countByEnumeratingWithState:&v119 objects:v160 count:16];
  if (v95)
  {
    v96 = v95;
    v97 = *v120;
    do
    {
      for (nn = 0; nn != v96; nn = nn + 1)
      {
        if (*v120 != v97)
        {
          objc_enumerationMutation(v94);
        }

        v99 = *(*(&v119 + 1) + 8 * nn);
        if ([v99 slideCount] >= 2)
        {
          [v99 rating];
          v101 = v100;
          *&v100 = v101;
          v102 = [v3 objectForKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v100)}];
          if (!v102)
          {
            v102 = +[NSMutableArray array];
            *&v103 = v101;
            [v3 setObject:v102 forKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v103)}];
          }

          [v102 addObject:v99];
        }
      }

      v96 = [v94 countByEnumeratingWithState:&v119 objects:v160 count:16];
    }

    while (v96);
  }

  v104 = [(MPClusterController *)self userProvidedClusters];
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v105 = [v104 countByEnumeratingWithState:&v115 objects:v159 count:16];
  if (v105)
  {
    v106 = v105;
    v107 = *v116;
    do
    {
      for (i1 = 0; i1 != v106; i1 = i1 + 1)
      {
        if (*v116 != v107)
        {
          objc_enumerationMutation(v104);
        }

        v109 = *(*(&v115 + 1) + 8 * i1);
        if ([v109 slideCount] >= 2)
        {
          [v109 rating];
          v111 = v110;
          *&v110 = v111;
          v112 = [v3 objectForKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v110)}];
          if (!v112)
          {
            v112 = +[NSMutableArray array];
            *&v113 = v111;
            [v3 setObject:v112 forKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v113)}];
          }

          [v112 addObject:v109];
        }
      }

      v106 = [v104 countByEnumeratingWithState:&v115 objects:v159 count:16];
    }

    while (v106);
  }

  return v3;
}

- (void)updateClusterRatings
{
  [(MPClusterController *)self removeAllSingleSlideClusters];
  [(MPClusterController *)self updateRatingsForYearClusters];
  [(MPClusterController *)self updateRatingsForMonthClusters];
  [(MPClusterController *)self updateRatingsForMonthOfYearClusters];
  [(MPClusterController *)self updateRatingsForDayOfYearClusters];
  [(MPClusterController *)self updateRatingsForHourOfYearClusters];
  [(MPClusterController *)self updateRatingsForMinuteOfYearClusters];
  [(MPClusterController *)self updateRatingsForRoundedFiveMinuteOfYearClusters];
  [(MPClusterController *)self updateRatingsForRoundedFifteenMinuteOfYearClusters];
  [(MPClusterController *)self updateRatingsForKeywordClusters];

  [(MPClusterController *)self updateRatingsForLocationClusters];
}

- (void)updateRatingsForYearClusters
{
  v2 = [(MPClusterController *)self yearClusters];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v24;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        [objc_msgSend(v8 "name")];
        v5 += [v8 slideCount];
      }

      v4 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
    v9 = v5;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [v2 count];
  if (v10 >= 3)
  {
    if (v10 >= 6)
    {
      if (v10 >= 0xB)
      {
        v11 = 0.25;
      }

      else
      {
        v11 = 0.2;
      }
    }

    else
    {
      v11 = 0.1;
    }
  }

  else
  {
    v11 = 0.05;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v2);
        }

        v16 = *(*(&v19 + 1) + 8 * j);
        v17 = [v16 slideCount];
        v18 = 0.0;
        if (v17 >= 2)
        {
          v18 = (1.0 - [v16 slideCount] / v9) * 5.0;
        }

        [v16 setRating:v18 + v11 * 5.0];
      }

      v13 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }
}

- (void)updateRatingsForMonthClusters
{
  v2 = [(MPClusterController *)self monthClusters];
  v3 = [v2 count];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v6 += [*(*(&v22 + 1) + 8 * i) slideCount];
      }

      v5 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
    v9 = v6;
  }

  else
  {
    v9 = 0.0;
  }

  if (v3 >= 3)
  {
    if (v3 >= 5)
    {
      if (v3 >= 9)
      {
        v10 = 0.25;
      }

      else
      {
        v10 = 0.2;
      }
    }

    else
    {
      v10 = 0.1;
    }
  }

  else
  {
    v10 = 0.05;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v2);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        v16 = [v15 slideCount];
        v17 = 0.0;
        if (v16 >= 2)
        {
          v17 = (1.0 - [v15 slideCount] / v9) * 5.0;
        }

        [v15 setRating:v17 + v10 * 5.0];
      }

      v12 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }
}

- (void)updateRatingsForMonthOfYearClusters
{
  v2 = [(MPClusterController *)self monthOfYearClusters];
  v3 = [v2 count];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v6 += [*(*(&v22 + 1) + 8 * i) slideCount];
      }

      v5 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
    v9 = v6;
  }

  else
  {
    v9 = 0.0;
  }

  if (v3 >= 3)
  {
    if (v3 >= 6)
    {
      if (v3 >= 0xB)
      {
        v10 = 0.25;
      }

      else
      {
        v10 = 0.2;
      }
    }

    else
    {
      v10 = 0.1;
    }
  }

  else
  {
    v10 = 0.05;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v2);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        v16 = [v15 slideCount];
        v17 = 0.0;
        if (v16 >= 2)
        {
          v17 = (1.0 - [v15 slideCount] / v9) * 5.0;
        }

        [v15 setRating:v17 + v10 * 5.0];
      }

      v12 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }
}

- (void)updateRatingsForDayOfYearClusters
{
  v2 = [(MPClusterController *)self dayOfYearClusters];
  v3 = [v2 count];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v6 += [*(*(&v22 + 1) + 8 * i) slideCount];
      }

      v5 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
    v9 = v6;
  }

  else
  {
    v9 = 0.0;
  }

  if (v3 >= 3)
  {
    if (v3 >= 6)
    {
      if (v3 >= 0xB)
      {
        v10 = 0.25;
      }

      else
      {
        v10 = 0.2;
      }
    }

    else
    {
      v10 = 0.1;
    }
  }

  else
  {
    v10 = 0.05;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v2);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        v16 = [v15 slideCount];
        v17 = 0.0;
        if (v16 >= 2)
        {
          v17 = (1.0 - [v15 slideCount] / v9) * 5.0;
        }

        [v15 setRating:v17 + v10 * 5.0];
      }

      v12 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }
}

- (void)updateRatingsForHourOfYearClusters
{
  [(NSDate *)self->mNewestSlideTimestamp timeIntervalSinceDate:self->mOldestSlideTimestamp];
  v4 = v3;
  v5 = [(MPClusterController *)self hourOfYearClusters];
  v6 = [v5 count];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v27;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v9 += [*(*(&v26 + 1) + 8 * i) slideCount];
      }

      v8 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
    v12 = v9;
  }

  else
  {
    v12 = 0.0;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = (1.0 - 1.0 / (v4 / 3600.0)) * (1.0 - 1.0 / v6) * 0.3;
    v16 = *v23;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v5);
        }

        v18 = *(*(&v22 + 1) + 8 * j);
        v19 = [v18 slideCount];
        v20 = 0.0;
        if (v19 >= 2)
        {
          v21 = [v18 slideCount];
          v20 = 1.0 - v21 / v12 + 1.0 - v21 / v12;
        }

        [v18 setRating:v20 + v15 * 2.0];
      }

      v14 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }
}

- (void)updateRatingsForMinuteOfYearClusters
{
  v2 = [(MPClusterController *)self minuteOfYearClusters];
  v3 = [v2 count];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v6 += [*(*(&v22 + 1) + 8 * i) slideCount];
      }

      v5 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
    v9 = v6;
  }

  else
  {
    v9 = 0.0;
  }

  if (v3 >= 4)
  {
    if (v3 >= 7)
    {
      if (v3 >= 0xD)
      {
        v10 = 0.25;
      }

      else
      {
        v10 = 0.2;
      }
    }

    else
    {
      v10 = 0.1;
    }
  }

  else
  {
    v10 = 0.05;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v2);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        v16 = [v15 slideCount];
        v17 = 0.0;
        if (v16 >= 2)
        {
          v17 = (1.0 - [v15 slideCount] / v9) * 10.0;
        }

        [v15 setRating:v17 + v10 * 10.0];
      }

      v12 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }
}

- (void)updateRatingsForRoundedFiveMinuteOfYearClusters
{
  v2 = [(MPClusterController *)self roundedFiveMinuteOfYearClusters];
  v3 = [v2 count];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v6 += [*(*(&v22 + 1) + 8 * i) slideCount];
      }

      v5 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
    v9 = v6;
  }

  else
  {
    v9 = 0.0;
  }

  if (v3 >= 4)
  {
    if (v3 >= 7)
    {
      if (v3 >= 0xD)
      {
        v10 = 0.25;
      }

      else
      {
        v10 = 0.2;
      }
    }

    else
    {
      v10 = 0.1;
    }
  }

  else
  {
    v10 = 0.05;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v2);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        v16 = [v15 slideCount];
        v17 = 0.0;
        if (v16 >= 2)
        {
          v17 = (1.0 - [v15 slideCount] / v9) * 10.0;
        }

        [v15 setRating:v17 + v10 * 10.0];
      }

      v12 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }
}

- (void)updateRatingsForRoundedFifteenMinuteOfYearClusters
{
  v2 = [(MPClusterController *)self roundedFifteenMinuteOfYearClusters];
  v3 = [v2 count];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v6 += [*(*(&v22 + 1) + 8 * i) slideCount];
      }

      v5 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
    v9 = v6;
  }

  else
  {
    v9 = 0.0;
  }

  if (v3 >= 4)
  {
    if (v3 >= 7)
    {
      if (v3 >= 0xD)
      {
        v10 = 0.25;
      }

      else
      {
        v10 = 0.2;
      }
    }

    else
    {
      v10 = 0.1;
    }
  }

  else
  {
    v10 = 0.05;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v2);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        v16 = [v15 slideCount];
        v17 = 0.0;
        if (v16 >= 2)
        {
          v17 = (1.0 - [v15 slideCount] / v9) * 10.0;
        }

        [v15 setRating:v17 + v10 * 10.0];
      }

      v12 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }
}

- (void)updateRatingsForKeywordClusters
{
  v2 = [(MPClusterController *)self keywordClusters];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) setRating:7.5];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)updateRatingsForLocationClusters
{
  v2 = [(MPClusterController *)self locationClusters];
  v3 = [v2 count];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v6 += [*(*(&v22 + 1) + 8 * i) slideCount];
      }

      v5 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
    v9 = v6;
  }

  else
  {
    v9 = 0.0;
  }

  if (v3 >= 4)
  {
    if (v3 >= 7)
    {
      if (v3 >= 0xD)
      {
        v10 = 0.25;
      }

      else
      {
        v10 = 0.2;
      }
    }

    else
    {
      v10 = 0.1;
    }
  }

  else
  {
    v10 = 0.05;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v2);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        v16 = [v15 slideCount];
        v17 = 0.0;
        if (v16 >= 2)
        {
          v17 = (1.0 - [v15 slideCount] / v9) * 5.0;
        }

        [v15 setRating:v17 + v10 * 5.0];
      }

      v12 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }
}

- (void)dumpClustersStatistics
{
  NSLog(@"\n\n", a2);
  NSLog(@"--------------------");
  NSLog(@"Clusters statistics:");
  NSLog(@"--------------------");
  NSLog(@"Year clusters:");
  NSLog(@"--------------");
  v153 = self;
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  v233 = 0u;
  v3 = [(MPClusterController *)self yearClusters];
  v4 = [v3 countByEnumeratingWithState:&v230 objects:v253 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v231;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v231 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v230 + 1) + 8 * i);
        v9 = [v8 name];
        v10 = [v8 usageCountDescription];
        [v8 rating];
        NSLog(@"cluster[%@]: usageCount = (%@), rating = (%.2f), slide count = %d", v9, v10, v11, [v8 slideCount]);
        v229 = 0u;
        v228 = 0u;
        v227 = 0u;
        v226 = 0u;
        v12 = [v8 allSlides];
        v13 = [v12 countByEnumeratingWithState:&v226 objects:v252 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          v16 = *v227;
          do
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v227 != v16)
              {
                objc_enumerationMutation(v12);
              }

              NSLog(@"             slide[%d]:  %@", v15, [objc_msgSend(*(*(&v226 + 1) + 8 * j) "path")]);
              v15 = (v15 + 1);
            }

            v14 = [v12 countByEnumeratingWithState:&v226 objects:v252 count:16];
          }

          while (v14);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v230 objects:v253 count:16];
    }

    while (v5);
  }

  NSLog(@"Month clusters:");
  NSLog(@"---------------");
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v18 = [(MPClusterController *)v153 monthClusters];
  v19 = [v18 countByEnumeratingWithState:&v222 objects:v251 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v223;
    do
    {
      for (k = 0; k != v20; k = k + 1)
      {
        if (*v223 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v222 + 1) + 8 * k);
        v24 = [v23 name];
        v25 = [v23 usageCountDescription];
        [v23 rating];
        NSLog(@"cluster[%@]: usageCount = (%@), rating = (%.2f), slide count = %d", v24, v25, v26, [v23 slideCount]);
        v221 = 0u;
        v220 = 0u;
        v219 = 0u;
        v218 = 0u;
        v27 = [v23 allSlides];
        v28 = [v27 countByEnumeratingWithState:&v218 objects:v250 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = 0;
          v31 = *v219;
          do
          {
            for (m = 0; m != v29; m = m + 1)
            {
              if (*v219 != v31)
              {
                objc_enumerationMutation(v27);
              }

              NSLog(@"             slide[%d]:  %@", v30, [objc_msgSend(*(*(&v218 + 1) + 8 * m) "path")]);
              v30 = (v30 + 1);
            }

            v29 = [v27 countByEnumeratingWithState:&v218 objects:v250 count:16];
          }

          while (v29);
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v222 objects:v251 count:16];
    }

    while (v20);
  }

  NSLog(@"MonthOfYear clusters:");
  NSLog(@"---------------------");
  v214 = 0u;
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  v33 = [(MPClusterController *)v153 monthOfYearClusters];
  v34 = [v33 countByEnumeratingWithState:&v214 objects:v249 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v215;
    do
    {
      for (n = 0; n != v35; n = n + 1)
      {
        if (*v215 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v214 + 1) + 8 * n);
        v39 = [v38 name];
        v40 = [v38 usageCountDescription];
        [v38 rating];
        NSLog(@"cluster[%@]: usageCount = (%@), rating = (%.2f), slide count = %d", v39, v40, v41, [v38 slideCount]);
        v212 = 0u;
        v213 = 0u;
        v210 = 0u;
        v211 = 0u;
        v42 = [v38 allSlides];
        v43 = [v42 countByEnumeratingWithState:&v210 objects:v248 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = 0;
          v46 = *v211;
          do
          {
            for (ii = 0; ii != v44; ii = ii + 1)
            {
              if (*v211 != v46)
              {
                objc_enumerationMutation(v42);
              }

              NSLog(@"             slide[%d]:  %@", v45, [objc_msgSend(*(*(&v210 + 1) + 8 * ii) "path")]);
              v45 = (v45 + 1);
            }

            v44 = [v42 countByEnumeratingWithState:&v210 objects:v248 count:16];
          }

          while (v44);
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v214 objects:v249 count:16];
    }

    while (v35);
  }

  NSLog(@"DayOfYear clusters:");
  NSLog(@"-------------------");
  v206 = 0u;
  v207 = 0u;
  v208 = 0u;
  v209 = 0u;
  v48 = [(MPClusterController *)v153 dayOfYearClusters];
  v49 = [v48 countByEnumeratingWithState:&v206 objects:v247 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v207;
    do
    {
      for (jj = 0; jj != v50; jj = jj + 1)
      {
        if (*v207 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v206 + 1) + 8 * jj);
        v54 = [v53 name];
        v55 = [v53 usageCountDescription];
        [v53 rating];
        NSLog(@"cluster[%@]: usageCount = (%@), rating = (%.2f), slide count = %d", v54, v55, v56, [v53 slideCount]);
        v204 = 0u;
        v205 = 0u;
        v202 = 0u;
        v203 = 0u;
        v57 = [v53 allSlides];
        v58 = [v57 countByEnumeratingWithState:&v202 objects:v246 count:16];
        if (v58)
        {
          v59 = v58;
          v60 = 0;
          v61 = *v203;
          do
          {
            for (kk = 0; kk != v59; kk = kk + 1)
            {
              if (*v203 != v61)
              {
                objc_enumerationMutation(v57);
              }

              NSLog(@"             slide[%d]:  %@", v60, [objc_msgSend(*(*(&v202 + 1) + 8 * kk) "path")]);
              v60 = (v60 + 1);
            }

            v59 = [v57 countByEnumeratingWithState:&v202 objects:v246 count:16];
          }

          while (v59);
        }
      }

      v50 = [v48 countByEnumeratingWithState:&v206 objects:v247 count:16];
    }

    while (v50);
  }

  NSLog(@"HourOfYear clusters:");
  NSLog(@"--------------------");
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v63 = [(MPClusterController *)v153 hourOfYearClusters];
  v64 = [v63 countByEnumeratingWithState:&v198 objects:v245 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v199;
    do
    {
      for (mm = 0; mm != v65; mm = mm + 1)
      {
        if (*v199 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v68 = *(*(&v198 + 1) + 8 * mm);
        v69 = [v68 name];
        v70 = [v68 usageCountDescription];
        [v68 rating];
        NSLog(@"cluster[%@]: usageCount = (%@), rating = (%.2f), slide count = %d", v69, v70, v71, [v68 slideCount]);
        v196 = 0u;
        v197 = 0u;
        v194 = 0u;
        v195 = 0u;
        v72 = [v68 allSlides];
        v73 = [v72 countByEnumeratingWithState:&v194 objects:v244 count:16];
        if (v73)
        {
          v74 = v73;
          v75 = 0;
          v76 = *v195;
          do
          {
            for (nn = 0; nn != v74; nn = nn + 1)
            {
              if (*v195 != v76)
              {
                objc_enumerationMutation(v72);
              }

              NSLog(@"             slide[%d]:  %@", v75, [objc_msgSend(*(*(&v194 + 1) + 8 * nn) "path")]);
              v75 = (v75 + 1);
            }

            v74 = [v72 countByEnumeratingWithState:&v194 objects:v244 count:16];
          }

          while (v74);
        }
      }

      v65 = [v63 countByEnumeratingWithState:&v198 objects:v245 count:16];
    }

    while (v65);
  }

  NSLog(@"MinuteOfYear clusters:");
  NSLog(@"----------------------");
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v78 = [(MPClusterController *)v153 minuteOfYearClusters];
  v79 = [v78 countByEnumeratingWithState:&v190 objects:v243 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v191;
    do
    {
      for (i1 = 0; i1 != v80; i1 = i1 + 1)
      {
        if (*v191 != v81)
        {
          objc_enumerationMutation(v78);
        }

        v83 = *(*(&v190 + 1) + 8 * i1);
        v84 = [v83 name];
        v85 = [v83 usageCountDescription];
        [v83 rating];
        NSLog(@"cluster[%@]: usageCount = (%@), rating = (%.2f), slide count = %d", v84, v85, v86, [v83 slideCount]);
        v188 = 0u;
        v189 = 0u;
        v186 = 0u;
        v187 = 0u;
        v87 = [v83 allSlides];
        v88 = [v87 countByEnumeratingWithState:&v186 objects:v242 count:16];
        if (v88)
        {
          v89 = v88;
          v90 = 0;
          v91 = *v187;
          do
          {
            for (i2 = 0; i2 != v89; i2 = i2 + 1)
            {
              if (*v187 != v91)
              {
                objc_enumerationMutation(v87);
              }

              NSLog(@"             slide[%d]:  %@", v90, [objc_msgSend(*(*(&v186 + 1) + 8 * i2) "path")]);
              v90 = (v90 + 1);
            }

            v89 = [v87 countByEnumeratingWithState:&v186 objects:v242 count:16];
          }

          while (v89);
        }
      }

      v80 = [v78 countByEnumeratingWithState:&v190 objects:v243 count:16];
    }

    while (v80);
  }

  NSLog(@"RoundedFiveMinuteOfYear clusters:");
  NSLog(@"----------------------");
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v93 = [(MPClusterController *)v153 roundedFiveMinuteOfYearClusters];
  v94 = [v93 countByEnumeratingWithState:&v182 objects:v241 count:16];
  if (v94)
  {
    v95 = v94;
    v96 = *v183;
    do
    {
      for (i3 = 0; i3 != v95; i3 = i3 + 1)
      {
        if (*v183 != v96)
        {
          objc_enumerationMutation(v93);
        }

        v98 = *(*(&v182 + 1) + 8 * i3);
        v99 = [v98 name];
        v100 = [v98 usageCountDescription];
        [v98 rating];
        NSLog(@"cluster[%@]: usageCount = (%@), rating = (%.2f), slide count = %d", v99, v100, v101, [v98 slideCount]);
        v180 = 0u;
        v181 = 0u;
        v178 = 0u;
        v179 = 0u;
        v102 = [v98 allSlides];
        v103 = [v102 countByEnumeratingWithState:&v178 objects:v240 count:16];
        if (v103)
        {
          v104 = v103;
          v105 = 0;
          v106 = *v179;
          do
          {
            for (i4 = 0; i4 != v104; i4 = i4 + 1)
            {
              if (*v179 != v106)
              {
                objc_enumerationMutation(v102);
              }

              NSLog(@"             slide[%d]:  %@", v105, [objc_msgSend(*(*(&v178 + 1) + 8 * i4) "path")]);
              v105 = (v105 + 1);
            }

            v104 = [v102 countByEnumeratingWithState:&v178 objects:v240 count:16];
          }

          while (v104);
        }
      }

      v95 = [v93 countByEnumeratingWithState:&v182 objects:v241 count:16];
    }

    while (v95);
  }

  NSLog(@"RoundedFifteenMinuteOfYear clusters:");
  NSLog(@"----------------------");
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v108 = [(MPClusterController *)v153 roundedFifteenMinuteOfYearClusters];
  v109 = [v108 countByEnumeratingWithState:&v174 objects:v239 count:16];
  if (v109)
  {
    v110 = v109;
    v111 = *v175;
    do
    {
      for (i5 = 0; i5 != v110; i5 = i5 + 1)
      {
        if (*v175 != v111)
        {
          objc_enumerationMutation(v108);
        }

        v113 = *(*(&v174 + 1) + 8 * i5);
        v114 = [v113 name];
        v115 = [v113 usageCountDescription];
        [v113 rating];
        NSLog(@"cluster[%@]: usageCount = (%@), rating = (%.2f), slide count = %d", v114, v115, v116, [v113 slideCount]);
        v172 = 0u;
        v173 = 0u;
        v170 = 0u;
        v171 = 0u;
        v117 = [v113 allSlides];
        v118 = [v117 countByEnumeratingWithState:&v170 objects:v238 count:16];
        if (v118)
        {
          v119 = v118;
          v120 = 0;
          v121 = *v171;
          do
          {
            for (i6 = 0; i6 != v119; i6 = i6 + 1)
            {
              if (*v171 != v121)
              {
                objc_enumerationMutation(v117);
              }

              NSLog(@"             slide[%d]:  %@", v120, [objc_msgSend(*(*(&v170 + 1) + 8 * i6) "path")]);
              v120 = (v120 + 1);
            }

            v119 = [v117 countByEnumeratingWithState:&v170 objects:v238 count:16];
          }

          while (v119);
        }
      }

      v110 = [v108 countByEnumeratingWithState:&v174 objects:v239 count:16];
    }

    while (v110);
  }

  NSLog(@"Keyword clusters:");
  NSLog(@"-----------------");
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v123 = [(MPClusterController *)v153 keywordClusters];
  v124 = [v123 countByEnumeratingWithState:&v166 objects:v237 count:16];
  if (v124)
  {
    v125 = v124;
    v126 = *v167;
    do
    {
      for (i7 = 0; i7 != v125; i7 = i7 + 1)
      {
        if (*v167 != v126)
        {
          objc_enumerationMutation(v123);
        }

        v128 = *(*(&v166 + 1) + 8 * i7);
        v129 = [v128 name];
        v130 = [v128 usageCountDescription];
        [v128 rating];
        NSLog(@"cluster[%@]: usageCount = (%@), rating = (%.2f), slide count = %d", v129, v130, v131, [v128 slideCount]);
        v164 = 0u;
        v165 = 0u;
        v162 = 0u;
        v163 = 0u;
        v132 = [v128 allSlides];
        v133 = [v132 countByEnumeratingWithState:&v162 objects:v236 count:16];
        if (v133)
        {
          v134 = v133;
          v135 = 0;
          v136 = *v163;
          do
          {
            for (i8 = 0; i8 != v134; i8 = i8 + 1)
            {
              if (*v163 != v136)
              {
                objc_enumerationMutation(v132);
              }

              NSLog(@"             slide[%d]:  %@", v135, [objc_msgSend(*(*(&v162 + 1) + 8 * i8) "path")]);
              v135 = (v135 + 1);
            }

            v134 = [v132 countByEnumeratingWithState:&v162 objects:v236 count:16];
          }

          while (v134);
        }
      }

      v125 = [v123 countByEnumeratingWithState:&v166 objects:v237 count:16];
    }

    while (v125);
  }

  NSLog(@"Location clusters:");
  NSLog(@"------------------");
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v138 = [(MPClusterController *)v153 locationClusters];
  v139 = [v138 countByEnumeratingWithState:&v158 objects:v235 count:16];
  if (v139)
  {
    v140 = v139;
    v141 = *v159;
    do
    {
      for (i9 = 0; i9 != v140; i9 = i9 + 1)
      {
        if (*v159 != v141)
        {
          objc_enumerationMutation(v138);
        }

        v143 = *(*(&v158 + 1) + 8 * i9);
        v144 = [v143 name];
        v145 = [v143 usageCountDescription];
        [v143 rating];
        NSLog(@"cluster[%@]: usageCount = (%@), rating = (%.2f), slide count = %d", v144, v145, v146, [v143 slideCount]);
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v147 = [v143 allSlides];
        v148 = [v147 countByEnumeratingWithState:&v154 objects:v234 count:16];
        if (v148)
        {
          v149 = v148;
          v150 = 0;
          v151 = *v155;
          do
          {
            for (i10 = 0; i10 != v149; i10 = i10 + 1)
            {
              if (*v155 != v151)
              {
                objc_enumerationMutation(v147);
              }

              NSLog(@"             slide[%d]:  %@", v150, [objc_msgSend(*(*(&v154 + 1) + 8 * i10) "path")]);
              v150 = (v150 + 1);
            }

            v149 = [v147 countByEnumeratingWithState:&v154 objects:v234 count:16];
          }

          while (v149);
        }
      }

      v140 = [v138 countByEnumeratingWithState:&v158 objects:v235 count:16];
    }

    while (v140);
  }
}

- (void)dumpSlidesStatistics
{
  NSLog(@"\n\n", a2);
  NSLog(@"==================");
  NSLog(@"Slides statistics:");
  NSLog(@"==================\n");
  v3 = [(MPClusterController *)self allSlidesSortedByUsage];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v3);
        }

        NSLog(@"slide[%d]: usageCount = (%@), filename = %@", v6, [*(*(&v9 + 1) + 8 * v8) usageCountDescription], objc_msgSend(objc_msgSend(*(*(&v9 + 1) + 8 * v8), "path"), "lastPathComponent"));
        v6 = (v6 + 1);
        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_removeAllSingleSlideClustersForClusterCategory:(id)a3
{
  v5 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:?];
  v6 = +[NSMutableDictionary dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [v5 objectForKey:v11];
        if ([v12 slideCount] >= 2)
        {
          [v6 setObject:v12 forKey:v11];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(NSMutableDictionary *)self->mSlideClusters setObject:v6 forKey:a3];
}

@end