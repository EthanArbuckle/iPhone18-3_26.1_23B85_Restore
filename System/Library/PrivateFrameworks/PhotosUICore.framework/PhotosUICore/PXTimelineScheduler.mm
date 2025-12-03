@interface PXTimelineScheduler
- (PXTimelineScheduler)init;
- (PXTimelineScheduler)initWithTimelineDataSource:(id)source;
- (id)_coalesceRepeatedTimelineEntries:(id)entries;
- (id)_findBestAssetsAndRemoveFromSource;
- (id)_findBestContentAndRemoveFromSourceAtDate:(id)date options:(id)options;
- (id)_findBestFeaturedPhotoAndRemoveFromSource;
- (id)_scheduledTimelineEntriesWithOptions:(id)options atDate:(id)date;
- (id)_sortedTimelineEntriesForMemoriesAtDate:(id)date;
- (id)_timelineAtDate:(id)date startOfDayCandidatesIndex:(int64_t)index timelineEntryByBestContentInterval:(id)interval options:(id)options;
- (id)_timelineEntriesFromAssetCollections:(id)collections;
- (id)_timelineEntriesFromAssets:(id)assets;
- (id)_timelineEntryByBestContentIntervalAtDate:(id)date numberOfDays:(int64_t)days options:(id)options;
- (id)scheduledTimelineEntriesWithOptions:(id)options;
- (int64_t)_startOfDayIndexWithOffsetDay:(int64_t)day entriesCount:(int64_t)count perDayLimit:(int64_t)limit options:(id)options;
- (void)_initTimelineEntriesAtDate:(id)date options:(id)options;
@end

@implementation PXTimelineScheduler

- (id)_coalesceRepeatedTimelineEntries:(id)entries
{
  v27 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  firstObject = [entriesCopy firstObject];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = entriesCopy;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        localIdentifier = [firstObject localIdentifier];
        localIdentifier2 = [v11 localIdentifier];
        v14 = [localIdentifier isEqualToString:localIdentifier2];

        if (!v14)
        {
          [v5 addObject:firstObject];
          proactiveCriterion3 = firstObject;
          firstObject = v11;
          goto LABEL_10;
        }

        endTime = [v11 endTime];
        [firstObject setEndTime:endTime];

        proactiveCriterion = [firstObject proactiveCriterion];
        if (proactiveCriterion)
        {
          proactiveCriterion3 = proactiveCriterion;
LABEL_10:

          goto LABEL_11;
        }

        proactiveCriterion2 = [v11 proactiveCriterion];

        if (proactiveCriterion2)
        {
          proactiveCriterion3 = [v11 proactiveCriterion];
          [firstObject setProactiveCriterion:proactiveCriterion3];
          goto LABEL_10;
        }

LABEL_11:
        ++v10;
      }

      while (v8 != v10);
      v19 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v8 = v19;
    }

    while (v19);
  }

  lastObject = [v5 lastObject];

  if (firstObject != lastObject)
  {
    [v5 addObject:firstObject];
  }

  return v5;
}

