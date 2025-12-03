@interface MPClusterController
+ (id)sharedController;
+ (void)releaseSharedController;
- (MPClusterController)init;
- (id)allSlidesSortedByPaths:(id)paths;
- (id)clusterSlidesSortedByUserDefinedSortOrder:(id)order userDefinedSlideOrder:(id)slideOrder;
- (id)clustersBasedOnOrderedPaths:(id)paths;
- (id)dayOfYearClusterForAssetAtPath:(id)path;
- (id)dayOfYearClusters;
- (id)findBestChronologicalCluster:(id)cluster startingWithSlide:(id)slide;
- (id)findBestCluster:(id)cluster;
- (id)findBestCluster:(id)cluster withMaxEffectSize:(int64_t)size idealEffectSize:(int64_t)effectSize;
- (id)findBestClusterBasedOnUserDefinedSlideOrder:(id)order startingWithSlide:(id)slide;
- (id)hourOfYearClusterForAssetAtPath:(id)path;
- (id)hourOfYearClusters;
- (id)keywordClusters;
- (id)locationClusters;
- (id)minuteOfYearClusterForAssetAtPath:(id)path;
- (id)minuteOfYearClusters;
- (id)monthClusterForAssetAtPath:(id)path;
- (id)monthClusters;
- (id)monthOfYearClusterForAssetAtPath:(id)path;
- (id)monthOfYearClusters;
- (id)nextLeastUsedSlides:(int64_t)slides forLayer:(id)layer markAsUsed:(BOOL)used;
- (id)orderedAndPrioritizedSlideClusters;
- (id)prioritizedSlideClustersDictionary;
- (id)roundedFifteenMinuteOfYearClusterForAssetAtPath:(id)path;
- (id)roundedFifteenMinuteOfYearClusters;
- (id)roundedFiveMinuteOfYearClusterForAssetAtPath:(id)path;
- (id)roundedFiveMinuteOfYearClusters;
- (id)userProvidedClusters;
- (id)yearClusterForAssetAtPath:(id)path;
- (id)yearClusters;
- (int64_t)addSlideForPath:(id)path withIndex:(int64_t)index;
- (void)_removeAllSingleSlideClustersForClusterCategory:(id)category;
- (void)addKeywords:(id)keywords forSlide:(id)slide;
- (void)addPaths:(id)paths toUserDefinedCluster:(id)cluster;
- (void)createLocationClustersForPaths:(id)paths;
- (void)dealloc;
- (void)dumpClustersStatistics;
- (void)dumpSlidesStatistics;
- (void)flush;
- (void)flushClusters;
- (void)removeAllSingleSlideClusters;
- (void)resetAllUsageCounters;
- (void)sortClusterSlidesChronologically:(id *)chronologically;
- (void)updateClusterRatings;
- (void)updateDayOfYearClustersWithDate:(id)date ofSlide:(id)slide;
- (void)updateHourOfYearClustersWithDate:(id)date ofSlide:(id)slide;
- (void)updateMinuteOfYearClustersWithDate:(id)date ofSlide:(id)slide;
- (void)updateMonthClustersWithDate:(id)date ofSlide:(id)slide;
- (void)updateMonthOfYearClustersWithDate:(id)date ofSlide:(id)slide;
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
- (void)updateRoundedFifteenMinuteOfYearClustersWithDate:(id)date ofSlide:(id)slide;
- (void)updateRoundedFiveMinuteOfYearClustersWithDate:(id)date ofSlide:(id)slide;
- (void)updateYearClustersWithDate:(id)date ofSlide:(id)slide;
@end

@implementation MPClusterController

+ (id)sharedController
{
  result = qword_1EF290;
  if (!qword_1EF290)
  {
    objc_sync_enter(self);
    if (!qword_1EF290)
    {
      qword_1EF290 = objc_alloc_init(MPClusterController);
    }

    objc_sync_exit(self);
    return qword_1EF290;
  }

  return result;
}

