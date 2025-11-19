@interface PXTimelineScheduler
- (PXTimelineScheduler)init;
- (PXTimelineScheduler)initWithTimelineDataSource:(id)a3;
- (id)_coalesceRepeatedTimelineEntries:(id)a3;
- (id)_findBestAssetsAndRemoveFromSource;
- (id)_findBestContentAndRemoveFromSourceAtDate:(id)a3 options:(id)a4;
- (id)_findBestFeaturedPhotoAndRemoveFromSource;
- (id)_scheduledTimelineEntriesWithOptions:(id)a3 atDate:(id)a4;
- (id)_sortedTimelineEntriesForMemoriesAtDate:(id)a3;
- (id)_timelineAtDate:(id)a3 startOfDayCandidatesIndex:(int64_t)a4 timelineEntryByBestContentInterval:(id)a5 options:(id)a6;
- (id)_timelineEntriesFromAssetCollections:(id)a3;
- (id)_timelineEntriesFromAssets:(id)a3;
- (id)_timelineEntryByBestContentIntervalAtDate:(id)a3 numberOfDays:(int64_t)a4 options:(id)a5;
- (id)scheduledTimelineEntriesWithOptions:(id)a3;
- (int64_t)_startOfDayIndexWithOffsetDay:(int64_t)a3 entriesCount:(int64_t)a4 perDayLimit:(int64_t)a5 options:(id)a6;
- (void)_initTimelineEntriesAtDate:(id)a3 options:(id)a4;
@end

@implementation PXTimelineScheduler

- (id)_coalesceRepeatedTimelineEntries:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 firstObject];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v3;
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
        v12 = [v4 localIdentifier];
        v13 = [v11 localIdentifier];
        v14 = [v12 isEqualToString:v13];

        if (!v14)
        {
          [v5 addObject:v4];
          v17 = v4;
          v4 = v11;
          goto LABEL_10;
        }

        v15 = [v11 endTime];
        [v4 setEndTime:v15];

        v16 = [v4 proactiveCriterion];
        if (v16)
        {
          v17 = v16;
LABEL_10:

          goto LABEL_11;
        }

        v18 = [v11 proactiveCriterion];

        if (v18)
        {
          v17 = [v11 proactiveCriterion];
          [v4 setProactiveCriterion:v17];
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

  v20 = [v5 lastObject];

  if (v4 != v20)
  {
    [v5 addObject:v4];
  }

  return v5;
}

- (id)_timelineAtDate:(id)a3 startOfDayCandidatesIndex:(int64_t)a4 timelineEntryByBestContentInterval:(id)a5 options:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v39 = self;
  v12 = [(PXTimelineScheduler *)self timelineCandidates];
  v40 = [v12 count];

  v37 = [MEMORY[0x1E695DEE8] currentCalendar];
  v13 = [v37 startOfDayForDate:v9];
  v14 = [MEMORY[0x1E695DF00] distantPast];
  v41 = v10;
  v15 = [v10 allKeys];
  v16 = [v15 sortedArrayUsingSelector:sel_compare_];

  v42 = v16;
  v17 = [v16 objectAtIndexedSubscript:0];
  v38 = v11;
  [v11 timelineEntryDuration];
  v19 = v18;
  v45 = v9;
  v20 = [v9 dateByAddingTimeInterval:86400.0];
  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46 = v20;
  if ([v20 compare:v14] == 1)
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
          v34 = [(PXTimelineScheduler *)v39 timelineCandidates];
          v35 = [v34 objectAtIndex:a4];
          v29 = [v35 copy];

          v22 = v40;
        }

        else
        {
          v29 = 0;
        }

        a4 = (a4 + 1) % v22;
        if (!v29)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v27 = [v17 endDate];
        v28 = [v23 laterDate:v27];

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
      v14 = v23;

      v13 = v14;
    }

    while ([v46 compare:v14] == 1);
  }

  return v43;
}

- (int64_t)_startOfDayIndexWithOffsetDay:(int64_t)a3 entriesCount:(int64_t)a4 perDayLimit:(int64_t)a5 options:(id)a6
{
  v9 = a6;
  v10 = [v9 numberOfTimelines];
  v11 = 0;
  if (a4 && a5 && v10)
  {
    if (a3)
    {
      if (a3 >= 0)
      {
        v12 = a3;
      }

      else
      {
        v12 = -a3;
      }

      v13 = a5 % a4;
      do
      {
        v13 = (v13 + a5) % a4;
        --v12;
      }

      while (v12);
      if (a3 >= 0)
      {
        a3 = v13 - a5 % a4;
      }

      else
      {
        a3 = a5 % a4 - v13;
      }
    }

    v11 = (([v9 timelineIndex] * a4 / v10 + a3) % a4 + a4) % a4;
  }

  return v11;
}