- (id)_timelineAtDate:(id)date startOfDayCandidatesIndex:(int64_t)index timelineEntryByBestContentInterval:(id)interval options:(id)options
{
  dateCopy = date;
  intervalCopy = interval;
  optionsCopy = options;
  selfCopy = self;
  timelineCandidates = [(PXTimelineScheduler *)self timelineCandidates];
  v40 = [timelineCandidates count];

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v13 = [currentCalendar startOfDayForDate:dateCopy];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v41 = intervalCopy;
  allKeys = [intervalCopy allKeys];
  v16 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v42 = v16;
  v17 = [v16 objectAtIndexedSubscript:0];
  v38 = optionsCopy;
  [optionsCopy timelineEntryDuration];
  v19 = v18;
  v45 = dateCopy;
  v20 = [dateCopy dateByAddingTimeInterval:86400.0];
  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46 = v20;
  if ([v20 compare:distantPast] == 1)
  {
    v44 = 0;
    v21 = 0x1E696A000uLL;
    v22 = v40;
    do
    {
      v23 = [v13 dateByAddingTimeInterval:v19];

      v24 = [objc_alloc(*(v21 + 2944)) initWithStartDate:v13 endDate:v23];
      v25 = [v24 intersectionWithDateInterval:v17];
      [v25 duration];
      if (v26 <= 0.0)
      {
        if ([v45 compare:v23] == -1)
        {
          timelineCandidates2 = [(PXTimelineScheduler *)selfCopy timelineCandidates];
          v35 = [timelineCandidates2 objectAtIndex:index];
          v29 = [v35 copy];

          v22 = v40;
        }

        else
        {
          v29 = 0;
        }

        index = (index + 1) % v22;
        if (!v29)
        {
          goto LABEL_17;
        }
      }

      else
      {
        endDate = [v17 endDate];
        v28 = [v23 laterDate:endDate];

        if ([v45 compare:v28] == -1)
        {
          v30 = [v41 objectForKeyedSubscript:v17];
          v29 = [v30 copy];
        }

        else
        {
          v29 = 0;
        }

        v31 = [v42 count];
        if (v44 + 1 < (v31 - 1))
        {
          v32 = v44 + 1;
        }

        else
        {
          v32 = v31 - 1;
        }

        v44 = v32;
        v33 = [v42 objectAtIndexedSubscript:v32];

        v17 = v33;
        v23 = v28;
        v21 = 0x1E696A000;
        if (!v29)
        {
          goto LABEL_17;
        }
      }

      [v29 setStartTime:v13];
      [v29 setEndTime:v23];
      [v43 addObject:v29];
LABEL_17:
      distantPast = v23;

      v13 = distantPast;
    }

    while ([v46 compare:distantPast] == 1);
  }

  return v43;
}

- (int64_t)_startOfDayIndexWithOffsetDay:(int64_t)day entriesCount:(int64_t)count perDayLimit:(int64_t)limit options:(id)options
{
  optionsCopy = options;
  numberOfTimelines = [optionsCopy numberOfTimelines];
  v11 = 0;
  if (count && limit && numberOfTimelines)
  {
    if (day)
    {
      if (day >= 0)
      {
        dayCopy = day;
      }

      else
      {
        dayCopy = -day;
      }

      v13 = limit % count;
      do
      {
        v13 = (v13 + limit) % count;
        --dayCopy;
      }

      while (dayCopy);
      if (day >= 0)
      {
        day = v13 - limit % count;
      }

      else
      {
        day = limit % count - v13;
      }
    }

    v11 = (([optionsCopy timelineIndex] * count / numberOfTimelines + day) % count + count) % count;
  }

  return v11;
}

- (id)_timelineEntryByBestContentIntervalAtDate:(id)date numberOfDays:(int64_t)days options:(id)options
{
  v61 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  optionsCopy = options;
  [optionsCopy bestContentEntryDuration];
  v10 = v9;
  [optionsCopy timelineEntryDuration];
  v12 = v11;
  if (fmod(v10, v11) != 0.0)
  {
    PXAssertGetLog();
  }

  bestContentStartTimeHours = [optionsCopy bestContentStartTimeHours];
  if ([bestContentStartTimeHours count])
  {
    v47 = optionsCopy;
    v48 = dateCopy;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v46 = bestContentStartTimeHours;
    v14 = bestContentStartTimeHours;
    v15 = [v14 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v57;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v57 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v56 + 1) + 8 * i);
          if ([v19 integerValue] < 0 || objc_msgSend(v19, "integerValue") >= 24)
          {
            PXAssertGetLog();
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v16);
    }

    bestContent = [(PXTimelineScheduler *)self bestContent];
    v21 = [bestContent count];

    v22 = [v14 count];
    if (v21 >= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    daysCopy2 = days;
    v25 = v23 * days;
    days = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v23 * days];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    [currentCalendar startOfDayForDate:v48];
    v50 = v49 = v25;
    if (v25)
    {
      v28 = 0;
      *&v27 = 138412290;
      v44 = v27;
      do
      {
        v55 = v28;
        v29 = v28 / daysCopy2;
        v30 = [v14 objectAtIndexedSubscript:{v28 / daysCopy2, v44}];
        v31 = [v30 integerValue] * 3600.0;
        if (fmod(v31, v12) != 0.0)
        {
          PXAssertGetLog();
        }

        v54 = v30;
        v32 = [v50 dateByAddingTimeInterval:v31];
        v33 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v32 duration:v10];
        bestContent2 = [(PXTimelineScheduler *)self bestContent];
        [bestContent2 objectAtIndexedSubscript:v29];
        v36 = v35 = self;
        v53 = v33;
        [days setObject:v36 forKeyedSubscript:v33];

        v37 = v32;
        v52 = v37;
        v38 = days - 1;
        if (daysCopy2 >= 2)
        {
          do
          {
            v39 = [v37 dateByAddingTimeInterval:86400.0];

            v40 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v39 duration:v10];
            bestContent3 = [(PXTimelineScheduler *)v35 bestContent];
            v42 = [bestContent3 objectAtIndexedSubscript:v29];
            [days setObject:v42 forKeyedSubscript:v40];

            v37 = v39;
            --v38;
          }

          while (v38);
        }

        daysCopy2 = days;
        v28 = v55 + days;
        self = v35;
      }

      while (v55 + days < v49);
    }

    optionsCopy = v47;
    dateCopy = v48;
    bestContentStartTimeHours = v46;
  }

  else
  {
    if ([bestContentStartTimeHours count])
    {
      PXAssertGetLog();
    }

    days = MEMORY[0x1E695E0F8];
  }

  return days;
}

