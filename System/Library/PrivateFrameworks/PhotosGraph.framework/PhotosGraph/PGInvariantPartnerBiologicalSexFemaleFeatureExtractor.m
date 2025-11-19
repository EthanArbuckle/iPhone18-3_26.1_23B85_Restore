@interface PGInvariantPartnerBiologicalSexFemaleFeatureExtractor
- (PGInvariantPartnerBiologicalSexFemaleFeatureExtractor)initWithError:(id *)a3;
@end

@implementation PGInvariantPartnerBiologicalSexFemaleFeatureExtractor

- (PGInvariantPartnerBiologicalSexFemaleFeatureExtractor)initWithError:(id *)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = +[PGInvariantPartnerBiologicalSexFemaleFeatureExtractor name];
  v21[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];

  v6 = MEMORY[0x277D22C90];
  v7 = +[PGGraphMomentNode personInMoment];
  v20[0] = v7;
  v8 = [PGGraphPersonNode filterForBiologicalSex:1];
  v9 = [v8 relation];
  v20[1] = v9;
  v10 = +[PGGraphPersonNode partnerOfPerson];
  v20[2] = v10;
  v11 = +[PGGraphMeNode filter];
  v12 = [v11 relation];
  v20[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
  v14 = [v6 chain:v13];

  v15 = +[PGInvariantPartnerBiologicalSexFemaleFeatureExtractor name];
  v19.receiver = self;
  v19.super_class = PGInvariantPartnerBiologicalSexFemaleFeatureExtractor;
  v16 = [(PGGraphFeatureExtractor *)&v19 initWithName:v15 featureNames:v5 relation:v14 labelForTargetBlock:&__block_literal_global_25];

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

@end