- (id)_timelineEntryByBestContentIntervalAtDate:(id)a3 numberOfDays:(int64_t)a4 options:(id)a5
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  [v8 bestContentEntryDuration];
  v10 = v9;
  [v8 timelineEntryDuration];
  v12 = v11;
  if (fmod(v10, v11) != 0.0)
  {
    PXAssertGetLog();
  }

  v13 = [v8 bestContentStartTimeHours];
  if ([v13 count])
  {
    v47 = v8;
    v48 = v7;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v46 = v13;
    v14 = v13;
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

    v20 = [(PXTimelineScheduler *)self bestContent];
    v21 = [v20 count];

    v22 = [v14 count];
    if (v21 >= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    v24 = a4;
    v25 = v23 * a4;
    v26 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v23 * a4];
    v45 = [MEMORY[0x1E695DEE8] currentCalendar];
    [v45 startOfDayForDate:v48];
    v50 = v49 = v25;
    if (v25)
    {
      v28 = 0;
      *&v27 = 138412290;
      v44 = v27;
      do
      {
        v55 = v28;
        v29 = v28 / v24;
        v30 = [v14 objectAtIndexedSubscript:{v28 / v24, v44}];
        v31 = [v30 integerValue] * 3600.0;
        if (fmod(v31, v12) != 0.0)
        {
          PXAssertGetLog();
        }

        v54 = v30;
        v32 = [v50 dateByAddingTimeInterval:v31];
        v33 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v32 duration:v10];
        v34 = [(PXTimelineScheduler *)self bestContent];
        [v34 objectAtIndexedSubscript:v29];
        v36 = v35 = self;
        v53 = v33;
        [v26 setObject:v36 forKeyedSubscript:v33];

        v37 = v32;
        v52 = v37;
        v38 = a4 - 1;
        if (v24 >= 2)
        {
          do
          {
            v39 = [v37 dateByAddingTimeInterval:86400.0];

            v40 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v39 duration:v10];
            v41 = [(PXTimelineScheduler *)v35 bestContent];
            v42 = [v41 objectAtIndexedSubscript:v29];
            [v26 setObject:v42 forKeyedSubscript:v40];

            v37 = v39;
            --v38;
          }

          while (v38);
        }

        v24 = a4;
        v28 = v55 + a4;
        self = v35;
      }

      while (v55 + a4 < v49);
    }

    v8 = v47;
    v7 = v48;
    v13 = v46;
  }

  else
  {
    if ([v13 count])
    {
      PXAssertGetLog();
    }

    v26 = MEMORY[0x1E695E0F8];
  }

  return v26;
}

