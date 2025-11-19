@interface PXStoryDummyDailyChapterCollectionProducer
- (PXStoryDummyDailyChapterCollectionProducer)initWithDayInterval:(int64_t)a3 storyQueue:(id)a4;
- (id)workQueue_uneditedChapterCollectionWithAssets:(id)a3 keyAsset:(id)a4;
@end

@implementation PXStoryDummyDailyChapterCollectionProducer

- (id)workQueue_uneditedChapterCollectionWithAssets:(id)a3 keyAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8 < 1)
  {
    v11 = 0;
    v10 = 0;
  }

  else
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    for (i = 0; i != v9; ++i)
    {
      v13 = [v6 objectAtIndexedSubscript:i];
      v14 = [v13 localCreationDate];

      if (v14)
      {
        if (!v10 || [v10 compare:v14] == 1)
        {
          v15 = v14;

          v10 = v15;
        }

        if (!v11 || [v11 compare:v14] == -1)
        {
          v16 = v14;

          v11 = v16;
        }
      }
    }
  }

  v17 = (86400 * [(PXStoryDummyDailyChapterCollectionProducer *)self dayInterval]);
  v18 = [PXStoryTimeBasedChapterCollection alloc];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __101__PXStoryDummyDailyChapterCollectionProducer_workQueue_uneditedChapterCollectionWithAssets_keyAsset___block_invoke;
  v23[3] = &unk_1E773CDA8;
  v24 = v10;
  v25 = v11;
  v26 = v17;
  v19 = v11;
  v20 = v10;
  v21 = [(PXStoryTimeBasedChapterCollection *)v18 initWithAssets:v6 keyAsset:v7 configuration:v23];

  return v21;
}

void __101__PXStoryDummyDailyChapterCollectionProducer_workQueue_uneditedChapterCollectionWithAssets_keyAsset___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) && *(a1 + 40))
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v4 setDateFormat:@"MMM d, yyyy"];
    v5 = +[PXStoryChapterSettings sharedInstance];
    v6 = [v5 dummyChaptersIncludeSubtitles];

    v7 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D868]];
    v8 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v7 setTimeZone:v8];

    v9 = [v7 timeZone];
    [v4 setTimeZone:v9];

    [v3 setUsesAssetLocalCreationDates:1];
    v10 = [v7 startOfDayForDate:*(a1 + 32)];
    if ([v10 compare:*(a1 + 40)] == 1)
    {
      v11 = v10;
    }

    else
    {
      v12 = 0;
      do
      {
        v13 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v10 duration:*(a1 + 48) + -1.0];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __101__PXStoryDummyDailyChapterCollectionProducer_workQueue_uneditedChapterCollectionWithAssets_keyAsset___block_invoke_2;
        v15[3] = &unk_1E773CD80;
        v16 = v4;
        v17 = v13;
        v19 = v6;
        v18 = v12;
        v14 = v13;
        [v3 addChapterWithDateInterval:v14 configuration:v15];
        ++v12;

        v11 = [v10 dateByAddingTimeInterval:*(a1 + 48)];

        v10 = v11;
      }

      while ([v11 compare:*(a1 + 40)] != 1);
    }
  }
}

void __101__PXStoryDummyDailyChapterCollectionProducer_workQueue_uneditedChapterCollectionWithAssets_keyAsset___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) startDate];
  v5 = [v3 stringFromDate:v4];
  [v7 setLocalizedTitle:v5];

  if (*(a1 + 56) == 1)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Chapter %ti", *(a1 + 48) + 1];
    [v7 setLocalizedSubtitle:v6];
  }
}

- (PXStoryDummyDailyChapterCollectionProducer)initWithDayInterval:(int64_t)a3 storyQueue:(id)a4
{
  v6.receiver = self;
  v6.super_class = PXStoryDummyDailyChapterCollectionProducer;
  result = [(PXStoryTransientChapterCollectionProducer *)&v6 initWithStoryQueue:a4];
  if (result)
  {
    result->_dayInterval = a3;
  }

  return result;
}

@end