- (id)_timelineEntriesFromAssetCollections:(id)collections
{
  v39 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = collectionsCopy;
  v4 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
    v7 = 0x1E6978000uLL;
    do
    {
      v8 = 0;
      v31 = v5;
      do
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v6;
          v11 = v7;
          timelineDataSource = [(PXTimelineScheduler *)self timelineDataSource];
          keyAssetByFeaturedPhotoLocalIdentifier = [timelineDataSource keyAssetByFeaturedPhotoLocalIdentifier];
          localIdentifier = [v9 localIdentifier];
          v15 = [keyAssetByFeaturedPhotoLocalIdentifier objectForKeyedSubscript:localIdentifier];

          timelineDataSource2 = [(PXTimelineScheduler *)self timelineDataSource];
          suggestedCropByFeaturedPhotoLocalIdentifier = [timelineDataSource2 suggestedCropByFeaturedPhotoLocalIdentifier];
          localIdentifier2 = [v9 localIdentifier];
          v19 = [suggestedCropByFeaturedPhotoLocalIdentifier objectForKeyedSubscript:localIdentifier2];

          timelineDataSource3 = [(PXTimelineScheduler *)self timelineDataSource];
          sourceType = [timelineDataSource3 sourceType];
          v22 = [PXTimelineEntry alloc];
          v23 = v22;
          if (sourceType == 1)
          {
            sourceIdentifier = [timelineDataSource3 sourceIdentifier];
            v25 = [(PXTimelineEntry *)v23 initWithAlbumFeaturedPhoto:v9 localAlbumIdentifier:sourceIdentifier andFeaturedPhotoKeyAsset:v15 suggestedCrop:v19];
          }

          else
          {
            v25 = [(PXTimelineEntry *)v22 initWithFeaturedPhoto:v9 andFeaturedPhotoKeyAsset:v15 suggestedCrop:v19];
          }

          v7 = v11;
          v6 = v10;
          v5 = v31;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_15;
          }

          timelineDataSource4 = [(PXTimelineScheduler *)self timelineDataSource];
          keyAssetByMemoryLocalIdentifier = [timelineDataSource4 keyAssetByMemoryLocalIdentifier];
          localIdentifier3 = [v9 localIdentifier];
          v15 = [keyAssetByMemoryLocalIdentifier objectForKeyedSubscript:localIdentifier3];

          v25 = [[PXTimelineEntry alloc] initWithMemory:v9 andMemoryKeyAsset:v15];
        }

        if (v25)
        {
          [v30 addObject:v25];
        }

LABEL_15:
        ++v8;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v5);
  }

  return v30;
}