- (id)_timelineEntriesFromAssetCollections:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v3;
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
          v12 = [(PXTimelineScheduler *)self timelineDataSource];
          v13 = [v12 keyAssetByFeaturedPhotoLocalIdentifier];
          v14 = [v9 localIdentifier];
          v15 = [v13 objectForKeyedSubscript:v14];

          v16 = [(PXTimelineScheduler *)self timelineDataSource];
          v17 = [v16 suggestedCropByFeaturedPhotoLocalIdentifier];
          v18 = [v9 localIdentifier];
          v19 = [v17 objectForKeyedSubscript:v18];

          v20 = [(PXTimelineScheduler *)self timelineDataSource];
          v21 = [v20 sourceType];
          v22 = [PXTimelineEntry alloc];
          v23 = v22;
          if (v21 == 1)
          {
            v24 = [v20 sourceIdentifier];
            v25 = [(PXTimelineEntry *)v23 initWithAlbumFeaturedPhoto:v9 localAlbumIdentifier:v24 andFeaturedPhotoKeyAsset:v15 suggestedCrop:v19];
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

          v26 = [(PXTimelineScheduler *)self timelineDataSource];
          v27 = [v26 keyAssetByMemoryLocalIdentifier];
          v28 = [v9 localIdentifier];
          v15 = [v27 objectForKeyedSubscript:v28];

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

- (id)_timelineEntriesFromAssets:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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

- (id)_sortedTimelineEntriesForMemoriesAtDate:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXTimelineScheduler *)self timelineDataSource];
  v6 = [v5 memories];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __63__PXTimelineScheduler__sortedTimelineEntriesForMemoriesAtDate___block_invoke;
  v29[3] = &unk_1E773B910;
  v21 = v4;
  v30 = v21;
  v7 = [v6 sortedArrayUsingComparator:v29];
  v22 = v6;
  v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
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
        v13 = [(PXTimelineScheduler *)self timelineDataSource];
        v14 = [v13 keyAssetByMemoryLocalIdentifier];
        v15 = [v12 localIdentifier];
        v16 = [v14 objectForKeyedSubscript:v15];

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
    v18 = [v24 firstObject];
    v19 = [v18 copy];
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
  v2 = [(PXTimelineScheduler *)self photoAssetsTimelineEntries];
  v3 = [v2 firstObject];

  if (v3)
  {
    v6[0] = v3;
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
  v3 = [(PXTimelineScheduler *)self featuredPhotoTimelineEntries];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [(PXTimelineScheduler *)self memoryTimelineEntries];
    v6 = [v5 count];
    v7 = [(PXTimelineScheduler *)self featuredPhotoTimelineEntries];
    v8 = [v7 count] + v6;

    if (v8 >= 0xB)
    {
      v9 = [(PXTimelineScheduler *)self featuredPhotoTimelineEntries];
      v10 = [v9 mutableCopy];

      [v10 removeObjectAtIndex:0];
      [(PXTimelineScheduler *)self setFeaturedPhotoTimelineEntries:v10];
    }

    v13[0] = v4;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

- (id)_findBestContentAndRemoveFromSourceAtDate:(id)a3 options:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PXTimelineScheduler *)self timelineDataSource];
  v9 = [v8 memories];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [(PXTimelineScheduler *)self _sortedTimelineEntriesForMemoriesAtDate:v6];
    v12 = [v7 bestContentStartTimeHours];
    v13 = [v12 count];

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

    v18 = [v7 timelineIndex];
    v19 = v18 % [v17 count];
    v20 = PLMemoriesGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = +[PXTimelineSize sizeDescriptionForSizeClass:](PXTimelineSize, "sizeDescriptionForSizeClass:", [v7 timelineForSize]);
      *buf = 138412546;
      v44 = v21;
      v45 = 2048;
      v46 = v19;
      _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEBUG, "[%@] best content rotation: %tu", buf, 0x16u);
    }

    while (v19)
    {
      --v19;
      v22 = [v17 firstObject];
      [v17 addObject:v22];

      [v17 removeObjectAtIndex:0];
    }

    v23 = [(PXTimelineScheduler *)self memoryTimelineEntries];
    v24 = [v23 count];
    v25 = [(PXTimelineScheduler *)self featuredPhotoTimelineEntries];
    v26 = [v25 count] + v24;

    if (v26 < 0xB)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v28 = [(PXTimelineScheduler *)self memoryTimelineEntries];
      v32 = [v28 countByEnumeratingWithState:&v38 objects:v42 count:16];
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
              objc_enumerationMutation(v28);
            }

            v36 = *(*(&v38 + 1) + 8 * i);
            if ([v17 containsObject:v36])
            {
              [v36 setProactiveCriterion:0];
            }
          }

          v33 = [v28 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v33);
      }
    }

    else
    {
      v27 = [(PXTimelineScheduler *)self memoryTimelineEntries];
      v28 = [v27 mutableCopy];

      [v28 removeObjectsInArray:v17];
      [(PXTimelineScheduler *)self setMemoryTimelineEntries:v28];
    }
  }

  else
  {
    v29 = [(PXTimelineScheduler *)self timelineDataSource];
    v30 = [v29 assets];
    v31 = [v30 count];

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

- (id)_scheduledTimelineEntriesWithOptions:(id)a3 atDate:(id)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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

  v11 = v7;
  [(PXTimelineScheduler *)self _initTimelineEntriesAtDate:v7 options:v6];
  v12 = [(PXTimelineScheduler *)self timelineCandidates];
  v13 = [v12 count];

  if (v13)
  {
    v14 = v13;
    v15 = [(PXTimelineScheduler *)self timelineDataSource];
    v16 = [v15 memories];
    v17 = [v16 firstObject];
    v18 = [v17 creationDate];
    v19 = v18;
    v56 = v15;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v54 = [v15 featuredPhotos];
      v27 = [v54 firstObject];
      v28 = [v27 creationDate];
      v29 = v28;
      if (v28)
      {
        v20 = v28;
      }

      else
      {
        v52 = [v15 assets];
        v50 = [v52 firstObject];
        v20 = [v50 creationDate];
      }

      v11 = v7;
    }

    v30 = [MEMORY[0x1E695DEE8] currentCalendar];
    v55 = v20;
    v31 = [v30 startOfDayForDate:v20];
    v51 = [v30 startOfDayForDate:v11];
    v53 = v31;
    v32 = [v30 components:16 fromDate:v31 toDate:? options:?];
    v33 = [v32 day];

    v34 = PLMemoriesGetLog();
    v35 = v14;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v58 = v33;
      _os_log_impl(&dword_1A3C1C000, v34, OS_LOG_TYPE_DEBUG, "Timeline - day difference: %ld", buf, 0xCu);
    }

    v36 = [(PXTimelineScheduler *)self _timelineEntryByBestContentIntervalAtDate:v11 numberOfDays:2 options:v6];
    [v6 bestContentEntryDuration];
    v38 = v37 * [v36 count] * -0.5 + 86400.0;
    [v6 timelineEntryDuration];
    if (fmod(v38, v39) != 0.0)
    {
      PXAssertGetLog();
    }

    [v6 timelineEntryDuration];
    v41 = [(PXTimelineScheduler *)self _startOfDayIndexWithOffsetDay:v33 entriesCount:v35 perDayLimit:(v38 / v40) options:v6];
    v42 = PLMemoriesGetLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v43 = +[PXTimelineSize sizeDescriptionForSizeClass:](PXTimelineSize, "sizeDescriptionForSizeClass:", [v6 timelineForSize]);
      *buf = 138412802;
      v58 = v43;
      v59 = 2048;
      v60 = v41;
      v61 = 2048;
      v62 = v35;
      _os_log_impl(&dword_1A3C1C000, v42, OS_LOG_TYPE_DEBUG, "Scheduler start of day index for [%@]: %zd, candidates count: %tu", buf, 0x20u);
    }

    v44 = [(PXTimelineScheduler *)self _timelineAtDate:v11 startOfDayCandidatesIndex:v41 timelineEntryByBestContentInterval:v36 options:v6];
    v25 = [(PXTimelineScheduler *)self _coalesceRepeatedTimelineEntries:v44];
    v45 = [v25 firstObject];
    [v45 setStartTime:v11];

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

