@interface AVPlayerItem(TLExtensions)
- (TLAlertQueuePlayerItemHapticTracks)tl_hapticTracks;
@end

@implementation AVPlayerItem(TLExtensions)

- (TLAlertQueuePlayerItemHapticTracks)tl_hapticTracks
{
  v1 = a1;
  v37 = *MEMORY[0x1E69E9840];
  [a1 tracks];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = v29 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (!v3)
  {

    v5 = 0;
    goto LABEL_22;
  }

  v4 = v3;
  v23 = v1;
  v5 = 0;
  v6 = 0;
  v7 = *v27;
  v8 = *MEMORY[0x1E69875C8];
  v24 = *MEMORY[0x1E6987580];
  obj = v2;
  while (2)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v27 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v26 + 1) + 8 * i);
      v11 = [v10 assetTrack];
      v12 = [v11 mediaType];
      v13 = [v12 isEqualToString:v8];

      if (!v13)
      {
        goto LABEL_16;
      }

      if ([v11 hasMediaCharacteristic:v24])
      {
        v14 = v10;
        v15 = v6;
        v16 = v5;
        if (!v5)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v16 = v5;
        v14 = v5;
        v15 = v10;
        if (!v6)
        {
LABEL_14:
          v17 = v10;
          v16 = v14;
          v6 = v15;
          if (!v15)
          {
LABEL_15:
            v5 = v16;
            goto LABEL_16;
          }

          goto LABEL_12;
        }
      }

      if (!v6)
      {
        goto LABEL_15;
      }

LABEL_12:
      v5 = v16;
      if (v16)
      {

        v2 = obj;
        v1 = v23;
LABEL_19:
        v18 = [[TLAlertQueuePlayerItemHapticTracks alloc] initWithHapticPlayerItemTrack:v6 attenuatedHapticPlayerItemTrack:v5];
        v19 = TLLogPlayback();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v31 = v1;
          v32 = 2114;
          v33 = v6;
          v34 = 2114;
          v35 = v5;
          _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "Found haptic tracks for %{public}@. hapticPlayerItemTrack = %{public}@, attenuatedHapticPlayerItemTrack = %{public}@.", buf, 0x20u);
        }

        goto LABEL_25;
      }

LABEL_16:
    }

    v2 = obj;
    v4 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v4)
    {
      continue;
    }

    break;
  }

  v1 = v23;
  if (v6)
  {
    goto LABEL_19;
  }

LABEL_22:
  v19 = TLLogPlayback();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v2 count];
    *buf = 138543874;
    v31 = v1;
    v32 = 2048;
    v33 = v20;
    v34 = 2114;
    v35 = v2;
    _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "Cannot find any haptic tracks for %{public}@. Available tracks (%lu): %{public}@", buf, 0x20u);
  }

  v6 = 0;
  v18 = 0;
LABEL_25:

  v21 = *MEMORY[0x1E69E9840];

  return v18;
}

@end