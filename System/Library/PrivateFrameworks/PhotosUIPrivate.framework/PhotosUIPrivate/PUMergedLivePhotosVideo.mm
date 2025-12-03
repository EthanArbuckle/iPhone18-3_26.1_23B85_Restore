@interface PUMergedLivePhotosVideo
- (PUMergedLivePhotosVideo)initWithAssets:(id)assets startTimes:(id)times keyTimes:(id)keyTimes videoAsset:(id)asset videoComposition:(id)composition videoAspectRatio:(double)ratio options:(unint64_t)options;
- (id)assetAtTime:(id *)time progress:(double *)progress;
- (id)debugDescription;
- (int64_t)_assetIndexAtTime:(id *)time;
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
  startTimes = [(PUMergedLivePhotosVideo *)self startTimes];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __43__PUMergedLivePhotosVideo_debugDescription__block_invoke;
  v18 = &unk_1E7B772C8;
  v20 = v6;
  v21 = 0x3FC999999999999ALL;
  selfCopy = self;
  v8 = v6;
  [startTimes enumerateObjectsUsingBlock:&v15];

  [v5 appendFormat:@"\n\t%@", v8, v15, v16, v17, v18, selfCopy];
  keyTimes = [(PUMergedLivePhotosVideo *)self keyTimes];
  [v5 appendFormat:@"\n\tKeyTimes:\n\t%@", keyTimes];

  startTimes2 = [(PUMergedLivePhotosVideo *)self startTimes];
  [v5 appendFormat:@"\n\tStartTimes:\n\t%@", startTimes2];

  assets = [(PUMergedLivePhotosVideo *)self assets];
  [v5 appendFormat:@"\n\tAssets:\n\t%@", assets];

  mergedVideoAsset = [(PUMergedLivePhotosVideo *)self mergedVideoAsset];
  [v5 appendFormat:@"\n\tvideoAsset:\n\t%@", mergedVideoAsset];

  mergedVideoComposition = [(PUMergedLivePhotosVideo *)self mergedVideoComposition];
  [v5 appendFormat:@"\n\tvideoComposition:\n\t%@", mergedVideoComposition];

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

- (int64_t)_assetIndexAtTime:(id *)time
{
  keyTimes = [(PUMergedLivePhotosVideo *)self keyTimes];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __45__PUMergedLivePhotosVideo__assetIndexAtTime___block_invoke;
  v22[3] = &__block_descriptor_56_e24_B32__0__NSValue_8Q16_B24l;
  v23 = *time;
  v6 = [keyTimes indexesOfObjectsPassingTest:v22];
  lastIndex = [v6 lastIndex];

  if (lastIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  keyTimes2 = [(PUMergedLivePhotosVideo *)self keyTimes];
  v9 = [keyTimes2 count] - 1;

  if (lastIndex != v9)
  {
    memset(&v21, 0, sizeof(v21));
    keyTimes3 = [(PUMergedLivePhotosVideo *)self keyTimes];
    v11 = [keyTimes3 objectAtIndexedSubscript:lastIndex];
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
    keyTimes4 = [(PUMergedLivePhotosVideo *)self keyTimes];
    v14 = [keyTimes4 objectAtIndexedSubscript:lastIndex + 1];
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
    lhs = *time;
    v17 = v19;
    if (CMTimeCompare(&lhs, &v17) > 0)
    {
      ++lastIndex;
    }
  }

  return lastIndex;
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

- (id)assetAtTime:(id *)time progress:(double *)progress
{
  assets = [(PUMergedLivePhotosVideo *)self assets];
  range.start = *time;
  v8 = [(PUMergedLivePhotosVideo *)self _assetIndexAtTime:&range];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
    goto LABEL_30;
  }

  v10 = v8;
  v9 = [assets objectAtIndexedSubscript:v8];
  if (progress)
  {
    v11 = 0.0;
    if ([assets count] < 2)
    {
LABEL_29:
      *progress = v11;
      goto LABEL_30;
    }

    keyTimes = [(PUMergedLivePhotosVideo *)self keyTimes];
    firstObject = [keyTimes firstObject];
    v14 = firstObject;
    if (firstObject)
    {
      [firstObject CMTimeValue];
    }

    else
    {
      memset(&start, 0, sizeof(start));
    }

    lastObject = [keyTimes lastObject];
    v16 = lastObject;
    if (lastObject)
    {
      [lastObject CMTimeValue];
    }

    else
    {
      memset(&end, 0, sizeof(end));
    }

    CMTimeRangeFromTimeToTime(&range, &start, &end);
    start = *time;
    v17 = CMTimeRangeContainsTime(&range, &start);

    if (v17)
    {
      memset(&range, 0, 24);
      v18 = [keyTimes objectAtIndexedSubscript:v10];
      v19 = v18;
      if (v18)
      {
        [v18 CMTimeValue];
      }

      else
      {
        memset(&range, 0, 24);
      }

      end = *time;
      rhs = range.start;
      CMTimeSubtract(&start, &end, &rhs);
      Seconds = CMTimeGetSeconds(&start);
      if (Seconds <= 0.0 || v10 + 1 >= [assets count])
      {
        if (v10 < 1 || Seconds >= 0.0)
        {
          goto LABEL_28;
        }

        memset(&start, 0, sizeof(start));
        v23 = [keyTimes objectAtIndexedSubscript:v10 - 1];
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
        v21 = [keyTimes objectAtIndexedSubscript:v10 + 1];
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

- (PUMergedLivePhotosVideo)initWithAssets:(id)assets startTimes:(id)times keyTimes:(id)keyTimes videoAsset:(id)asset videoComposition:(id)composition videoAspectRatio:(double)ratio options:(unint64_t)options
{
  assetsCopy = assets;
  timesCopy = times;
  keyTimesCopy = keyTimes;
  assetCopy = asset;
  compositionCopy = composition;
  v35.receiver = self;
  v35.super_class = PUMergedLivePhotosVideo;
  v22 = [(PUMergedLivePhotosVideo *)&v35 init];
  if (v22)
  {
    v34 = a2;
    v23 = [assetsCopy count];
    if (v23 != [timesCopy count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:v34 object:v22 file:@"PUMergedLivePhotosVideo.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"assets.count == startTimes.count"}];
    }

    v24 = [assetsCopy count];
    if (v24 != [keyTimesCopy count])
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:v34 object:v22 file:@"PUMergedLivePhotosVideo.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"assets.count == keyTimes.count"}];
    }

    v25 = [assetsCopy copy];
    assets = v22->_assets;
    v22->_assets = v25;

    v27 = [timesCopy copy];
    startTimes = v22->_startTimes;
    v22->_startTimes = v27;

    v29 = [keyTimesCopy copy];
    keyTimes = v22->_keyTimes;
    v22->_keyTimes = v29;

    objc_storeStrong(&v22->_mergedVideoAsset, asset);
    objc_storeStrong(&v22->_mergedVideoComposition, composition);
    v22->_videoAspectRatio = ratio;
    v22->_options = options;
  }

  return v22;
}

@end