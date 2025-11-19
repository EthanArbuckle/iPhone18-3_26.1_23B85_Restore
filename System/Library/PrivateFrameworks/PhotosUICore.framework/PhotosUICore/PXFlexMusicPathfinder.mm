@interface PXFlexMusicPathfinder
- (PXFlexMusicPathfinder)init;
- (PXFlexMusicPathfinder)initWithSong:(id)a3;
- (void)_loadRenditionsIfNeeded;
- (void)findPathFromCurrentTime:(id *)a3 inRendition:(id)a4 withTargetRemainder:(id *)a5 tolerance:(id *)a6 result:(id)a7;
@end

@implementation PXFlexMusicPathfinder

- (void)_loadRenditionsIfNeeded
{
  if (!self->_renditions)
  {
    v18 = v2;
    v19 = v3;
    v5 = [(PXFlexMusicPathfinder *)self song];
    v6 = [v5 idealDurations];
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __48__PXFlexMusicPathfinder__loadRenditionsIfNeeded__block_invoke;
    v15 = &unk_1E773C328;
    v16 = v5;
    v17 = v7;
    v8 = v7;
    v9 = v5;
    [v6 enumerateObjectsUsingBlock:&v12];
    v10 = [v8 copy];
    renditions = self->_renditions;
    self->_renditions = v10;
  }
}

void __48__PXFlexMusicPathfinder__loadRenditionsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v7 = 0uLL;
  v8 = 0;
  if (a2)
  {
    [a2 CMTimeValue];
  }

  v3 = *(a1 + 32);
  v5 = v7;
  v6 = v8;
  v4 = [v3 renditionForDuration:&v5 withOptions:MEMORY[0x1E695E0F8]];
  [*(a1 + 40) addObject:v4];
}

- (void)findPathFromCurrentTime:(id *)a3 inRendition:(id)a4 withTargetRemainder:(id *)a5 tolerance:(id *)a6 result:(id)a7
{
  v28[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a7;
  [(PXFlexMusicPathfinder *)self _loadRenditionsIfNeeded];
  v12 = [(PXFlexMusicPathfinder *)self song];
  v13 = [v10 trackA];
  v14 = [v10 trackB];
  v15 = objc_alloc(MEMORY[0x1E695DF70]);
  v16 = [v13 clips];
  v17 = [v16 count];
  v18 = [v14 clips];
  v19 = [v15 initWithCapacity:{objc_msgSend(v18, "count") + v17}];

  v20 = [v13 clips];
  [v19 addObjectsFromArray:v20];

  v21 = [v14 clips];
  [v19 addObjectsFromArray:v21];

  v22 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"position" ascending:1];
  v28[0] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  [v19 sortUsingDescriptors:v23];

  v24 = [v12 sampleRate];
  memset(&v26, 0, sizeof(v26));
  time = *a3;
  CMTimeConvertScale(&v26, &time, v24, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  [v19 count];
  v25 = v19;
  PXLastIndexInSortedRangePassingTest();
}

BOOL __98__PXFlexMusicPathfinder_findPathFromCurrentTime_inRendition_withTargetRemainder_tolerance_result___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = [v3 position] <= *(a1 + 40);

  return v4;
}

