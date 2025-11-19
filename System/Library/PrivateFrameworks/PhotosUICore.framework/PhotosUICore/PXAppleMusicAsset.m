@interface PXAppleMusicAsset
- (BOOL)isAudioEqualToAsset:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)assetTagsDescription;
- (NSString)colorGradeCategory;
- (PXAppleMusicAsset)init;
- (PXAppleMusicAsset)initWithConfiguration:(id)a3;
- (PXAppleMusicAsset)initWithMediaItem:(id)a3;
- (PXAudioAsset)previewAudioAsset;
- (PXDisplayAsset)artworkDisplayAsset;
- (id)artworkURLForTargetPixelSize:(CGSize)a3;
- (int64_t)pace;
- (void)configureCuesWithVideoEventTimestampsInSeconds:(id)a3 videoEventScores:(id)a4;
- (void)setDuration:(id *)a3;
@end

@implementation PXAppleMusicAsset

- (void)setDuration:(id *)a3
{
  v3 = *&a3->var0;
  self->_duration.epoch = a3->var3;
  *&self->_duration.value = v3;
}

- (PXAudioAsset)previewAudioAsset
{
  v2 = [[PXAppleMusicPreviewAsset alloc] initWithOriginalAsset:self];

  return v2;
}

- (id)artworkURLForTargetPixelSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v21 = *MEMORY[0x1E69E9840];
  v6 = [(PXAppleMusicAsset *)self artworkURLFormat];
  if (v6)
  {
    *&v7 = width;
    *&v7 = floorf(*&v7);
    v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
    v9 = [v8 stringValue];

    v10 = height;
    *&v11 = floorf(v10);
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
    v13 = [v12 stringValue];

    v14 = [v6 stringByReplacingOccurrencesOfString:@"{w}" withString:v9];
    v15 = [v14 stringByReplacingOccurrencesOfString:@"{h}" withString:v13];

    v16 = [MEMORY[0x1E695DFF8] URLWithString:v15];
  }

  else
  {
    v17 = PLStoryGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138412290;
      v20 = self;
      _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEBUG, "%@ was asked for an artwork URL, but the required URL format string is missing.", &v19, 0xCu);
    }

    v16 = 0;
  }

  return v16;
}

- (PXDisplayAsset)artworkDisplayAsset
{
  v2 = [[PXAppleMusicArtworkAsset alloc] initWithMusicAsset:self];

  return v2;
}

- (void)configureCuesWithVideoEventTimestampsInSeconds:(id)a3 videoEventScores:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 count];
  if (v9 != [v8 count])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXAppleMusicAsset.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"videoEventTimestampsInSeconds.count == videoEventScores.count"}];
  }

  v10 = v8;
  v11 = [v10 count];
  v12 = [PXConcreteAudioCueSource alloc];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85__PXAppleMusicAsset_configureCuesWithVideoEventTimestampsInSeconds_videoEventScores___block_invoke;
  v18[3] = &unk_1E772EBA8;
  v20 = v10;
  v21 = v11;
  v19 = v7;
  v13 = v10;
  v14 = v7;
  v15 = [(PXConcreteAudioCueSource *)v12 initWithNumberOfCues:v11 configuration:v18];
  cueSource = self->_cueSource;
  self->_cueSource = v15;
}

void __85__PXAppleMusicAsset_configureCuesWithVideoEventTimestampsInSeconds_videoEventScores___block_invoke(uint64_t a1, CMTime *a2)
{
  v4 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v5 = 0;
    do
    {
      v6 = [v4 objectAtIndexedSubscript:v5];
      [v6 floatValue];
      CMTimeMakeWithSeconds(&v11, v7, PXAudioDefaultCMTimeScale);
      *a2 = v11;

      v8 = [*(a1 + 40) objectAtIndexedSubscript:v5];
      v9 = [v8 intValue];

      if (v9 >= 0x384)
      {
        v10 = 0;
      }

      else
      {
        v10 = 3;
      }

      if (v9 < 0x2BC)
      {
        v10 = 4;
      }

      if (v9 < 0x1F4)
      {
        v10 = 2;
      }

      if (v9 < 300)
      {
        v10 = 1;
      }

      a2[1].value = v10;
      ++v5;
      a2 = (a2 + 32);
    }

    while (v5 < *(a1 + 48));
  }
}

