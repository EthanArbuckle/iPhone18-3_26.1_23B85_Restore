@interface AVAsset(PhotosUI)
- (void)pu_duration;
- (void)pu_loadDurationWithCompletionHandler:()PhotosUI;
@end

@implementation AVAsset(PhotosUI)

- (void)pu_loadDurationWithCompletionHandler:()PhotosUI
{
  v4 = a3;
  pu_cachedDuration = [self pu_cachedDuration];
  v6 = pu_cachedDuration;
  if (pu_cachedDuration)
  {
    location[0] = 0;
    location[1] = 0;
    v18 = 0;
    [pu_cachedDuration CMTimeValue];
    if (v4)
    {
      v7 = v4[2];
      v15 = *location;
      v16 = v18;
      v7(v4, &v15, 1, 0);
    }
  }

  else
  {
    objc_initWeak(location, self);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __58__AVAsset_PhotosUI__pu_loadDurationWithCompletionHandler___block_invoke;
    v12 = &unk_1E7B7B3B0;
    objc_copyWeak(&v14, location);
    v13 = v4;
    v8 = _Block_copy(&v9);
    if ([self statusOfValueForKey:@"duration" error:{0, v9, v10, v11, v12}] == 2)
    {
      v8[2](v8);
    }

    else
    {
      [self loadValuesAsynchronouslyForKeys:&unk_1F2B7CC50 completionHandler:v8];
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }
}

- (void)pu_duration
{
  pu_cachedDuration = [self pu_cachedDuration];
  if (pu_cachedDuration)
  {
    v5 = pu_cachedDuration;
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
    [self _pu_setCachedDuration:v5];
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