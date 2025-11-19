@interface PGAudioMemoryNodeFeatureExtractor
- (PGAudioMemoryNodeFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4;
- (id)labelsForVersion:(int64_t)a3;
@end

@implementation PGAudioMemoryNodeFeatureExtractor

- (id)labelsForVersion:(int64_t)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v6[0] = @"ExcitementAudio";
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (PGAudioMemoryNodeFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = [(PGAudioMemoryNodeFeatureExtractor *)self labelsForVersion:a3, a4];
  v6 = MEMORY[0x277D22C90];
  v7 = +[PGGraphAudioFeatureNode filter];
  v8 = [v7 relation];
  v16[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v10 = [v6 chain:v9];

  v11 = +[PGAudioMemoryNodeFeatureExtractor name];
  v15.receiver = self;
  v15.super_class = PGAudioMemoryNodeFeatureExtractor;
  v12 = [(PGGraphMemoryNodeFeatureExtractor *)&v15 initWithName:v11 featureNames:v5 relation:v10 labelForTargetBlock:&__block_literal_global_19237];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

@end