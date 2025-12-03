@interface PGSceneFeatureExtractor
- (PGSceneFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error;
- (id)labelsForVersion:(int64_t)version;
@end

@implementation PGSceneFeatureExtractor

- (id)labelsForVersion:(int64_t)version
{
  v7[13] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEBF8];
  if (version > 2)
  {
    if (version == 3)
    {
      v3 = &unk_284486378;
    }

    else if (version == 4)
    {
      v7[0] = @"Snow";
      v7[1] = @"Sunset_Sunrise";
      v7[2] = @"Flower";
      v7[3] = @"Cityscape";
      v7[4] = @"Waterfall";
      v7[5] = @"Rainbow";
      v7[6] = @"Skateboarding";
      v7[7] = @"Forest";
      v7[8] = @"Airplane";
      v7[9] = @"Bird";
      v7[10] = @"Surfing";
      v7[11] = @"Baby";
      v7[12] = @"Coffee";
      v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:13];
    }
  }

  else
  {
    v4 = &unk_284486360;
    if (version != 2)
    {
      v4 = MEMORY[0x277CBEBF8];
    }

    if (version == 1)
    {
      v3 = &unk_284486348;
    }

    else
    {
      v3 = v4;
    }
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (PGSceneFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error
{
  error = [(PGSceneFeatureExtractor *)self labelsForVersion:version, error];
  v6 = +[PGGraphMomentNode sceneOfMoment];
  v9.receiver = self;
  v9.super_class = PGSceneFeatureExtractor;
  v7 = [(PGGraphFeatureExtractor *)&v9 initWithName:@"Scene" featureNames:error relation:v6 labelForTargetBlock:&__block_literal_global_57723];

  return v7;
}

@end