+ (void)releaseSharedController
{
  if (qword_1EF290)
  {
    objc_sync_enter(self);

    qword_1EF290 = 0;

    objc_sync_exit(self);
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
  objectEnumerator = [(NSMutableDictionary *)self->mSlides objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v9 + 1) + 8 * v7) setUsableSlideClusters:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  objectEnumerator = [(NSMutableDictionary *)self->mSlides objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v9 + 1) + 8 * v7) setUsableSlideClusters:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (int64_t)addSlideForPath:(id)path withIndex:(int64_t)index
{
  v7 = [(MPDocument *)self->mAuthoredDocument keywordsForPath:?];
  v8 = [(MPDocument *)self->mAuthoredDocument creationDateForPath:path];
  v9 = +[NSMutableDictionary dictionary];
  if (!v8)
  {
    NSLog(@"Asset: %@ has no creation date metadata, using epoch as a workaround.", path);
    v8 = [NSDate dateWithTimeIntervalSince1970:0.0];
  }

  [(NSDate *)v8 timeIntervalSince1970];
  [v9 setObject:path forKey:{-[NSNumber stringValue](+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:"), "stringValue")}];
  p_mOldestSlideTimestamp = &self->mOldestSlideTimestamp;
  if ([(NSDate *)v8 compare:self->mOldestSlideTimestamp]== NSOrderedAscending || (p_mOldestSlideTimestamp = &self->mNewestSlideTimestamp, [(NSDate *)v8 compare:self->mNewestSlideTimestamp]== &dword_0 + 1))
  {

    *p_mOldestSlideTimestamp = [(NSDate *)v8 copy];
  }

  v11 = [(NSMutableDictionary *)self->mSlides objectForKey:path];
  if (v11)
  {
    v12 = v11;
    [(MPClusterSlide *)v11 setReferenceCounter:[(MPClusterSlide *)v11 referenceCounter]+ 1];
    referenceCounter = [(MPClusterSlide *)v12 referenceCounter];
  }

  else
  {
    v12 = objc_alloc_init(MPClusterSlide);
    [(MPClusterSlide *)v12 setPath:path];
    [(MPClusterSlide *)v12 setIndex:index];
    referenceCounter = 1;
    [(MPClusterSlide *)v12 setReferenceCounter:1];
    [(MPClusterSlide *)v12 setCaptureDate:v8];
    [(MPClusterController *)self addKeywords:v7 forSlide:v12];
    [(NSMutableDictionary *)self->mSlides setValue:v12 forKey:path];
  }

  captureDate = [(MPClusterSlide *)v12 captureDate];
  [(MPClusterController *)self updateYearClustersWithDate:captureDate ofSlide:v12];
  [(MPClusterController *)self updateMonthClustersWithDate:captureDate ofSlide:v12];
  [(MPClusterController *)self updateMonthOfYearClustersWithDate:captureDate ofSlide:v12];
  [(MPClusterController *)self updateDayOfYearClustersWithDate:captureDate ofSlide:v12];
  [(MPClusterController *)self updateHourOfYearClustersWithDate:captureDate ofSlide:v12];
  [(MPClusterController *)self updateMinuteOfYearClustersWithDate:captureDate ofSlide:v12];
  [(MPClusterController *)self updateRoundedFiveMinuteOfYearClustersWithDate:captureDate ofSlide:v12];
  [(MPClusterController *)self updateRoundedFifteenMinuteOfYearClustersWithDate:captureDate ofSlide:v12];
  [(MPClusterController *)self updateAllSlidesClusterWithSlide:v12];
  return referenceCounter;
}

- (void)addKeywords:(id)keywords forSlide:(id)slide
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
  v8 = [keywords countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(keywords);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [v7 objectForKey:v12];
        if (!v13)
        {
          v13 = objc_alloc_init(MPCluster);
          [(MPCluster *)v13 setName:[NSString stringWithFormat:@"keyword: %@", v12]];
          [v7 setObject:v13 forKey:v12];
        }

        [(MPCluster *)v13 addSlide:slide];
      }

      v9 = [keywords countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (id)allSlidesSortedByPaths:(id)paths
{
  v5 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [paths countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(paths);
        }

        v10 = [(NSMutableDictionary *)self->mSlides objectForKey:*(*(&v12 + 1) + 8 * v9)];
        if (v10)
        {
          [v5 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [paths countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)nextLeastUsedSlides:(int64_t)slides forLayer:(id)layer markAsUsed:(BOOL)used
{
  usedCopy = used;
  allSlidesSortedByUsage = [(MPClusterController *)self allSlidesSortedByUsage];
  v9 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [allSlidesSortedByUsage countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v19;
    v14 = slides - 1;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(allSlidesSortedByUsage);
      }

      v16 = *(*(&v18 + 1) + 8 * v15);
      [v9 addObject:{objc_msgSend(v16, "path")}];
      if (usedCopy)
      {
        [v16 setUsageCounterForLayer:layer to:{objc_msgSend(v16, "overallUsageCounter") + 1}];
      }

      if (v14 == v12)
      {
        break;
      }

      v15 = v15 + 1;
      ++v12;
      if (v11 == v15)
      {
        v11 = [allSlidesSortedByUsage countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (id)clusterSlidesSortedByUserDefinedSortOrder:(id)order userDefinedSlideOrder:(id)slideOrder
{
  allSlides = [order allSlides];

  return [allSlides sortedArrayUsingFunction:sortSlidesByUserDefinedOrder1 context:slideOrder];
}

- (void)sortClusterSlidesChronologically:(id *)chronologically
{
  allSlides = [*chronologically allSlides];
  v14 = 1;
  v5 = [allSlides sortedArrayUsingFunction:sortSlidesByCaptureDate1 context:&v14];
  [*chronologically removeAllSlides];
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

        [*chronologically addSlide:*(*(&v10 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)clustersBasedOnOrderedPaths:(id)paths
{
  v5 = +[NSMutableArray array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = [paths countByEnumeratingWithState:&v37 objects:v41 count:16];
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
          objc_enumerationMutation(paths);
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
      v7 = [paths countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v7);
  }

  return v5;
}

- (void)resetAllUsageCounters
{
  allSlides = [(MPClusterController *)self allSlides];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [allSlides countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(allSlides);
        }

        [*(*(&v7 + 1) + 8 * v6) resetAllUsageCounters];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [allSlides countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  objectEnumerator = [(NSMutableDictionary *)self->mSlides objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v9 + 1) + 8 * v7) setUsableSlideClusters:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (id)findBestCluster:(id)cluster
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [cluster countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  slideCount = 0;
  v7 = 0;
  v8 = *v13;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(cluster);
      }

      v10 = *(*(&v12 + 1) + 8 * i);
      if ([v10 slideCount] > slideCount)
      {
        slideCount = [v10 slideCount];
        v7 = v10;
      }
    }

    v5 = [cluster countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v5);
  return v7;
}

- (id)findBestCluster:(id)cluster withMaxEffectSize:(int64_t)size idealEffectSize:(int64_t)effectSize
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [cluster countByEnumeratingWithState:&v22 objects:v26 count:16];
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
        objc_enumerationMutation(cluster);
      }

      v15 = *(*(&v22 + 1) + 8 * i);
      slideCount = [v15 slideCount];
      v11 = slideCount - effectSize;
      if (slideCount == effectSize)
      {
        return v15;
      }

      if (slideCount <= size)
      {
        if (v11 < 1 || (v17 = v15, v14) && v11 >= v14)
        {
          v18 = v14 < 1;
          v19 = v11 > effectSize;
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
            v11 = slideCount;
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

    v9 = [cluster countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

  return v10;
}

- (id)findBestChronologicalCluster:(id)cluster startingWithSlide:(id)slide
{
  v7 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [cluster countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(cluster);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if ([v12 clusterContainsSlideAtPath:{objc_msgSend(slide, "path")}])
        {
          allSlidesSortedChronologically = [v12 allSlidesSortedChronologically];
          if ([allSlidesSortedChronologically count])
          {
            if ([allSlidesSortedChronologically objectAtIndex:0] == slide)
            {
              [v7 addObject:v12];
            }
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [cluster countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return [(MPClusterController *)self findBestCluster:v7];
}

- (id)findBestClusterBasedOnUserDefinedSlideOrder:(id)order startingWithSlide:(id)slide
{
  v7 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [order countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(order);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if ([v12 clusterContainsSlideAtPath:{objc_msgSend(slide, "path")}])
        {
          v13 = [objc_msgSend(v12 "allSlides")];
          if ([v13 count])
          {
            if ([v13 objectAtIndex:0] == slide)
            {
              [v7 addObject:v12];
            }
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [order countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)updateYearClustersWithDate:(id)date ofSlide:(id)slide
{
  v6 = [date descriptionWithFormat:@"'Y:'yyyy"];
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

  [(MPCluster *)v8 addSlide:slide];
}

- (void)updateMonthClustersWithDate:(id)date ofSlide:(id)slide
{
  v6 = [date descriptionWithFormat:@"'M:'MM"];
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

  [(MPCluster *)v8 addSlide:slide];
}

- (void)updateMonthOfYearClustersWithDate:(id)date ofSlide:(id)slide
{
  v6 = [date descriptionWithFormat:@"'Y-M:'yyyy-MM"];
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

  [(MPCluster *)v8 addSlide:slide];
}

- (void)updateDayOfYearClustersWithDate:(id)date ofSlide:(id)slide
{
  v6 = [date descriptionWithFormat:@"'Y-M-D:'yyyy-MM-dd"];
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

  [(MPCluster *)v8 addSlide:slide];
}

- (void)updateHourOfYearClustersWithDate:(id)date ofSlide:(id)slide
{
  v6 = [date descriptionWithFormat:@"'Y-M-D-H:'yyyy-MM-dd-HH"];
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

  [(MPCluster *)v8 addSlide:slide];
}

- (void)updateMinuteOfYearClustersWithDate:(id)date ofSlide:(id)slide
{
  v6 = [date descriptionWithFormat:@"'Y-M-D-H-M:'yyyy-MM-dd-HH-mm"];
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

  [(MPCluster *)v8 addSlide:slide];
}

- (void)updateRoundedFiveMinuteOfYearClustersWithDate:(id)date ofSlide:(id)slide
{
  v6 = [objc_msgSend(date "roundMinuteToNearstFive")];
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

  [(MPCluster *)v8 addSlide:slide];
}

- (void)updateRoundedFifteenMinuteOfYearClustersWithDate:(id)date ofSlide:(id)slide
{
  v6 = [objc_msgSend(date "roundMinuteToNearstFifteen")];
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

  [(MPCluster *)v8 addSlide:slide];
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

- (id)yearClusterForAssetAtPath:(id)path
{
  v5 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"yearClusters"];
  v6 = [-[MPDocument creationDateForPath:](self->mAuthoredDocument creationDateForPath:{path), "descriptionWithFormat:", @"'Y:'yyyy"}];

  return [v5 objectForKey:v6];
}

- (id)monthClusterForAssetAtPath:(id)path
{
  v5 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"monthClusters"];
  v6 = [-[MPDocument creationDateForPath:](self->mAuthoredDocument creationDateForPath:{path), "descriptionWithFormat:", @"'M:'MM"}];

  return [v5 objectForKey:v6];
}

- (id)monthOfYearClusterForAssetAtPath:(id)path
{
  v5 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"monthOfYearClusters"];
  v6 = [-[MPDocument creationDateForPath:](self->mAuthoredDocument creationDateForPath:{path), "descriptionWithFormat:", @"'Y-M:'yyyy-MM"}];

  return [v5 objectForKey:v6];
}

- (id)dayOfYearClusterForAssetAtPath:(id)path
{
  v5 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"dayOfYearClusters"];
  v6 = [-[MPDocument creationDateForPath:](self->mAuthoredDocument creationDateForPath:{path), "descriptionWithFormat:", @"'Y-M-D:'yyyy-MM-dd"}];

  return [v5 objectForKey:v6];
}

- (id)hourOfYearClusterForAssetAtPath:(id)path
{
  v5 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"hourOfYearClusters"];
  v6 = [-[MPDocument creationDateForPath:](self->mAuthoredDocument creationDateForPath:{path), "descriptionWithFormat:", @"'Y-M-D-H:'yyyy-MM-dd-HH"}];

  return [v5 objectForKey:v6];
}

- (id)minuteOfYearClusterForAssetAtPath:(id)path
{
  v5 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"minuteOfYearClusters"];
  v6 = [-[MPDocument creationDateForPath:](self->mAuthoredDocument creationDateForPath:{path), "descriptionWithFormat:", @"'Y-M-D-H-M:'yyyy-MM-dd-HH-mm"}];

  return [v5 objectForKey:v6];
}

- (id)roundedFiveMinuteOfYearClusterForAssetAtPath:(id)path
{
  v5 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"roundedFiveMinuteOfYearClusters"];
  v6 = [objc_msgSend(-[MPDocument creationDateForPath:](self->mAuthoredDocument creationDateForPath:{path), "roundMinuteToNearstFive"), "descriptionWithFormat:", @"'Y-M-D-H-r5M:'yyyy-MM-dd-HH-mm"}];

  return [v5 objectForKey:v6];
}

- (id)roundedFifteenMinuteOfYearClusterForAssetAtPath:(id)path
{
  v5 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"roundedFifteenMinuteOfYearClusters"];
  v6 = [objc_msgSend(-[MPDocument creationDateForPath:](self->mAuthoredDocument creationDateForPath:{path), "roundMinuteToNearstFifteen"), "descriptionWithFormat:", @"'Y-M-D-H-r15M:'yyyy-MM-dd-HH-mm"}];

  return [v5 objectForKey:v6];
}

- (void)addPaths:(id)paths toUserDefinedCluster:(id)cluster
{
  v7 = [paths count];
  if (cluster && v7)
  {
    v8 = [(NSMutableDictionary *)self->mSlideClusters objectForKey:@"userDefinedClusters"];
    if (!v8)
    {
      v8 = +[NSMutableDictionary dictionary];
      [(NSMutableDictionary *)self->mSlideClusters setObject:v8 forKey:@"userDefinedClusters"];
    }

    v9 = [v8 objectForKey:cluster];
    if (!v9)
    {
      v9 = objc_alloc_init(MPCluster);
      [v8 setObject:v9 forKey:cluster];
      [(MPCluster *)v9 setRating:10.0];
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [paths countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(paths);
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

        v11 = [paths countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }
}

- (void)createLocationClustersForPaths:(id)paths
{
  v21 = +[NSMutableDictionary dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [paths countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(paths);
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

        stringByDeletingLastPathComponent = &stru_1AC858;
        if (!v11)
        {
          stringByDeletingLastPathComponent = [&stru_1AC858 stringByAppendingPathComponent:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@:%@", v9, v10)}];
        }

        v13 = [(MPDocument *)self->mAuthoredDocument placeForPath:v8];
        if (v13)
        {
          stringByDeletingLastPathComponent = [(__CFString *)stringByDeletingLastPathComponent stringByAppendingPathComponent:v13];
        }

        v14 = [(MPDocument *)self->mAuthoredDocument cityForPath:v8];
        if (v14)
        {
          stringByDeletingLastPathComponent = [(__CFString *)stringByDeletingLastPathComponent stringByAppendingPathComponent:v14];
        }

        v15 = [(MPDocument *)self->mAuthoredDocument stateForPath:v8];
        if (v15)
        {
          stringByDeletingLastPathComponent = [(__CFString *)stringByDeletingLastPathComponent stringByAppendingPathComponent:v15];
        }

        v16 = [(MPDocument *)self->mAuthoredDocument countryForPath:v8];
        if (v16)
        {
          stringByDeletingLastPathComponent = [(__CFString *)stringByDeletingLastPathComponent stringByAppendingPathComponent:v16];
        }

        if ([(__CFString *)stringByDeletingLastPathComponent length])
        {
          v17 = v21;
          if ([(__CFString *)stringByDeletingLastPathComponent length])
          {
            v17 = v21;
            do
            {
              lastPathComponent = [(__CFString *)stringByDeletingLastPathComponent lastPathComponent];
              v17 = [v17 objectForKey:lastPathComponent];
              if (!v17)
              {
                [0 setObject:+[NSMutableDictionary dictionary](NSMutableDictionary forKey:{"dictionary"), lastPathComponent}];
                v17 = [0 objectForKey:lastPathComponent];
              }

              stringByDeletingLastPathComponent = [(__CFString *)stringByDeletingLastPathComponent stringByDeletingLastPathComponent];
            }

            while ([(__CFString *)stringByDeletingLastPathComponent length]);
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

      v5 = [paths countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }
}

- (id)orderedAndPrioritizedSlideClusters
{
  prioritizedSlideClustersDictionary = [(MPClusterController *)self prioritizedSlideClustersDictionary];
  allKeys = [prioritizedSlideClustersDictionary allKeys];
  v5 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        [v10 floatValue];
        if (self->mMinimumRequiredClusterRating <= v11)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
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
      [v13 addObjectsFromArray:{objc_msgSend(prioritizedSlideClustersDictionary, "objectForKey:", objc_msgSend(v12, "objectAtIndex:", v14--))}];
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
  yearClusters = [(MPClusterController *)self yearClusters];
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v5 = [yearClusters countByEnumeratingWithState:&v155 objects:v169 count:16];
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
          objc_enumerationMutation(yearClusters);
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

      v6 = [yearClusters countByEnumeratingWithState:&v155 objects:v169 count:16];
    }

    while (v6);
  }

  monthClusters = [(MPClusterController *)self monthClusters];
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v15 = [monthClusters countByEnumeratingWithState:&v151 objects:v168 count:16];
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
          objc_enumerationMutation(monthClusters);
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

      v16 = [monthClusters countByEnumeratingWithState:&v151 objects:v168 count:16];
    }

    while (v16);
  }

  monthOfYearClusters = [(MPClusterController *)self monthOfYearClusters];
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v25 = [monthOfYearClusters countByEnumeratingWithState:&v147 objects:v167 count:16];
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
          objc_enumerationMutation(monthOfYearClusters);
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

      v26 = [monthOfYearClusters countByEnumeratingWithState:&v147 objects:v167 count:16];
    }

    while (v26);
  }

  dayOfYearClusters = [(MPClusterController *)self dayOfYearClusters];
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v35 = [dayOfYearClusters countByEnumeratingWithState:&v143 objects:v166 count:16];
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
          objc_enumerationMutation(dayOfYearClusters);
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

      v36 = [dayOfYearClusters countByEnumeratingWithState:&v143 objects:v166 count:16];
    }

    while (v36);
  }

  hourOfYearClusters = [(MPClusterController *)self hourOfYearClusters];
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v45 = [hourOfYearClusters countByEnumeratingWithState:&v139 objects:v165 count:16];
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
          objc_enumerationMutation(hourOfYearClusters);
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

      v46 = [hourOfYearClusters countByEnumeratingWithState:&v139 objects:v165 count:16];
    }

    while (v46);
  }

  minuteOfYearClusters = [(MPClusterController *)self minuteOfYearClusters];
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v55 = [minuteOfYearClusters countByEnumeratingWithState:&v135 objects:v164 count:16];
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
          objc_enumerationMutation(minuteOfYearClusters);
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

      v56 = [minuteOfYearClusters countByEnumeratingWithState:&v135 objects:v164 count:16];
    }

    while (v56);
  }

  roundedFiveMinuteOfYearClusters = [(MPClusterController *)self roundedFiveMinuteOfYearClusters];
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v65 = [roundedFiveMinuteOfYearClusters countByEnumeratingWithState:&v131 objects:v163 count:16];
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
          objc_enumerationMutation(roundedFiveMinuteOfYearClusters);
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

      v66 = [roundedFiveMinuteOfYearClusters countByEnumeratingWithState:&v131 objects:v163 count:16];
    }

    while (v66);
  }

  roundedFifteenMinuteOfYearClusters = [(MPClusterController *)self roundedFifteenMinuteOfYearClusters];
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v75 = [roundedFifteenMinuteOfYearClusters countByEnumeratingWithState:&v127 objects:v162 count:16];
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
          objc_enumerationMutation(roundedFifteenMinuteOfYearClusters);
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

      v76 = [roundedFifteenMinuteOfYearClusters countByEnumeratingWithState:&v127 objects:v162 count:16];
    }

    while (v76);
  }

  keywordClusters = [(MPClusterController *)self keywordClusters];
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v85 = [keywordClusters countByEnumeratingWithState:&v123 objects:v161 count:16];
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
          objc_enumerationMutation(keywordClusters);
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

      v86 = [keywordClusters countByEnumeratingWithState:&v123 objects:v161 count:16];
    }

    while (v86);
  }

  locationClusters = [(MPClusterController *)self locationClusters];
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v95 = [locationClusters countByEnumeratingWithState:&v119 objects:v160 count:16];
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
          objc_enumerationMutation(locationClusters);
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

      v96 = [locationClusters countByEnumeratingWithState:&v119 objects:v160 count:16];
    }

    while (v96);
  }

  userProvidedClusters = [(MPClusterController *)self userProvidedClusters];
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v105 = [userProvidedClusters countByEnumeratingWithState:&v115 objects:v159 count:16];
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
          objc_enumerationMutation(userProvidedClusters);
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

      v106 = [userProvidedClusters countByEnumeratingWithState:&v115 objects:v159 count:16];
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
  yearClusters = [(MPClusterController *)self yearClusters];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [yearClusters countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(yearClusters);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        [objc_msgSend(v8 "name")];
        v5 += [v8 slideCount];
      }

      v4 = [yearClusters countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
    v9 = v5;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [yearClusters count];
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
  v12 = [yearClusters countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(yearClusters);
        }

        v16 = *(*(&v19 + 1) + 8 * j);
        slideCount = [v16 slideCount];
        v18 = 0.0;
        if (slideCount >= 2)
        {
          v18 = (1.0 - [v16 slideCount] / v9) * 5.0;
        }

        [v16 setRating:v18 + v11 * 5.0];
      }

      v13 = [yearClusters countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }
}

- (void)updateRatingsForMonthClusters
{
  monthClusters = [(MPClusterController *)self monthClusters];
  v3 = [monthClusters count];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [monthClusters countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(monthClusters);
        }

        v6 += [*(*(&v22 + 1) + 8 * i) slideCount];
      }

      v5 = [monthClusters countByEnumeratingWithState:&v22 objects:v27 count:16];
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
  v11 = [monthClusters countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(monthClusters);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        slideCount = [v15 slideCount];
        v17 = 0.0;
        if (slideCount >= 2)
        {
          v17 = (1.0 - [v15 slideCount] / v9) * 5.0;
        }

        [v15 setRating:v17 + v10 * 5.0];
      }

      v12 = [monthClusters countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }
}

- (void)updateRatingsForMonthOfYearClusters
{
  monthOfYearClusters = [(MPClusterController *)self monthOfYearClusters];
  v3 = [monthOfYearClusters count];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [monthOfYearClusters countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(monthOfYearClusters);
        }

        v6 += [*(*(&v22 + 1) + 8 * i) slideCount];
      }

      v5 = [monthOfYearClusters countByEnumeratingWithState:&v22 objects:v27 count:16];
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
  v11 = [monthOfYearClusters countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(monthOfYearClusters);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        slideCount = [v15 slideCount];
        v17 = 0.0;
        if (slideCount >= 2)
        {
          v17 = (1.0 - [v15 slideCount] / v9) * 5.0;
        }

        [v15 setRating:v17 + v10 * 5.0];
      }

      v12 = [monthOfYearClusters countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }
}

