@interface PGSceneMemoryNodeFeatureExtractor
- (PGSceneMemoryNodeFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4;
- (id)labelsForVersion:(int64_t)a3;
@end

@implementation PGSceneMemoryNodeFeatureExtractor

- (id)labelsForVersion:(int64_t)a3
{
  v7[17] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEBF8];
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v3 = &unk_2844863C0;
    }

    else if (a3 == 4)
    {
      v7[0] = @"Snow";
      v7[1] = @"SunriseSunset";
      v7[2] = @"Cityscape";
      v7[3] = @"Waterfall";
      v7[4] = @"Rainbow";
      v7[5] = @"Skateboarding";
      v7[6] = @"Forest";
      v7[7] = @"Airplane";
      v7[8] = @"Bird";
      v7[9] = @"Surfing";
      v7[10] = @"Coffee";
      v7[11] = @"Biking";
      v7[12] = @"Table";
      v7[13] = @"Cooking";
      v7[14] = @"SpringBloom";
      v7[15] = @"AutumnFoliage";
      v7[16] = @"PlayTime";
      v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:17];
    }
  }

  else
  {
    v4 = &unk_2844863A8;
    if (a3 != 2)
    {
      v4 = MEMORY[0x277CBEBF8];
    }

    if (a3 == 1)
    {
      v3 = &unk_284486390;
    }

    else
    {
      v3 = v4;
    }
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (PGSceneMemoryNodeFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = [(PGSceneMemoryNodeFeatureExtractor *)self labelsForVersion:a3, a4];
  v6 = MEMORY[0x277D22C90];
  v7 = +[PGGraphSceneFeatureNode filter];
  v8 = [v7 relation];
  v15[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v10 = [v6 chain:v9];

  v14.receiver = self;
  v14.super_class = PGSceneMemoryNodeFeatureExtractor;
  v11 = [(PGGraphMemoryNodeFeatureExtractor *)&v14 initWithName:@"Scene" featureNames:v5 relation:v10 labelForTargetBlock:&__block_literal_global_156];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

@end