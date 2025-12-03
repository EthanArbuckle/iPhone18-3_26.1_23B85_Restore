@interface AVPlayerItem(PhotosUICore)
- (uint64_t)px_loadedTimeRangesContainTime:()PhotosUICore;
@end

@implementation AVPlayerItem(PhotosUICore)

- (uint64_t)px_loadedTimeRangesContainTime:()PhotosUICore
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  loadedTimeRanges = [self loadedTimeRanges];
  v5 = [loadedTimeRanges countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(loadedTimeRanges);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        memset(&v14, 0, sizeof(v14));
        if (v9)
        {
          [v9 CMTimeRangeValue];
        }

        range = v14;
        v12 = *a3;
        if (CMTimeRangeContainsTime(&range, &v12))
        {
          v10 = 1;
          goto LABEL_13;
        }
      }

      v6 = [loadedTimeRanges countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  return v10;
}

@end