- (id)_timelineEntriesFromAssets:(id)assets
{
  v19 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = assetsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [PXTimelineEntry alloc];
        v12 = [(PXTimelineEntry *)v11 initWithAsset:v10 suggestedCrop:0, v14];
        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_sortedTimelineEntriesForMemoriesAtDate:(id)date
{
  v32 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  timelineDataSource = [(PXTimelineScheduler *)self timelineDataSource];
  memories = [timelineDataSource memories];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __63__PXTimelineScheduler__sortedTimelineEntriesForMemoriesAtDate___block_invoke;
  v29[3] = &unk_1E773B910;
  v21 = dateCopy;
  v30 = v21;
  v7 = [memories sortedArrayUsingComparator:v29];
  v22 = memories;
  v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(memories, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        timelineDataSource2 = [(PXTimelineScheduler *)self timelineDataSource];
        keyAssetByMemoryLocalIdentifier = [timelineDataSource2 keyAssetByMemoryLocalIdentifier];
        localIdentifier = [v12 localIdentifier];
        v16 = [keyAssetByMemoryLocalIdentifier objectForKeyedSubscript:localIdentifier];

        v17 = [[PXTimelineEntry alloc] initWithMemory:v12 andMemoryKeyAsset:v16];
        if (v17)
        {
          [v24 addObject:v17];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v9);
  }

  if ([v24 count] == 1)
  {
    firstObject = [v24 firstObject];
    v19 = [firstObject copy];
    [v24 addObject:v19];
  }

  return v24;
}

uint64_t __63__PXTimelineScheduler__sortedTimelineEntriesForMemoriesAtDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v5 relevanceScoreAtDate:*(a1 + 32)];
  v8 = v7;
  [v6 relevanceScoreAtDate:*(a1 + 32)];
  if (v8 == v9)
  {
    v10 = [v6 creationDate];
    v11 = [v5 creationDate];
    v12 = [v10 compare:v11];
  }

  else if (v8 < v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (id)_findBestAssetsAndRemoveFromSource
{
  v6[1] = *MEMORY[0x1E69E9840];
  photoAssetsTimelineEntries = [(PXTimelineScheduler *)self photoAssetsTimelineEntries];
  firstObject = [photoAssetsTimelineEntries firstObject];

  if (firstObject)
  {
    v6[0] = firstObject;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (id)_findBestFeaturedPhotoAndRemoveFromSource
{
  v13[1] = *MEMORY[0x1E69E9840];
  featuredPhotoTimelineEntries = [(PXTimelineScheduler *)self featuredPhotoTimelineEntries];
  firstObject = [featuredPhotoTimelineEntries firstObject];

  if (firstObject)
  {
    memoryTimelineEntries = [(PXTimelineScheduler *)self memoryTimelineEntries];
    v6 = [memoryTimelineEntries count];
    featuredPhotoTimelineEntries2 = [(PXTimelineScheduler *)self featuredPhotoTimelineEntries];
    v8 = [featuredPhotoTimelineEntries2 count] + v6;

    if (v8 >= 0xB)
    {
      featuredPhotoTimelineEntries3 = [(PXTimelineScheduler *)self featuredPhotoTimelineEntries];
      v10 = [featuredPhotoTimelineEntries3 mutableCopy];

      [v10 removeObjectAtIndex:0];
      [(PXTimelineScheduler *)self setFeaturedPhotoTimelineEntries:v10];
    }

    v13[0] = firstObject;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

- (id)_findBestContentAndRemoveFromSourceAtDate:(id)date options:(id)options
{
  v47 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  optionsCopy = options;
  timelineDataSource = [(PXTimelineScheduler *)self timelineDataSource];
  memories = [timelineDataSource memories];
  v10 = [memories count];

  if (v10)
  {
    v11 = [(PXTimelineScheduler *)self _sortedTimelineEntriesForMemoriesAtDate:dateCopy];
    bestContentStartTimeHours = [optionsCopy bestContentStartTimeHours];
    v13 = [bestContentStartTimeHours count];

    v14 = [v11 count];
    if (v13 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    v16 = [v11 subarrayWithRange:{0, v15}];
    v17 = [v16 mutableCopy];

    timelineIndex = [optionsCopy timelineIndex];
    v19 = timelineIndex % [v17 count];
    v20 = PLMemoriesGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = +[PXTimelineSize sizeDescriptionForSizeClass:](PXTimelineSize, "sizeDescriptionForSizeClass:", [optionsCopy timelineForSize]);
      *buf = 138412546;
      v44 = v21;
      v45 = 2048;
      v46 = v19;
      _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEBUG, "[%@] best content rotation: %tu", buf, 0x16u);
    }

    while (v19)
    {
      --v19;
      firstObject = [v17 firstObject];
      [v17 addObject:firstObject];

      [v17 removeObjectAtIndex:0];
    }

    memoryTimelineEntries = [(PXTimelineScheduler *)self memoryTimelineEntries];
    v24 = [memoryTimelineEntries count];
    featuredPhotoTimelineEntries = [(PXTimelineScheduler *)self featuredPhotoTimelineEntries];
    v26 = [featuredPhotoTimelineEntries count] + v24;

    if (v26 < 0xB)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      memoryTimelineEntries2 = [(PXTimelineScheduler *)self memoryTimelineEntries];
      v32 = [memoryTimelineEntries2 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v39;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v39 != v34)
            {
              objc_enumerationMutation(memoryTimelineEntries2);
            }

            v36 = *(*(&v38 + 1) + 8 * i);
            if ([v17 containsObject:v36])
            {
              [v36 setProactiveCriterion:0];
            }
          }

          v33 = [memoryTimelineEntries2 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v33);
      }
    }

    else
    {
      memoryTimelineEntries3 = [(PXTimelineScheduler *)self memoryTimelineEntries];
      memoryTimelineEntries2 = [memoryTimelineEntries3 mutableCopy];

      [memoryTimelineEntries2 removeObjectsInArray:v17];
      [(PXTimelineScheduler *)self setMemoryTimelineEntries:memoryTimelineEntries2];
    }
  }

  else
  {
    timelineDataSource2 = [(PXTimelineScheduler *)self timelineDataSource];
    assets = [timelineDataSource2 assets];
    v31 = [assets count];

    if (v31)
    {
      [(PXTimelineScheduler *)self _findBestAssetsAndRemoveFromSource];
    }

    else
    {
      [(PXTimelineScheduler *)self _findBestFeaturedPhotoAndRemoveFromSource];
    }
    v17 = ;
  }

  return v17;
}

- (id)_scheduledTimelineEntriesWithOptions:(id)options atDate:(id)date
{
  v63 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  dateCopy = date;
  v8 = PLTimelineGetLog();
  v9 = os_signpost_id_make_with_pointer(v8, self);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ScheduleTimeline", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v11 = dateCopy;
  [(PXTimelineScheduler *)self _initTimelineEntriesAtDate:dateCopy options:optionsCopy];
  timelineCandidates = [(PXTimelineScheduler *)self timelineCandidates];
  v13 = [timelineCandidates count];

  if (v13)
  {
    v14 = v13;
    timelineDataSource = [(PXTimelineScheduler *)self timelineDataSource];
    memories = [timelineDataSource memories];
    firstObject = [memories firstObject];
    creationDate = [firstObject creationDate];
    v19 = creationDate;
    v56 = timelineDataSource;
    if (creationDate)
    {
      creationDate3 = creationDate;
    }

    else
    {
      featuredPhotos = [timelineDataSource featuredPhotos];
      firstObject2 = [featuredPhotos firstObject];
      creationDate2 = [firstObject2 creationDate];
      v29 = creationDate2;
      if (creationDate2)
      {
        creationDate3 = creationDate2;
      }

      else
      {
        assets = [timelineDataSource assets];
        firstObject3 = [assets firstObject];
        creationDate3 = [firstObject3 creationDate];
      }

      v11 = dateCopy;
    }

    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v55 = creationDate3;
    v31 = [currentCalendar startOfDayForDate:creationDate3];
    v51 = [currentCalendar startOfDayForDate:v11];
    v53 = v31;
    v32 = [currentCalendar components:16 fromDate:v31 toDate:? options:?];
    v33 = [v32 day];

    v34 = PLMemoriesGetLog();
    v35 = v14;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v58 = v33;
      _os_log_impl(&dword_1A3C1C000, v34, OS_LOG_TYPE_DEBUG, "Timeline - day difference: %ld", buf, 0xCu);
    }

    v36 = [(PXTimelineScheduler *)self _timelineEntryByBestContentIntervalAtDate:v11 numberOfDays:2 options:optionsCopy];
    [optionsCopy bestContentEntryDuration];
    v38 = v37 * [v36 count] * -0.5 + 86400.0;
    [optionsCopy timelineEntryDuration];
    if (fmod(v38, v39) != 0.0)
    {
      PXAssertGetLog();
    }

    [optionsCopy timelineEntryDuration];
    v41 = [(PXTimelineScheduler *)self _startOfDayIndexWithOffsetDay:v33 entriesCount:v35 perDayLimit:(v38 / v40) options:optionsCopy];
    v42 = PLMemoriesGetLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v43 = +[PXTimelineSize sizeDescriptionForSizeClass:](PXTimelineSize, "sizeDescriptionForSizeClass:", [optionsCopy timelineForSize]);
      *buf = 138412802;
      v58 = v43;
      v59 = 2048;
      v60 = v41;
      v61 = 2048;
      v62 = v35;
      _os_log_impl(&dword_1A3C1C000, v42, OS_LOG_TYPE_DEBUG, "Scheduler start of day index for [%@]: %zd, candidates count: %tu", buf, 0x20u);
    }

    v44 = [(PXTimelineScheduler *)self _timelineAtDate:v11 startOfDayCandidatesIndex:v41 timelineEntryByBestContentInterval:v36 options:optionsCopy];
    v25 = [(PXTimelineScheduler *)self _coalesceRepeatedTimelineEntries:v44];
    firstObject4 = [v25 firstObject];
    [firstObject4 setStartTime:v11];

    v46 = PLTimelineGetLog();
    v47 = os_signpost_id_make_with_pointer(v46, self);
    if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v48 = v47;
      if (os_signpost_enabled(v46))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v46, OS_SIGNPOST_INTERVAL_END, v48, "ScheduleTimeline", " enableTelemetry=YES ", buf, 2u);
      }
    }

    v22 = v55;
    v26 = v56;
  }

  else
  {
    v21 = PLMemoriesGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_ERROR, "No timeline candidates", buf, 2u);
    }

    v22 = PLTimelineGetLog();
    v23 = os_signpost_id_make_with_pointer(v22, self);
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v24 = v23;
      if (os_signpost_enabled(v22))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v22, OS_SIGNPOST_INTERVAL_END, v24, "ScheduleTimeline", " enableTelemetry=YES ", buf, 2u);
      }
    }

    v25 = MEMORY[0x1E695E0F0];
    v26 = v22;
  }

  return v25;
}

