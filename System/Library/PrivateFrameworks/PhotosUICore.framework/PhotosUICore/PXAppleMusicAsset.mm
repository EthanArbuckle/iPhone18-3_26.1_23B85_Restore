@interface PXAppleMusicAsset
- (BOOL)isAudioEqualToAsset:(id)asset;
- (BOOL)isEqual:(id)equal;
- (NSString)assetTagsDescription;
- (NSString)colorGradeCategory;
- (PXAppleMusicAsset)init;
- (PXAppleMusicAsset)initWithConfiguration:(id)configuration;
- (PXAppleMusicAsset)initWithMediaItem:(id)item;
- (PXAudioAsset)previewAudioAsset;
- (PXDisplayAsset)artworkDisplayAsset;
- (id)artworkURLForTargetPixelSize:(CGSize)size;
- (int64_t)pace;
- (void)configureCuesWithVideoEventTimestampsInSeconds:(id)seconds videoEventScores:(id)scores;
- (void)setDuration:(id *)duration;
@end

@implementation PXAppleMusicAsset

- (void)setDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_duration.epoch = duration->var3;
  *&self->_duration.value = v3;
}

- (PXAudioAsset)previewAudioAsset
{
  v2 = [[PXAppleMusicPreviewAsset alloc] initWithOriginalAsset:self];

  return v2;
}

- (id)artworkURLForTargetPixelSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v21 = *MEMORY[0x1E69E9840];
  artworkURLFormat = [(PXAppleMusicAsset *)self artworkURLFormat];
  if (artworkURLFormat)
  {
    *&v7 = width;
    *&v7 = floorf(*&v7);
    v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
    stringValue = [v8 stringValue];

    v10 = height;
    *&v11 = floorf(v10);
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
    stringValue2 = [v12 stringValue];

    v14 = [artworkURLFormat stringByReplacingOccurrencesOfString:@"{w}" withString:stringValue];
    v15 = [v14 stringByReplacingOccurrencesOfString:@"{h}" withString:stringValue2];

    v16 = [MEMORY[0x1E695DFF8] URLWithString:v15];
  }

  else
  {
    v17 = PLStoryGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138412290;
      selfCopy = self;
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

- (void)configureCuesWithVideoEventTimestampsInSeconds:(id)seconds videoEventScores:(id)scores
{
  secondsCopy = seconds;
  scoresCopy = scores;
  v9 = [secondsCopy count];
  if (v9 != [scoresCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAppleMusicAsset.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"videoEventTimestampsInSeconds.count == videoEventScores.count"}];
  }

  v10 = scoresCopy;
  v11 = [v10 count];
  v12 = [PXConcreteAudioCueSource alloc];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85__PXAppleMusicAsset_configureCuesWithVideoEventTimestampsInSeconds_videoEventScores___block_invoke;
  v18[3] = &unk_1E772EBA8;
  v20 = v10;
  v21 = v11;
  v19 = secondsCopy;
  v13 = v10;
  v14 = secondsCopy;
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
  valence = [(PXAppleMusicAsset *)self valence];
  [valence doubleValue];
  [v3 appendFormat:@"valence=%.2f", v5];

  energy = [(PXAppleMusicAsset *)self energy];
  [energy doubleValue];
  [v3 appendFormat:@", arousal=%.2f", v7];

  visualTempo = [(PXAppleMusicAsset *)self visualTempo];
  [visualTempo doubleValue];
  [v3 appendFormat:@", visualTempo=%.2f", v9];

  return v3;
}

- (int64_t)pace
{
  visualTempo = [(PXAppleMusicAsset *)self visualTempo];

  if (!visualTempo)
  {
    return 2;
  }

  standardConfiguration = [MEMORY[0x1E69C08A0] standardConfiguration];
  visualTempo2 = [(PXAppleMusicAsset *)self visualTempo];
  [visualTempo2 doubleValue];

  v6 = PFStoryRecipeSongPaceFromVisualTempo();
  return v6;
}

- (NSString)colorGradeCategory
{
  if (!self->_colorGradeCategory)
  {
    valence = [(PXAppleMusicAsset *)self valence];
    if (valence)
    {
      v6 = valence;
      energy = [(PXAppleMusicAsset *)self energy];

      if (energy)
      {
        valence2 = [(PXAppleMusicAsset *)self valence];
        [valence2 doubleValue];

        energy2 = [(PXAppleMusicAsset *)self energy];
        [energy2 doubleValue];

        v10 = PFStoryColorGradeCategoryFromValenceArousal();
        colorGradeCategory = self->_colorGradeCategory;
        self->_colorGradeCategory = v10;
      }
    }
  }

  v3 = self->_colorGradeCategory;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(PXAppleMusicAsset *)equalCopy identifier];
      identifier2 = [(PXAppleMusicAsset *)self identifier];
      if (identifier == identifier2)
      {
        v7 = 1;
      }

      else
      {
        v7 = [identifier isEqual:identifier2];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isAudioEqualToAsset:(id)asset
{
  assetCopy = asset;
  identifier = [(PXAppleMusicAsset *)self identifier];
  identifier2 = [assetCopy identifier];
  if (identifier == identifier2 || [identifier isEqual:identifier2])
  {
    catalog = [assetCopy catalog];
    v8 = catalog == [(PXAppleMusicAsset *)self catalog];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PXAppleMusicAsset)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAppleMusicAsset.m" lineNumber:91 description:{@"%s is not available as initializer", "-[PXAppleMusicAsset init]"}];

  abort();
}

- (PXAppleMusicAsset)initWithMediaItem:(id)item
{
  itemCopy = item;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__PXAppleMusicAsset_initWithMediaItem___block_invoke;
  v8[3] = &unk_1E773C240;
  v9 = itemCopy;
  v5 = itemCopy;
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

- (PXAppleMusicAsset)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v7.receiver = self;
  v7.super_class = PXAppleMusicAsset;
  v5 = [(PXAppleMusicAsset *)&v7 init];
  if (v5)
  {
    configurationCopy[2](configurationCopy, v5);
  }

  return v5;
}

@end