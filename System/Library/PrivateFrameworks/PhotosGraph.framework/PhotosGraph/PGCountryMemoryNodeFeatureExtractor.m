@interface PGCountryMemoryNodeFeatureExtractor
+ (id)_labelsForVersion:(int64_t)a3;
- (PGCountryMemoryNodeFeatureExtractor)initWithVersion:(int64_t)a3 graph:(id)a4 error:(id *)a5;
@end

@implementation PGCountryMemoryNodeFeatureExtractor

- (PGCountryMemoryNodeFeatureExtractor)initWithVersion:(int64_t)a3 graph:(id)a4 error:(id *)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = [objc_opt_class() _labelsForVersion:a3];
  v7 = MEMORY[0x277D22C90];
  v8 = +[PGGraphLocationCountryNode filter];
  v9 = [v8 relation];
  v16[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v11 = [v7 chain:v10];

  v15.receiver = self;
  v15.super_class = PGCountryMemoryNodeFeatureExtractor;
  v12 = [(PGGraphMemoryNodeFeatureExtractor *)&v15 initWithName:@"Country" featureNames:v6 relation:v11 labelForTargetBlock:&__block_literal_global_81];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)_labelsForVersion:(int64_t)a3
{
  if (a3 == 1)
  {
    return &unk_284486018;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

@end