- (void)updateRatingsForDayOfYearClusters
{
  dayOfYearClusters = [(MPClusterController *)self dayOfYearClusters];
  v3 = [dayOfYearClusters count];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [dayOfYearClusters countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(dayOfYearClusters);
        }

        v6 += [*(*(&v22 + 1) + 8 * i) slideCount];
      }

      v5 = [dayOfYearClusters countByEnumeratingWithState:&v22 objects:v27 count:16];
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
  v11 = [dayOfYearClusters countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(dayOfYearClusters);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        slideCount = [v15 slideCount];
        v17 = 0.0;
        if (slideCount >= 2)
        {
          v17 = (1.0 - [v15 slideCount] / v9) * 5.0;
        }

        [v15 setRating:v17 + v10 * 5.0];
      }

      v12 = [dayOfYearClusters countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }
}

- (void)updateRatingsForHourOfYearClusters
{
  [(NSDate *)self->mNewestSlideTimestamp timeIntervalSinceDate:self->mOldestSlideTimestamp];
  v4 = v3;
  hourOfYearClusters = [(MPClusterController *)self hourOfYearClusters];
  v6 = [hourOfYearClusters count];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [hourOfYearClusters countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(hourOfYearClusters);
        }

        v9 += [*(*(&v26 + 1) + 8 * i) slideCount];
      }

      v8 = [hourOfYearClusters countByEnumeratingWithState:&v26 objects:v31 count:16];
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
  v13 = [hourOfYearClusters countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(hourOfYearClusters);
        }

        v18 = *(*(&v22 + 1) + 8 * j);
        slideCount = [v18 slideCount];
        v20 = 0.0;
        if (slideCount >= 2)
        {
          slideCount2 = [v18 slideCount];
          v20 = 1.0 - slideCount2 / v12 + 1.0 - slideCount2 / v12;
        }

        [v18 setRating:v20 + v15 * 2.0];
      }

      v14 = [hourOfYearClusters countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }
}

