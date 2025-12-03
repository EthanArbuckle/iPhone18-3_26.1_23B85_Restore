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
  [self duration];
  *&time2.start.value = *&a3->value;
  time2.start.epoch = a3->epoch;
  if (CMTimeCompare(&time1.start, &time2.start) <= 0)
  {
    selfCopy = self;
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
    v9 = [MEMORY[0x1E69C0708] insertTimeRange:&time2 ofAsset:self atTime:&duration intoMutableComposition:v8 error:&v16];
    v10 = v16;
    v11 = v10;
    if (v9)
    {
      if (a4)
      {
        v12 = v10;
        *a4 = v11;
      }

      selfCopy = [v8 copy];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *&time2.start.value = *&a3->value;
        time2.start.epoch = a3->epoch;
        v15 = CMTimeCopyDescription(0, &time2.start);
        LODWORD(time2.start.value) = 138412802;
        *(&time2.start.value + 4) = self;
        LOWORD(time2.start.flags) = 2112;
        *(&time2.start.flags + 2) = v15;
        HIWORD(time2.start.epoch) = 2112;
        time2.duration.value = v11;
        _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to produce trimmed AVAsset from asset %@, duration %@. Error: %@.", &time2, 0x20u);
      }

      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (double)px_dimensionsOfFirstVideoTrack
{
  v1 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:self];
  firstObject = [v1 firstObject];

  [firstObject dimensions];
  v4 = v3;

  return v4;
}

- (void)px_loadDurationWithCompletionHandler:()PhotosUICore
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  px_cachedDuration = [self px_cachedDuration];
  v6 = px_cachedDuration;
  if (px_cachedDuration)
  {
    location[0] = 0;
    location[1] = 0;
    v22 = 0;
    [px_cachedDuration CMTimeValue];
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
    objc_initWeak(location, self);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __62__AVAsset_PhotosUICore__px_loadDurationWithCompletionHandler___block_invoke;
    v16 = &unk_1E774AA30;
    objc_copyWeak(&v18, location);
    v17 = v4;
    v8 = _Block_copy(&v13);
    v9 = NSStringFromSelector(sel_duration);
    v10 = [self statusOfValueForKey:v9 error:{0, v13, v14, v15, v16}];

    if (v10 == 2)
    {
      v8[2](v8);
    }

    else
    {
      v11 = NSStringFromSelector(sel_duration);
      v23[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      [self loadValuesAsynchronouslyForKeys:v12 completionHandler:v8];
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }
}

- (void)px_duration
{
  px_cachedDuration = [self px_cachedDuration];
  if (px_cachedDuration)
  {
    v5 = px_cachedDuration;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v8 = 0uLL;
    v9 = 0;
    [self duration];
    v6 = v8;
    v7 = v9;
    v5 = [MEMORY[0x1E696B098] valueWithCMTime:&v6];
    [self _px_setCachedDuration:v5];
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