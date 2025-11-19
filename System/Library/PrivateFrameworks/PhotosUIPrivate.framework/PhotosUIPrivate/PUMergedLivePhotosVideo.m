@interface PUMergedLivePhotosVideo
- (PUMergedLivePhotosVideo)initWithAssets:(id)a3 startTimes:(id)a4 keyTimes:(id)a5 videoAsset:(id)a6 videoComposition:(id)a7 videoAspectRatio:(double)a8 options:(unint64_t)a9;
- (id)assetAtTime:(id *)a3 progress:(double *)a4;
- (id)debugDescription;
- (int64_t)_assetIndexAtTime:(id *)a3;
@end

@implementation PUMergedLivePhotosVideo

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v22.receiver = self;
  v22.super_class = PUMergedLivePhotosVideo;
  v4 = [(PUMergedLivePhotosVideo *)&v22 description];
  v5 = [v3 initWithString:v4];

  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v7 = [(PUMergedLivePhotosVideo *)self startTimes];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __43__PUMergedLivePhotosVideo_debugDescription__block_invoke;
  v18 = &unk_1E7B772C8;
  v20 = v6;
  v21 = 0x3FC999999999999ALL;
  v19 = self;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:&v15];

  [v5 appendFormat:@"\n\t%@", v8, v15, v16, v17, v18, v19];
  v9 = [(PUMergedLivePhotosVideo *)self keyTimes];
  [v5 appendFormat:@"\n\tKeyTimes:\n\t%@", v9];

  v10 = [(PUMergedLivePhotosVideo *)self startTimes];
  [v5 appendFormat:@"\n\tStartTimes:\n\t%@", v10];

  v11 = [(PUMergedLivePhotosVideo *)self assets];
  [v5 appendFormat:@"\n\tAssets:\n\t%@", v11];

  v12 = [(PUMergedLivePhotosVideo *)self mergedVideoAsset];
  [v5 appendFormat:@"\n\tvideoAsset:\n\t%@", v12];

  v13 = [(PUMergedLivePhotosVideo *)self mergedVideoComposition];
  [v5 appendFormat:@"\n\tvideoComposition:\n\t%@", v13];

  return v5;
}

void __43__PUMergedLivePhotosVideo_debugDescription__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  memset(&v30[1], 0, sizeof(CMTime));
  if (v5)
  {
    [v5 CMTimeValue];
  }

  memset(v30, 0, 24);
  v7 = [*(a1 + 32) startTimes];
  v8 = [v7 count];
  v9 = *(a1 + 32);
  if (a3 + 1 >= v8)
  {
    v13 = [v9 mergedVideoAsset];
    v10 = v13;
    if (v13)
    {
      [v13 duration];
    }

    else
    {
      memset(v30, 0, 24);
    }
  }

  else
  {
    v10 = [v9 startTimes];
    v11 = [v10 objectAtIndexedSubscript:a3 + 1];
    v12 = v11;
    if (v11)
    {
      [v11 CMTimeValue];
    }

    else
    {
      memset(v30, 0, 24);
    }
  }

  memset(&v29, 0, sizeof(v29));
  v14 = [*(a1 + 32) keyTimes];
  v15 = [v14 objectAtIndexedSubscript:a3];
  v16 = v15;
  if (v15)
  {
    [v15 CMTimeValue];
  }

  else
  {
    memset(&v29, 0, sizeof(v29));
  }

  lhs = v30[0];
  v26 = v30[1];
  CMTimeSubtract(&time, &lhs, &v26);
  v17 = (CMTimeGetSeconds(&time) / *(a1 + 48));
  v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"["];
  if (v17 >= 1)
  {
    v19 = 0;
    do
    {
      v20 = v19 + 1;
      v21 = *(a1 + 48);
      time = v30[1];
      v22 = CMTimeGetSeconds(&time) + (v19 + 1) * v21;
      time = v29;
      if (v22 <= CMTimeGetSeconds(&time) || (time = v30[1], v23 = CMTimeGetSeconds(&time) + v19 * *(a1 + 48), time = v29, Seconds = CMTimeGetSeconds(&time), v25 = @"*", v23 >= Seconds))
      {
        v25 = @"-";
      }

      [v18 appendString:v25];
      ++v19;
    }

    while (v17 != v20);
  }

  [v18 appendString:@"]"];
  [*(a1 + 40) appendString:v18];
}

- (int64_t)_assetIndexAtTime:(id *)a3
{
  v5 = [(PUMergedLivePhotosVideo *)self keyTimes];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __45__PUMergedLivePhotosVideo__assetIndexAtTime___block_invoke;
  v22[3] = &__block_descriptor_56_e24_B32__0__NSValue_8Q16_B24l;
  v23 = *a3;
  v6 = [v5 indexesOfObjectsPassingTest:v22];
  v7 = [v6 lastIndex];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = [(PUMergedLivePhotosVideo *)self keyTimes];
  v9 = [v8 count] - 1;

  if (v7 != v9)
  {
    memset(&v21, 0, sizeof(v21));
    v10 = [(PUMergedLivePhotosVideo *)self keyTimes];
    v11 = [v10 objectAtIndexedSubscript:v7];
    v12 = v11;
    if (v11)
    {
      [v11 CMTimeValue];
    }

    else
    {
      memset(&v21, 0, sizeof(v21));
    }

    memset(&v20, 0, sizeof(v20));
    v13 = [(PUMergedLivePhotosVideo *)self keyTimes];
    v14 = [v13 objectAtIndexedSubscript:v7 + 1];
    v15 = v14;
    if (v14)
    {
      [v14 CMTimeValue];
    }

    else
    {
      memset(&v20, 0, sizeof(v20));
    }

    memset(&v19, 0, sizeof(v19));
    lhs = v20;
    v17 = v21;
    CMTimeSubtract(&v19, &lhs, &v17);
    lhs = *a3;
    v17 = v19;
    if (CMTimeCompare(&lhs, &v17) > 0)
    {
      ++v7;
    }
  }

  return v7;
}