- (void)updateRatingsForMinuteOfYearClusters
{
  minuteOfYearClusters = [(MPClusterController *)self minuteOfYearClusters];
  v3 = [minuteOfYearClusters count];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [minuteOfYearClusters countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(minuteOfYearClusters);
        }

        v6 += [*(*(&v22 + 1) + 8 * i) slideCount];
      }

      v5 = [minuteOfYearClusters countByEnumeratingWithState:&v22 objects:v27 count:16];
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
  v11 = [minuteOfYearClusters countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(minuteOfYearClusters);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        slideCount = [v15 slideCount];
        v17 = 0.0;
        if (slideCount >= 2)
        {
          v17 = (1.0 - [v15 slideCount] / v9) * 10.0;
        }

        [v15 setRating:v17 + v10 * 10.0];
      }

      v12 = [minuteOfYearClusters countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }
}

- (void)updateRatingsForRoundedFiveMinuteOfYearClusters
{
  roundedFiveMinuteOfYearClusters = [(MPClusterController *)self roundedFiveMinuteOfYearClusters];
  v3 = [roundedFiveMinuteOfYearClusters count];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [roundedFiveMinuteOfYearClusters countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(roundedFiveMinuteOfYearClusters);
        }

        v6 += [*(*(&v22 + 1) + 8 * i) slideCount];
      }

      v5 = [roundedFiveMinuteOfYearClusters countByEnumeratingWithState:&v22 objects:v27 count:16];
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
  v11 = [roundedFiveMinuteOfYearClusters countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(roundedFiveMinuteOfYearClusters);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        slideCount = [v15 slideCount];
        v17 = 0.0;
        if (slideCount >= 2)
        {
          v17 = (1.0 - [v15 slideCount] / v9) * 10.0;
        }

        [v15 setRating:v17 + v10 * 10.0];
      }

      v12 = [roundedFiveMinuteOfYearClusters countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }
}