- (NSString)assetTagsDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(PXAppleMusicAsset *)self valence];
  [v4 doubleValue];
  [v3 appendFormat:@"valence=%.2f", v5];

  v6 = [(PXAppleMusicAsset *)self energy];
  [v6 doubleValue];
  [v3 appendFormat:@", arousal=%.2f", v7];

  v8 = [(PXAppleMusicAsset *)self visualTempo];
  [v8 doubleValue];
  [v3 appendFormat:@", visualTempo=%.2f", v9];

  return v3;
}

- (int64_t)pace
{
  v3 = [(PXAppleMusicAsset *)self visualTempo];

  if (!v3)
  {
    return 2;
  }

  v4 = [MEMORY[0x1E69C08A0] standardConfiguration];
  v5 = [(PXAppleMusicAsset *)self visualTempo];
  [v5 doubleValue];

  v6 = PFStoryRecipeSongPaceFromVisualTempo();
  return v6;
}

- (NSString)colorGradeCategory
{
  if (!self->_colorGradeCategory)
  {
    v5 = [(PXAppleMusicAsset *)self valence];
    if (v5)
    {
      v6 = v5;
      v7 = [(PXAppleMusicAsset *)self energy];

      if (v7)
      {
        v8 = [(PXAppleMusicAsset *)self valence];
        [v8 doubleValue];

        v9 = [(PXAppleMusicAsset *)self energy];
        [v9 doubleValue];

        v10 = PFStoryColorGradeCategoryFromValenceArousal();
        colorGradeCategory = self->_colorGradeCategory;
        self->_colorGradeCategory = v10;
      }
    }
  }

  v3 = self->_colorGradeCategory;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PXAppleMusicAsset *)v4 identifier];
      v6 = [(PXAppleMusicAsset *)self identifier];
      if (v5 == v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = [v5 isEqual:v6];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isAudioEqualToAsset:(id)a3
{
  v4 = a3;
  v5 = [(PXAppleMusicAsset *)self identifier];
  v6 = [v4 identifier];
  if (v5 == v6 || [v5 isEqual:v6])
  {
    v7 = [v4 catalog];
    v8 = v7 == [(PXAppleMusicAsset *)self catalog];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PXAppleMusicAsset)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAppleMusicAsset.m" lineNumber:91 description:{@"%s is not available as initializer", "-[PXAppleMusicAsset init]"}];

  abort();
}

- (PXAppleMusicAsset)initWithMediaItem:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__PXAppleMusicAsset_initWithMediaItem___block_invoke;
  v8[3] = &unk_1E773C240;
  v9 = v4;
  v5 = v4;
  v6 = [(PXAppleMusicAsset *)self initWithConfiguration:v8];

  return v6;
}

void __39__PXAppleMusicAsset_initWithMediaItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E696FAB8]];
  [v3 setStoreID:v4];

  v5 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E696FB88]];
  [v3 setTitle:v5];

  v6 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E696F930]];
  [v3 setArtistName:v6];

  v7 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E696F918]];
  [v3 setAlbumTitle:v7];

  v8 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E696FAB0]];
  [v8 doubleValue];
  v10 = v9;

  if (v10 <= 0.0)
  {
    v12 = **&MEMORY[0x1E6960C70];
  }

  else
  {
    CMTimeMakeWithSeconds(&v12, v10, PXAudioDefaultCMTimeScale);
  }

  v11 = v12;
  [v3 setDuration:&v11];
  [v3 setFlags:{objc_msgSend(*(a1 + 32), "isExplicitItem")}];
  [v3 setArtworkURLFormat:0];
  [v3 setSongURL:0];
  [v3 setIntroPreviewURL:0];
  [v3 setVisualTempo:0];
  [v3 setLoudnessMainPeak:0];
  [v3 setLoudnessMainValue:0];
}

- (PXAppleMusicAsset)initWithConfiguration:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PXAppleMusicAsset;
  v5 = [(PXAppleMusicAsset *)&v7 init];
  if (v5)
  {
    v4[2](v4, v5);
  }

  return v5;
}

@end