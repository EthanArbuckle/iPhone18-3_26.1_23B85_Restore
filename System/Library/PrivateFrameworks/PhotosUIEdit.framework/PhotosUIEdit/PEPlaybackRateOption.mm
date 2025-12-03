@interface PEPlaybackRateOption
+ (id)_playbackRateOptionsForFrameRate:(unint64_t)rate;
+ (id)playbackRateOptionsForAsset:(id)asset;
+ (id)playbackRateOptionsForEditSource:(id)source;
- (NSString)localizedSubtitle;
- (NSString)localizedTitle;
- (PEPlaybackRateOption)initWithType:(unint64_t)type videoFrameRate:(unint64_t)rate;
- (float)playbackRate;
@end

@implementation PEPlaybackRateOption

- (float)playbackRate
{
  type = [(PEPlaybackRateOption *)self type];
  result = 1.0;
  if (type - 1 <= 4)
  {
    return flt_25E75DD50[type - 1];
  }

  return result;
}

- (NSString)localizedSubtitle
{
  if ([(PEPlaybackRateOption *)self videoFrameRate])
  {
    videoFrameRate = [(PEPlaybackRateOption *)self videoFrameRate];
    [(PEPlaybackRateOption *)self playbackRate];
    v5 = vcvtps_s32_f32(v4 * videoFrameRate);
    v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v6 setNumberStyle:0];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    v8 = [v6 stringFromNumber:v7];

    v9 = PELocalizedString(@"PlaybackRateOptionFPS");
    v10 = PEStringWithValidatedFormat();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)localizedTitle
{
  v3 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v3 setNumberStyle:3];
  v4 = MEMORY[0x277CCABB0];
  [(PEPlaybackRateOption *)self playbackRate];
  v5 = [v4 numberWithFloat:?];
  v6 = [v3 stringFromNumber:v5];

  return v6;
}

- (PEPlaybackRateOption)initWithType:(unint64_t)type videoFrameRate:(unint64_t)rate
{
  v7.receiver = self;
  v7.super_class = PEPlaybackRateOption;
  result = [(PEPlaybackRateOption *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_videoFrameRate = rate;
  }

  return result;
}

+ (id)_playbackRateOptionsForFrameRate:(unint64_t)rate
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (rate)
  {
    v5 = [[PEPlaybackRateOption alloc] initWithType:0 videoFrameRate:rate];
    [v4 addObject:v5];

    if (rate >= 0x32)
    {
      v6 = [[PEPlaybackRateOption alloc] initWithType:1 videoFrameRate:rate];
      [v4 addObject:v6];

      if (rate >= 0x64)
      {
        v7 = [[PEPlaybackRateOption alloc] initWithType:2 videoFrameRate:rate];
        [v4 addObject:v7];

        v8 = [[PEPlaybackRateOption alloc] initWithType:3 videoFrameRate:rate];
        [v4 addObject:v8];

        if (rate >= 0xC8)
        {
          v9 = [[PEPlaybackRateOption alloc] initWithType:4 videoFrameRate:rate];
          [v4 addObject:v9];

          v10 = [[PEPlaybackRateOption alloc] initWithType:5 videoFrameRate:rate];
          [v4 addObject:v10];
        }
      }
    }
  }

  v11 = [MEMORY[0x277CBEA60] arrayWithArray:v4];

  return v11;
}

+ (id)playbackRateOptionsForAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy mediaType] == 2)
  {
    [assetCopy fetchPropertySetsIfNeeded];
    photosInfoPanelExtendedProperties = [assetCopy photosInfoPanelExtendedProperties];
    v5 = [photosInfoPanelExtendedProperties fps];
    [v5 floatValue];
    v7 = v6;

    v8 = [PEPlaybackRateOption _playbackRateOptionsForFrameRate:v7];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

+ (id)playbackRateOptionsForEditSource:(id)source
{
  v17 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x277CE63D8];
    videoURL = [sourceCopy videoURL];
    v6 = [v4 assetWithURL:videoURL];

    v14 = 0;
    [MEMORY[0x277D2D048] nominalFrameRateForAsset:v6 error:&v14];
    v8 = v7;
    v9 = v14;
    if (v9)
    {
      v11 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v9;
        _os_log_impl(&dword_25E6E9000, v11, OS_LOG_TYPE_ERROR, "Failed to load frame rate for supportedPlaybackRatesForEditSource: %@", buf, 0xCu);
      }

      v12 = MEMORY[0x277CBEBF8];
    }

    else
    {
      LODWORD(v10) = v8;
      v12 = +[PEPlaybackRateOption _playbackRateOptionsForFrameRate:](PEPlaybackRateOption, "_playbackRateOptionsForFrameRate:", [MEMORY[0x277D2D048] nominalFrameRateRoundedToNearestTraditionalFrameRate:v10]);
    }
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

@end