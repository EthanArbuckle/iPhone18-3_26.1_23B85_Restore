@interface PGInvariantPetFeatureExtractor
+ (id)_labelProcessingForPetNodeSpecies:(unint64_t)species;
+ (id)_labelsForVersion:(int64_t)version;
+ (id)_nodeProcessingForVersion:(int64_t)version node:(id)node;
- (PGInvariantPetFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error;
@end

@implementation PGInvariantPetFeatureExtractor

- (PGInvariantPetFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error
{
  v6 = [objc_opt_class() _labelsForVersion:version];
  v7 = +[PGGraphMomentNode petPresentInMoment];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__PGInvariantPetFeatureExtractor_initWithVersion_error___block_invoke;
  v11[3] = &__block_descriptor_40_e38___NSString_24__0__PGGraphPetNode_8__16l;
  v11[4] = version;
  v10.receiver = self;
  v10.super_class = PGInvariantPetFeatureExtractor;
  v8 = [(PGGraphFeatureExtractor *)&v10 initWithName:@"InvariantPet" featureNames:v6 relation:v7 labelForTargetBlock:v11];

  return v8;
}

+ (id)_labelProcessingForPetNodeSpecies:(unint64_t)species
{
  v5 = @"Pet";
  switch(species)
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

+ (id)_nodeProcessingForVersion:(int64_t)version node:(id)node
{
  nodeCopy = node;
  petSpecies = [nodeCopy petSpecies];
  if (version == 2)
  {
    label = [self _labelProcessingForPetNodeSpecies:petSpecies];
  }

  else
  {
    if (version != 1)
    {
      goto LABEL_6;
    }

    label = [nodeCopy label];
  }

  self = label;
LABEL_6:

  return self;
}

+ (id)_labelsForVersion:(int64_t)version
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (version == 2)
  {
    v5 = [self _labelProcessingForPetNodeSpecies:0];
    v10[0] = v5;
    v6 = [self _labelProcessingForPetNodeSpecies:1];
    v10[1] = v6;
    v7 = [self _labelProcessingForPetNodeSpecies:2];
    v10[2] = v7;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  }

  else if (version == 1)
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