- (void)_initTimelineEntriesAtDate:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXTimelineScheduler *)self timelineDataSource];
  v9 = [v8 memories];
  v10 = [(PXTimelineScheduler *)self _timelineEntriesFromAssetCollections:v9];
  [(PXTimelineScheduler *)self setMemoryTimelineEntries:v10];

  v11 = [v8 featuredPhotos];
  v12 = [(PXTimelineScheduler *)self _timelineEntriesFromAssetCollections:v11];
  [(PXTimelineScheduler *)self setFeaturedPhotoTimelineEntries:v12];

  v13 = [v8 assets];
  v14 = [(PXTimelineScheduler *)self _timelineEntriesFromAssets:v13];
  [(PXTimelineScheduler *)self setPhotoAssetsTimelineEntries:v14];

  v15 = [(PXTimelineScheduler *)self _findBestContentAndRemoveFromSourceAtDate:v7 options:v6];

  [(PXTimelineScheduler *)self setBestContent:v15];
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = [(PXTimelineScheduler *)self featuredPhotoTimelineEntries];
  [v16 addObjectsFromArray:v17];

  v18 = [(PXTimelineScheduler *)self memoryTimelineEntries];
  [v16 addObjectsFromArray:v18];

  v19 = [(PXTimelineScheduler *)self photoAssetsTimelineEntries];
  [v16 addObjectsFromArray:v19];

  [(PXTimelineScheduler *)self setTimelineCandidates:v16];
  if ([v16 count])
  {
    v20 = [(PXTimelineScheduler *)self bestContent];
    v21 = [v20 count];

    if (!v21)
    {
      PXAssertGetLog();
    }
  }
}

- (id)scheduledTimelineEntriesWithOptions:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 date];
  v7 = [(PXTimelineScheduler *)self _scheduledTimelineEntriesWithOptions:v5 atDate:v6];

  return v7;
}

- (PXTimelineScheduler)initWithTimelineDataSource:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXTimelineScheduler;
  v5 = [(PXTimelineScheduler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PXTimelineScheduler *)v5 setTimelineDataSource:v4];
  }

  return v6;
}

- (PXTimelineScheduler)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXTimelineScheduler.m" lineNumber:42 description:{@"%s is not available as initializer", "-[PXTimelineScheduler init]"}];

  abort();
}

@end