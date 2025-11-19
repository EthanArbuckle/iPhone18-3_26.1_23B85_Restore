@interface AVAsset(PhotosUICore)
- (double)px_dimensionsOfFirstVideoTrack;
- (id)px_assetByClampingToDuration:()PhotosUICore error:;
- (void)px_duration;
- (void)px_loadDurationWithCompletionHandler:()PhotosUICore;
@end

@implementation AVAsset(PhotosUICore)

- (id)px_assetByClampingToDuration:()PhotosUICore error:
{
  v20 = *MEMORY[0x1E69E9840];
  [a1 duration];
  *&time2.start.value = *&a3->value;
  time2.start.epoch = a3->epoch;
  if (CMTimeCompare(&time1.start, &time2.start) <= 0)
  {
    v13 = a1;
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
    v7 = MEMORY[0x1E6960CC0];
    *&time2.start.value = *MEMORY[0x1E6960CC0];
    time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    duration = *a3;
    CMTimeRangeMake(&time1, &time2.start, &duration);
    v8 = objc_alloc_init(MEMORY[0x1E6988048]);
    v16 = 0;
    time2 = time1;
    duration = *v7;
    v9 = [MEMORY[0x1E69C0708] insertTimeRange:&time2 ofAsset:a1 atTime:&duration intoMutableComposition:v8 error:&v16];
    v10 = v16;
    v11 = v10;
    if (v9)
    {
      if (a4)
      {
        v12 = v10;
        *a4 = v11;
      }

      v13 = [v8 copy];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *&time2.start.value = *&a3->value;
        time2.start.epoch = a3->epoch;
        v15 = CMTimeCopyDescription(0, &time2.start);
        LODWORD(time2.start.value) = 138412802;
        *(&time2.start.value + 4) = a1;
        LOWORD(time2.start.flags) = 2112;
        *(&time2.start.flags + 2) = v15;
        HIWORD(time2.start.epoch) = 2112;
        time2.duration.value = v11;
        _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to produce trimmed AVAsset from asset %@, duration %@. Error: %@.", &time2, 0x20u);
      }

      v13 = 0;
    }
  }

  return v13;
}

- (double)px_dimensionsOfFirstVideoTrack
{
  v1 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:a1];
  v2 = [v1 firstObject];

  [v2 dimensions];
  v4 = v3;

  return v4;
}

- (void)px_loadDurationWithCompletionHandler:()PhotosUICore
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 px_cachedDuration];
  v6 = v5;
  if (v5)
  {
    location[0] = 0;
    location[1] = 0;
    v22 = 0;
    [v5 CMTimeValue];
    if (v4)
    {
      v7 = v4[2];
      v19 = *location;
      v20 = v22;
      v7(v4, &v19, 1, 0);
    }
  }

  else
  {
    objc_initWeak(location, a1);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __62__AVAsset_PhotosUICore__px_loadDurationWithCompletionHandler___block_invoke;
    v16 = &unk_1E774AA30;
    objc_copyWeak(&v18, location);
    v17 = v4;
    v8 = _Block_copy(&v13);
    v9 = NSStringFromSelector(sel_duration);
    v10 = [a1 statusOfValueForKey:v9 error:{0, v13, v14, v15, v16}];

    if (v10 == 2)
    {
      v8[2](v8);
    }

    else
    {
      v11 = NSStringFromSelector(sel_duration);
      v23[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      [a1 loadValuesAsynchronouslyForKeys:v12 completionHandler:v8];
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }
}

- (void)px_duration
{
  v4 = [a1 px_cachedDuration];
  if (v4)
  {
    v5 = v4;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v8 = 0uLL;
    v9 = 0;
    [a1 duration];
    v6 = v8;
    v7 = v9;
    v5 = [MEMORY[0x1E696B098] valueWithCMTime:&v6];
    [a1 _px_setCachedDuration:v5];
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    if (!v5)
    {
      return;
    }
  }

  [v5 CMTimeValue];
}

@end