- (void)updateRatingsForRoundedFifteenMinuteOfYearClusters
{
  roundedFifteenMinuteOfYearClusters = [(MPClusterController *)self roundedFifteenMinuteOfYearClusters];
  v3 = [roundedFifteenMinuteOfYearClusters count];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [roundedFifteenMinuteOfYearClusters countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(roundedFifteenMinuteOfYearClusters);
        }

        v6 += [*(*(&v22 + 1) + 8 * i) slideCount];
      }

      v5 = [roundedFifteenMinuteOfYearClusters countByEnumeratingWithState:&v22 objects:v27 count:16];
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
  v11 = [roundedFifteenMinuteOfYearClusters countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(roundedFifteenMinuteOfYearClusters);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        slideCount = [v15 slideCount];
        v17 = 0.0;
        if (slideCount >= 2)
        {
          v17 = (1.0 - [v15 slideCount] / v9) * 10.0;
        }

        [v15 setRating:v17 + v10 * 10.0];
      }

      v12 = [roundedFifteenMinuteOfYearClusters countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }
}

- (void)updateRatingsForKeywordClusters
{
  keywordClusters = [(MPClusterController *)self keywordClusters];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [keywordClusters countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(keywordClusters);
        }

        [*(*(&v7 + 1) + 8 * v6) setRating:7.5];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [keywordClusters countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)updateRatingsForLocationClusters
{
  locationClusters = [(MPClusterController *)self locationClusters];
  v3 = [locationClusters count];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [locationClusters countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(locationClusters);
        }

        v6 += [*(*(&v22 + 1) + 8 * i) slideCount];
      }

      v5 = [locationClusters countByEnumeratingWithState:&v22 objects:v27 count:16];
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
  v11 = [locationClusters countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(locationClusters);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        slideCount = [v15 slideCount];
        v17 = 0.0;
        if (slideCount >= 2)
        {
          v17 = (1.0 - [v15 slideCount] / v9) * 5.0;
        }

        [v15 setRating:v17 + v10 * 5.0];
      }

      v12 = [locationClusters countByEnumeratingWithState:&v18 objects:v26 count:16];
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
  selfCopy = self;
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  v233 = 0u;
  yearClusters = [(MPClusterController *)self yearClusters];
  v4 = [yearClusters countByEnumeratingWithState:&v230 objects:v253 count:16];
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
          objc_enumerationMutation(yearClusters);
        }

        v8 = *(*(&v230 + 1) + 8 * i);
        name = [v8 name];
        usageCountDescription = [v8 usageCountDescription];
        [v8 rating];
        NSLog(@"cluster[%@]: usageCount = (%@), rating = (%.2f), slide count = %d", name, usageCountDescription, v11, [v8 slideCount]);
        v229 = 0u;
        v228 = 0u;
        v227 = 0u;
        v226 = 0u;
        allSlides = [v8 allSlides];
        v13 = [allSlides countByEnumeratingWithState:&v226 objects:v252 count:16];
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
                objc_enumerationMutation(allSlides);
              }

              NSLog(@"             slide[%d]:  %@", v15, [objc_msgSend(*(*(&v226 + 1) + 8 * j) "path")]);
              v15 = (v15 + 1);
            }

            v14 = [allSlides countByEnumeratingWithState:&v226 objects:v252 count:16];
          }

          while (v14);
        }
      }

      v5 = [yearClusters countByEnumeratingWithState:&v230 objects:v253 count:16];
    }

    while (v5);
  }

  NSLog(@"Month clusters:");
  NSLog(@"---------------");
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  monthClusters = [(MPClusterController *)selfCopy monthClusters];
  v19 = [monthClusters countByEnumeratingWithState:&v222 objects:v251 count:16];
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
          objc_enumerationMutation(monthClusters);
        }

        v23 = *(*(&v222 + 1) + 8 * k);
        name2 = [v23 name];
        usageCountDescription2 = [v23 usageCountDescription];
        [v23 rating];
        NSLog(@"cluster[%@]: usageCount = (%@), rating = (%.2f), slide count = %d", name2, usageCountDescription2, v26, [v23 slideCount]);
        v221 = 0u;
        v220 = 0u;
        v219 = 0u;
        v218 = 0u;
        allSlides2 = [v23 allSlides];
        v28 = [allSlides2 countByEnumeratingWithState:&v218 objects:v250 count:16];
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
                objc_enumerationMutation(allSlides2);
              }

              NSLog(@"             slide[%d]:  %@", v30, [objc_msgSend(*(*(&v218 + 1) + 8 * m) "path")]);
              v30 = (v30 + 1);
            }

            v29 = [allSlides2 countByEnumeratingWithState:&v218 objects:v250 count:16];
          }

          while (v29);
        }
      }

      v20 = [monthClusters countByEnumeratingWithState:&v222 objects:v251 count:16];
    }

    while (v20);
  }

  NSLog(@"MonthOfYear clusters:");
  NSLog(@"---------------------");
  v214 = 0u;
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  monthOfYearClusters = [(MPClusterController *)selfCopy monthOfYearClusters];
  v34 = [monthOfYearClusters countByEnumeratingWithState:&v214 objects:v249 count:16];
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
          objc_enumerationMutation(monthOfYearClusters);
        }

        v38 = *(*(&v214 + 1) + 8 * n);
        name3 = [v38 name];
        usageCountDescription3 = [v38 usageCountDescription];
        [v38 rating];
        NSLog(@"cluster[%@]: usageCount = (%@), rating = (%.2f), slide count = %d", name3, usageCountDescription3, v41, [v38 slideCount]);
        v212 = 0u;
        v213 = 0u;
        v210 = 0u;
        v211 = 0u;
        allSlides3 = [v38 allSlides];
        v43 = [allSlides3 countByEnumeratingWithState:&v210 objects:v248 count:16];
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
                objc_enumerationMutation(allSlides3);
              }

              NSLog(@"             slide[%d]:  %@", v45, [objc_msgSend(*(*(&v210 + 1) + 8 * ii) "path")]);
              v45 = (v45 + 1);
            }

            v44 = [allSlides3 countByEnumeratingWithState:&v210 objects:v248 count:16];
          }

          while (v44);
        }
      }

      v35 = [monthOfYearClusters countByEnumeratingWithState:&v214 objects:v249 count:16];
    }

    while (v35);
  }

  NSLog(@"DayOfYear clusters:");
  NSLog(@"-------------------");
  v206 = 0u;
  v207 = 0u;
  v208 = 0u;
  v209 = 0u;
  dayOfYearClusters = [(MPClusterController *)selfCopy dayOfYearClusters];
  v49 = [dayOfYearClusters countByEnumeratingWithState:&v206 objects:v247 count:16];
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
          objc_enumerationMutation(dayOfYearClusters);
        }

        v53 = *(*(&v206 + 1) + 8 * jj);
        name4 = [v53 name];
        usageCountDescription4 = [v53 usageCountDescription];
        [v53 rating];
        NSLog(@"cluster[%@]: usageCount = (%@), rating = (%.2f), slide count = %d", name4, usageCountDescription4, v56, [v53 slideCount]);
        v204 = 0u;
        v205 = 0u;
        v202 = 0u;
        v203 = 0u;
        allSlides4 = [v53 allSlides];
        v58 = [allSlides4 countByEnumeratingWithState:&v202 objects:v246 count:16];
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
                objc_enumerationMutation(allSlides4);
              }

              NSLog(@"             slide[%d]:  %@", v60, [objc_msgSend(*(*(&v202 + 1) + 8 * kk) "path")]);
              v60 = (v60 + 1);
            }

            v59 = [allSlides4 countByEnumeratingWithState:&v202 objects:v246 count:16];
          }

          while (v59);
        }
      }

      v50 = [dayOfYearClusters countByEnumeratingWithState:&v206 objects:v247 count:16];
    }

    while (v50);
  }

  NSLog(@"HourOfYear clusters:");
  NSLog(@"--------------------");
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  hourOfYearClusters = [(MPClusterController *)selfCopy hourOfYearClusters];
  v64 = [hourOfYearClusters countByEnumeratingWithState:&v198 objects:v245 count:16];
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
          objc_enumerationMutation(hourOfYearClusters);
        }

        v68 = *(*(&v198 + 1) + 8 * mm);
        name5 = [v68 name];
        usageCountDescription5 = [v68 usageCountDescription];
        [v68 rating];
        NSLog(@"cluster[%@]: usageCount = (%@), rating = (%.2f), slide count = %d", name5, usageCountDescription5, v71, [v68 slideCount]);
        v196 = 0u;
        v197 = 0u;
        v194 = 0u;
        v195 = 0u;
        allSlides5 = [v68 allSlides];
        v73 = [allSlides5 countByEnumeratingWithState:&v194 objects:v244 count:16];
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
                objc_enumerationMutation(allSlides5);
              }

              NSLog(@"             slide[%d]:  %@", v75, [objc_msgSend(*(*(&v194 + 1) + 8 * nn) "path")]);
              v75 = (v75 + 1);
            }

            v74 = [allSlides5 countByEnumeratingWithState:&v194 objects:v244 count:16];
          }

          while (v74);
        }
      }

      v65 = [hourOfYearClusters countByEnumeratingWithState:&v198 objects:v245 count:16];
    }

    while (v65);
  }

  NSLog(@"MinuteOfYear clusters:");
  NSLog(@"----------------------");
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  minuteOfYearClusters = [(MPClusterController *)selfCopy minuteOfYearClusters];
  v79 = [minuteOfYearClusters countByEnumeratingWithState:&v190 objects:v243 count:16];
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
          objc_enumerationMutation(minuteOfYearClusters);
        }

        v83 = *(*(&v190 + 1) + 8 * i1);
        name6 = [v83 name];
        usageCountDescription6 = [v83 usageCountDescription];
        [v83 rating];
        NSLog(@"cluster[%@]: usageCount = (%@), rating = (%.2f), slide count = %d", name6, usageCountDescription6, v86, [v83 slideCount]);
        v188 = 0u;
        v189 = 0u;
        v186 = 0u;
        v187 = 0u;
        allSlides6 = [v83 allSlides];
        v88 = [allSlides6 countByEnumeratingWithState:&v186 objects:v242 count:16];
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
                objc_enumerationMutation(allSlides6);
              }

              NSLog(@"             slide[%d]:  %@", v90, [objc_msgSend(*(*(&v186 + 1) + 8 * i2) "path")]);
              v90 = (v90 + 1);
            }

            v89 = [allSlides6 countByEnumeratingWithState:&v186 objects:v242 count:16];
          }

          while (v89);
        }
      }

      v80 = [minuteOfYearClusters countByEnumeratingWithState:&v190 objects:v243 count:16];
    }

    while (v80);
  }

  NSLog(@"RoundedFiveMinuteOfYear clusters:");
  NSLog(@"----------------------");
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  roundedFiveMinuteOfYearClusters = [(MPClusterController *)selfCopy roundedFiveMinuteOfYearClusters];
  v94 = [roundedFiveMinuteOfYearClusters countByEnumeratingWithState:&v182 objects:v241 count:16];
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
          objc_enumerationMutation(roundedFiveMinuteOfYearClusters);
        }

        v98 = *(*(&v182 + 1) + 8 * i3);
        name7 = [v98 name];
        usageCountDescription7 = [v98 usageCountDescription];
        [v98 rating];
        NSLog(@"cluster[%@]: usageCount = (%@), rating = (%.2f), slide count = %d", name7, usageCountDescription7, v101, [v98 slideCount]);
        v180 = 0u;
        v181 = 0u;
        v178 = 0u;
        v179 = 0u;
        allSlides7 = [v98 allSlides];
        v103 = [allSlides7 countByEnumeratingWithState:&v178 objects:v240 count:16];
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
                objc_enumerationMutation(allSlides7);
              }

              NSLog(@"             slide[%d]:  %@", v105, [objc_msgSend(*(*(&v178 + 1) + 8 * i4) "path")]);
              v105 = (v105 + 1);
            }

            v104 = [allSlides7 countByEnumeratingWithState:&v178 objects:v240 count:16];
          }

          while (v104);
        }
      }

      v95 = [roundedFiveMinuteOfYearClusters countByEnumeratingWithState:&v182 objects:v241 count:16];
    }

    while (v95);
  }

  NSLog(@"RoundedFifteenMinuteOfYear clusters:");
  NSLog(@"----------------------");
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  roundedFifteenMinuteOfYearClusters = [(MPClusterController *)selfCopy roundedFifteenMinuteOfYearClusters];
  v109 = [roundedFifteenMinuteOfYearClusters countByEnumeratingWithState:&v174 objects:v239 count:16];
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
          objc_enumerationMutation(roundedFifteenMinuteOfYearClusters);
        }

        v113 = *(*(&v174 + 1) + 8 * i5);
        name8 = [v113 name];
        usageCountDescription8 = [v113 usageCountDescription];
        [v113 rating];
        NSLog(@"cluster[%@]: usageCount = (%@), rating = (%.2f), slide count = %d", name8, usageCountDescription8, v116, [v113 slideCount]);
        v172 = 0u;
        v173 = 0u;
        v170 = 0u;
        v171 = 0u;
        allSlides8 = [v113 allSlides];
        v118 = [allSlides8 countByEnumeratingWithState:&v170 objects:v238 count:16];
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
                objc_enumerationMutation(allSlides8);
              }

              NSLog(@"             slide[%d]:  %@", v120, [objc_msgSend(*(*(&v170 + 1) + 8 * i6) "path")]);
              v120 = (v120 + 1);
            }

            v119 = [allSlides8 countByEnumeratingWithState:&v170 objects:v238 count:16];
          }

          while (v119);
        }
      }

      v110 = [roundedFifteenMinuteOfYearClusters countByEnumeratingWithState:&v174 objects:v239 count:16];
    }

    while (v110);
  }

  NSLog(@"Keyword clusters:");
  NSLog(@"-----------------");
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  keywordClusters = [(MPClusterController *)selfCopy keywordClusters];
  v124 = [keywordClusters countByEnumeratingWithState:&v166 objects:v237 count:16];
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
          objc_enumerationMutation(keywordClusters);
        }

        v128 = *(*(&v166 + 1) + 8 * i7);
        name9 = [v128 name];
        usageCountDescription9 = [v128 usageCountDescription];
        [v128 rating];
        NSLog(@"cluster[%@]: usageCount = (%@), rating = (%.2f), slide count = %d", name9, usageCountDescription9, v131, [v128 slideCount]);
        v164 = 0u;
        v165 = 0u;
        v162 = 0u;
        v163 = 0u;
        allSlides9 = [v128 allSlides];
        v133 = [allSlides9 countByEnumeratingWithState:&v162 objects:v236 count:16];
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
                objc_enumerationMutation(allSlides9);
              }

              NSLog(@"             slide[%d]:  %@", v135, [objc_msgSend(*(*(&v162 + 1) + 8 * i8) "path")]);
              v135 = (v135 + 1);
            }

            v134 = [allSlides9 countByEnumeratingWithState:&v162 objects:v236 count:16];
          }

          while (v134);
        }
      }

      v125 = [keywordClusters countByEnumeratingWithState:&v166 objects:v237 count:16];
    }

    while (v125);
  }

  NSLog(@"Location clusters:");
  NSLog(@"------------------");
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  locationClusters = [(MPClusterController *)selfCopy locationClusters];
  v139 = [locationClusters countByEnumeratingWithState:&v158 objects:v235 count:16];
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
          objc_enumerationMutation(locationClusters);
        }

        v143 = *(*(&v158 + 1) + 8 * i9);
        name10 = [v143 name];
        usageCountDescription10 = [v143 usageCountDescription];
        [v143 rating];
        NSLog(@"cluster[%@]: usageCount = (%@), rating = (%.2f), slide count = %d", name10, usageCountDescription10, v146, [v143 slideCount]);
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        allSlides10 = [v143 allSlides];
        v148 = [allSlides10 countByEnumeratingWithState:&v154 objects:v234 count:16];
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
                objc_enumerationMutation(allSlides10);
              }

              NSLog(@"             slide[%d]:  %@", v150, [objc_msgSend(*(*(&v154 + 1) + 8 * i10) "path")]);
              v150 = (v150 + 1);
            }

            v149 = [allSlides10 countByEnumeratingWithState:&v154 objects:v234 count:16];
          }

          while (v149);
        }
      }

      v140 = [locationClusters countByEnumeratingWithState:&v158 objects:v235 count:16];
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
  allSlidesSortedByUsage = [(MPClusterController *)self allSlidesSortedByUsage];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [allSlidesSortedByUsage countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allSlidesSortedByUsage);
        }

        NSLog(@"slide[%d]: usageCount = (%@), filename = %@", v6, [*(*(&v9 + 1) + 8 * v8) usageCountDescription], objc_msgSend(objc_msgSend(*(*(&v9 + 1) + 8 * v8), "path"), "lastPathComponent"));
        v6 = (v6 + 1);
        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [allSlidesSortedByUsage countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_removeAllSingleSlideClustersForClusterCategory:(id)category
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

  [(NSMutableDictionary *)self->mSlideClusters setObject:v6 forKey:category];
}

@end