@interface PGFeatureExtractorAssetPlaybackStyle
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorAssetPlaybackStyle

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  v5 = MEMORY[0x277D22C68];
  entityCopy = entity;
  v7 = [v5 zerosOfCount:{-[PGFeatureExtractorAssetPlaybackStyle featureLength](self, "featureLength")}];
  playbackStyle = [entityCopy playbackStyle];

  if (playbackStyle <= 5)
  {
    LODWORD(v9) = 1.0;
    [v7 setFloat:playbackStyle atIndex:v9];
  }

  return v7;
}

- (id)featureNames
{
  v5[6] = *MEMORY[0x277D85DE8];
  v5[0] = @"Unsupported";
  v5[1] = @"Image";
  v5[2] = @"ImageAnimated";
  v5[3] = @"LivePhoto";
  v5[4] = @"Video";
  v5[5] = @"VideoLooping";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end