@interface PGCountryMemoryNodeFeatureExtractor
+ (id)_labelsForVersion:(int64_t)version;
- (PGCountryMemoryNodeFeatureExtractor)initWithVersion:(int64_t)version graph:(id)graph error:(id *)error;
@end

@implementation PGCountryMemoryNodeFeatureExtractor

- (PGCountryMemoryNodeFeatureExtractor)initWithVersion:(int64_t)version graph:(id)graph error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = [objc_opt_class() _labelsForVersion:version];
  v7 = MEMORY[0x277D22C90];
  v8 = +[PGGraphLocationCountryNode filter];
  relation = [v8 relation];
  v16[0] = relation;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v11 = [v7 chain:v10];

  v15.receiver = self;
  v15.super_class = PGCountryMemoryNodeFeatureExtractor;
  v12 = [(PGGraphMemoryNodeFeatureExtractor *)&v15 initWithName:@"Country" featureNames:v6 relation:v11 labelForTargetBlock:&__block_literal_global_81];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)_labelsForVersion:(int64_t)version
{
  if (version == 1)
  {
    return &unk_284486018;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

@end