void __98__PXFlexMusicPathfinder_findPathFromCurrentTime_inRendition_withTargetRemainder_tolerance_result___block_invoke_12(uint64_t a1, void *a2)
{
  v42[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v40 = 0uLL;
  v41 = 0;
  if (v3)
  {
    [v3 CMTimeValue];
  }

  v5 = *(a1 + 32);
  v28 = v40;
  v29 = v41;
  v6 = [v5 renditionForDuration:&v28 withOptions:MEMORY[0x1E695E0F8]];
  memset(&v39, 0, sizeof(v39));
  CMTimeMake(&v39, [v6 duration], *(a1 + 48));
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__134916;
  v37 = __Block_byref_object_dispose__134917;
  v38 = 0;
  *&v28 = 0;
  *(&v28 + 1) = &v28;
  v29 = 0x3810000000;
  v30 = &unk_1A561E057;
  v31 = *MEMORY[0x1E6960C70];
  v32 = *(MEMORY[0x1E6960C70] + 16);
  v7 = [v6 trackB];
  v8 = [v7 clips];
  v9 = [v6 trackA];
  v10 = [v9 clips];
  v11 = [v8 arrayByAddingObjectsFromArray:v10];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __98__PXFlexMusicPathfinder_findPathFromCurrentTime_inRendition_withTargetRemainder_tolerance_result___block_invoke_13;
  v19[3] = &unk_1E773C2B8;
  v20 = *(a1 + 48);
  v21 = *(a1 + 52);
  v22 = *(a1 + 68);
  v23 = v39;
  v25 = *(a1 + 92);
  v24 = *(a1 + 76);
  v27 = *(a1 + 116);
  v26 = *(a1 + 100);
  v19[4] = &v33;
  v19[5] = &v28;
  [v11 enumerateObjectsUsingBlock:v19];

  if (v34[5])
  {
    memset(&v18, 0, sizeof(v18));
    lhs = v39;
    v16 = *(*(&v28 + 1) + 32);
    CMTimeSubtract(&v18, &lhs, &v16);
    v42[0] = v6;
    lhs = *(*(&v28 + 1) + 32);
    v12 = [MEMORY[0x1E696B098] valueWithCMTime:&lhs];
    v42[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    v14 = *(a1 + 40);
    lhs = v18;
    v15 = [MEMORY[0x1E696B098] valueWithCMTime:&lhs];
    [v14 setObject:v13 forKeyedSubscript:v15];
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v33, 8);
}

uint64_t __98__PXFlexMusicPathfinder_findPathFromCurrentTime_inRendition_withTargetRemainder_tolerance_result___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  memset(&v13, 0, sizeof(v13));
  if (v5)
  {
    [v5 CMTimeValue];
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  rhs = *(a1 + 32);
  CMTimeSubtract(&time, &lhs, &rhs);
  CMTimeAbsoluteValue(&v13, &time);
  memset(&time, 0, sizeof(time));
  if (v6)
  {
    [v6 CMTimeValue];
  }

  else
  {
    memset(&rhs, 0, sizeof(rhs));
  }

  v9 = *(a1 + 32);
  CMTimeSubtract(&lhs, &rhs, &v9);
  CMTimeAbsoluteValue(&time, &lhs);
  lhs = v13;
  rhs = time;
  v7 = CMTimeCompare(&lhs, &rhs);

  return v7;
}

void __98__PXFlexMusicPathfinder_findPathFromCurrentTime_inRendition_withTargetRemainder_tolerance_result___block_invoke_13(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  memset(&v16, 0, sizeof(v16));
  CMTimeMake(&v16, [v7 offset], *(a1 + 48));
  memset(&v15, 0, sizeof(v15));
  CMTimeMake(&duration.start, [v7 duration], *(a1 + 48));
  start = v16;
  CMTimeRangeMake(&v15, &start, &duration.start);
  duration = v15;
  start = *(a1 + 52);
  if (CMTimeRangeContainsTime(&duration, &start))
  {
    memset(&duration, 0, 24);
    CMTimeMake(&duration.start, [v7 position], *(a1 + 48));
    memset(&start, 0, sizeof(start));
    lhs = *(a1 + 52);
    rhs = v16;
    CMTimeSubtract(&start, &lhs, &rhs);
    memset(&lhs, 0, sizeof(lhs));
    rhs = duration.start;
    time1 = start;
    CMTimeAdd(&lhs, &rhs, &time1);
    memset(&rhs, 0, sizeof(rhs));
    time1 = *(a1 + 76);
    time = lhs;
    CMTimeSubtract(&rhs, &time1, &time);
    time1 = rhs;
    v8 = *(a1 + 100);
    CMTimeSubtract(&time, &time1, &v8);
    CMTimeAbsoluteValue(&time1, &time);
    time = *(a1 + 124);
    if (CMTimeCompare(&time1, &time) <= 0)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *(*(*(a1 + 40) + 8) + 32) = lhs;
    }

    *a4 = 1;
  }
}

- (PXFlexMusicPathfinder)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXFlexMusicPathfinder.m" lineNumber:34 description:{@"%s is not available as initializer", "-[PXFlexMusicPathfinder init]"}];

  abort();
}

- (PXFlexMusicPathfinder)initWithSong:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXFlexMusicPathfinder;
  v6 = [(PXFlexMusicPathfinder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_song, a3);
  }

  return v7;
}

@end