uint64_t __45__PUMergedLivePhotosVideo__assetIndexAtTime___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 CMTimeValue];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v4 = *(a1 + 32);
  return CMTimeCompare(&time1, &v4) >> 31;
}

- (id)assetAtTime:(id *)a3 progress:(double *)a4
{
  v7 = [(PUMergedLivePhotosVideo *)self assets];
  range.start = *a3;
  v8 = [(PUMergedLivePhotosVideo *)self _assetIndexAtTime:&range];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
    goto LABEL_30;
  }

  v10 = v8;
  v9 = [v7 objectAtIndexedSubscript:v8];
  if (a4)
  {
    v11 = 0.0;
    if ([v7 count] < 2)
    {
LABEL_29:
      *a4 = v11;
      goto LABEL_30;
    }

    v12 = [(PUMergedLivePhotosVideo *)self keyTimes];
    v13 = [v12 firstObject];
    v14 = v13;
    if (v13)
    {
      [v13 CMTimeValue];
    }

    else
    {
      memset(&start, 0, sizeof(start));
    }

    v15 = [v12 lastObject];
    v16 = v15;
    if (v15)
    {
      [v15 CMTimeValue];
    }

    else
    {
      memset(&end, 0, sizeof(end));
    }

    CMTimeRangeFromTimeToTime(&range, &start, &end);
    start = *a3;
    v17 = CMTimeRangeContainsTime(&range, &start);

    if (v17)
    {
      memset(&range, 0, 24);
      v18 = [v12 objectAtIndexedSubscript:v10];
      v19 = v18;
      if (v18)
      {
        [v18 CMTimeValue];
      }

      else
      {
        memset(&range, 0, 24);
      }

      end = *a3;
      rhs = range.start;
      CMTimeSubtract(&start, &end, &rhs);
      Seconds = CMTimeGetSeconds(&start);
      if (Seconds <= 0.0 || v10 + 1 >= [v7 count])
      {
        if (v10 < 1 || Seconds >= 0.0)
        {
          goto LABEL_28;
        }

        memset(&start, 0, sizeof(start));
        v23 = [v12 objectAtIndexedSubscript:v10 - 1];
        v24 = v23;
        if (v23)
        {
          [v23 CMTimeValue];
        }

        else
        {
          memset(&start, 0, sizeof(start));
        }

        rhs = range.start;
        *&v27.value = *&start.value;
        epoch = start.epoch;
      }

      else
      {
        memset(&start, 0, sizeof(start));
        v21 = [v12 objectAtIndexedSubscript:v10 + 1];
        v22 = v21;
        if (v21)
        {
          [v21 CMTimeValue];
        }

        else
        {
          memset(&start, 0, sizeof(start));
        }

        rhs = start;
        *&v27.value = *&range.start.value;
        epoch = range.start.epoch;
      }

      v27.epoch = epoch;
      CMTimeSubtract(&end, &rhs, &v27);
      v11 = Seconds / CMTimeGetSeconds(&end);
    }

LABEL_28:

    goto LABEL_29;
  }

LABEL_30:

  return v9;
}

- (PUMergedLivePhotosVideo)initWithAssets:(id)a3 startTimes:(id)a4 keyTimes:(id)a5 videoAsset:(id)a6 videoComposition:(id)a7 videoAspectRatio:(double)a8 options:(unint64_t)a9
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v35.receiver = self;
  v35.super_class = PUMergedLivePhotosVideo;
  v22 = [(PUMergedLivePhotosVideo *)&v35 init];
  if (v22)
  {
    v34 = a2;
    v23 = [v17 count];
    if (v23 != [v18 count])
    {
      v32 = [MEMORY[0x1E696AAA8] currentHandler];
      [v32 handleFailureInMethod:v34 object:v22 file:@"PUMergedLivePhotosVideo.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"assets.count == startTimes.count"}];
    }

    v24 = [v17 count];
    if (v24 != [v19 count])
    {
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      [v33 handleFailureInMethod:v34 object:v22 file:@"PUMergedLivePhotosVideo.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"assets.count == keyTimes.count"}];
    }

    v25 = [v17 copy];
    assets = v22->_assets;
    v22->_assets = v25;

    v27 = [v18 copy];
    startTimes = v22->_startTimes;
    v22->_startTimes = v27;

    v29 = [v19 copy];
    keyTimes = v22->_keyTimes;
    v22->_keyTimes = v29;

    objc_storeStrong(&v22->_mergedVideoAsset, a6);
    objc_storeStrong(&v22->_mergedVideoComposition, a7);
    v22->_videoAspectRatio = a8;
    v22->_options = a9;
  }

  return v22;
}

@end