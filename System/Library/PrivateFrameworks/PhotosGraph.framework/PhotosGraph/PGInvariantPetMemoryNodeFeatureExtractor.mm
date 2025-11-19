@interface PGInvariantPetMemoryNodeFeatureExtractor
+ (id)_labelProcessingForPetNodeSpecies:(unint64_t)a3;
+ (id)_labelsForVersion:(int64_t)a3;
+ (id)_nodeProcessingForVersion:(int64_t)a3 node:(id)a4;
- (PGInvariantPetMemoryNodeFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4;
@end

@implementation PGInvariantPetMemoryNodeFeatureExtractor

- (PGInvariantPetMemoryNodeFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = [objc_opt_class() _labelsForVersion:a3];
  v7 = MEMORY[0x277D22C90];
  v8 = +[PGGraphPetNode filter];
  v9 = [v8 relation];
  v17[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v11 = [v7 chain:v10];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__PGInvariantPetMemoryNodeFeatureExtractor_initWithVersion_error___block_invoke;
  v16[3] = &__block_descriptor_40_e38___NSString_24__0__PGGraphPetNode_8__16l;
  v16[4] = a3;
  v15.receiver = self;
  v15.super_class = PGInvariantPetMemoryNodeFeatureExtractor;
  v12 = [(PGGraphMemoryNodeFeatureExtractor *)&v15 initWithName:@"InvariantPet" featureNames:v6 relation:v11 labelForTargetBlock:v16];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)_labelProcessingForPetNodeSpecies:(unint64_t)a3
{
  v5 = @"Pet";
  switch(a3)
  {
    case 2uLL:
      v7 = @"_Dog";
      goto LABEL_7;
    case 1uLL:
      v7 = @"_Cat";
LABEL_7:
      v3 = [@"Pet" stringByAppendingString:v7];
      break;
    case 0uLL:
      v3 = @"Pet";
      v6 = @"Pet";
      break;
  }

  return v3;
}

+ (id)_nodeProcessingForVersion:(int64_t)a3 node:(id)a4
{
  v6 = a4;
  v7 = [v6 petSpecies];
  if (a3 == 2)
  {
    v8 = [a1 _labelProcessingForPetNodeSpecies:v7];
  }

  else
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v8 = [v6 label];
  }

  a1 = v8;
LABEL_6:

  return a1;
}

+ (id)_labelsForVersion:(int64_t)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    v5 = [a1 _labelProcessingForPetNodeSpecies:0];
    v10[0] = v5;
    v6 = [a1 _labelProcessingForPetNodeSpecies:1];
    v10[1] = v6;
    v7 = [a1 _labelProcessingForPetNodeSpecies:2];
    v10[2] = v7;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  }

  else if (a3 == 1)
  {
    v11[0] = @"Pet";
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

@end