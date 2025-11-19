@interface AVAsset(PhotosUI)
- (void)pu_duration;
- (void)pu_loadDurationWithCompletionHandler:()PhotosUI;
@end

@implementation AVAsset(PhotosUI)

- (void)pu_loadDurationWithCompletionHandler:()PhotosUI
{
  v4 = a3;
  v5 = [a1 pu_cachedDuration];
  v6 = v5;
  if (v5)
  {
    location[0] = 0;
    location[1] = 0;
    v18 = 0;
    [v5 CMTimeValue];
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
    objc_initWeak(location, a1);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __58__AVAsset_PhotosUI__pu_loadDurationWithCompletionHandler___block_invoke;
    v12 = &unk_1E7B7B3B0;
    objc_copyWeak(&v14, location);
    v13 = v4;
    v8 = _Block_copy(&v9);
    if ([a1 statusOfValueForKey:@"duration" error:{0, v9, v10, v11, v12}] == 2)
    {
      v8[2](v8);
    }

    else
    {
      [a1 loadValuesAsynchronouslyForKeys:&unk_1F2B7CC50 completionHandler:v8];
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }
}

- (void)pu_duration
{
  v4 = [a1 pu_cachedDuration];
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
    [a1 _pu_setCachedDuration:v5];
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