- (void)_initTimelineEntriesAtDate:(id)date options:(id)options
{
  optionsCopy = options;
  dateCopy = date;
  timelineDataSource = [(PXTimelineScheduler *)self timelineDataSource];
  memories = [timelineDataSource memories];
  v10 = [(PXTimelineScheduler *)self _timelineEntriesFromAssetCollections:memories];
  [(PXTimelineScheduler *)self setMemoryTimelineEntries:v10];

  featuredPhotos = [timelineDataSource featuredPhotos];
  v12 = [(PXTimelineScheduler *)self _timelineEntriesFromAssetCollections:featuredPhotos];
  [(PXTimelineScheduler *)self setFeaturedPhotoTimelineEntries:v12];

  assets = [timelineDataSource assets];
  v14 = [(PXTimelineScheduler *)self _timelineEntriesFromAssets:assets];
  [(PXTimelineScheduler *)self setPhotoAssetsTimelineEntries:v14];

  v15 = [(PXTimelineScheduler *)self _findBestContentAndRemoveFromSourceAtDate:dateCopy options:optionsCopy];

  [(PXTimelineScheduler *)self setBestContent:v15];
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  featuredPhotoTimelineEntries = [(PXTimelineScheduler *)self featuredPhotoTimelineEntries];
  [v16 addObjectsFromArray:featuredPhotoTimelineEntries];

  memoryTimelineEntries = [(PXTimelineScheduler *)self memoryTimelineEntries];
  [v16 addObjectsFromArray:memoryTimelineEntries];

  photoAssetsTimelineEntries = [(PXTimelineScheduler *)self photoAssetsTimelineEntries];
  [v16 addObjectsFromArray:photoAssetsTimelineEntries];

  [(PXTimelineScheduler *)self setTimelineCandidates:v16];
  if ([v16 count])
  {
    bestContent = [(PXTimelineScheduler *)self bestContent];
    v21 = [bestContent count];

    if (!v21)
    {
      PXAssertGetLog();
    }
  }
}

- (id)scheduledTimelineEntriesWithOptions:(id)options
{
  v4 = MEMORY[0x1E695DF00];
  optionsCopy = options;
  date = [v4 date];
  v7 = [(PXTimelineScheduler *)self _scheduledTimelineEntriesWithOptions:optionsCopy atDate:date];

  return v7;
}

- (PXTimelineScheduler)initWithTimelineDataSource:(id)source
{
  sourceCopy = source;
  v8.receiver = self;
  v8.super_class = PXTimelineScheduler;
  v5 = [(PXTimelineScheduler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PXTimelineScheduler *)v5 setTimelineDataSource:sourceCopy];
  }

  return v6;
}

- (PXTimelineScheduler)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXTimelineScheduler.m" lineNumber:42 description:{@"%s is not available as initializer", "-[PXTimelineScheduler init]"}];

  abort();
}

@end