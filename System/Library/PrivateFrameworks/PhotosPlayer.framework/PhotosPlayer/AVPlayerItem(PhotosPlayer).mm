@interface AVPlayerItem(PhotosPlayer)
- (BOOL)is_isHighFramerate;
- (void)is_enableColorMatching;
- (void)is_setAudioTracksEnabled:()PhotosPlayer;
@end

@implementation AVPlayerItem(PhotosPlayer)

- (void)is_setAudioTracksEnabled:()PhotosPlayer
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [a1 tracks];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = *MEMORY[0x277CE5E48];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 assetTrack];
        v12 = [v11 mediaType];
        v13 = [v12 isEqualToString:v8];

        if (v13)
        {
          if (a3)
          {
            v14 = [v11 isEnabled];
          }

          else
          {
            v14 = 0;
          }

          [v10 setEnabled:v14];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)is_enableColorMatching
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [a1 tracks];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v7 + 1) + 8 * v5++) setDisableColorMatching:0];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)is_isHighFramerate
{
  v1 = [a1 asset];
  v2 = [MEMORY[0x277D3B450] tracksWithMediaType:*MEMORY[0x277CE5EA8] forAsset:v1];
  v3 = [v2 firstObject];

  [v3 nominalFrameRate];
  v5 = v4 >= 30.0;

  return v5;
}

@end