@interface PGInvariantPartnerBiologicalSexMaleMemoryNodeFeatureExtractor
- (PGInvariantPartnerBiologicalSexMaleMemoryNodeFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGInvariantPartnerBiologicalSexMaleMemoryNodeFeatureExtractor

- (PGInvariantPartnerBiologicalSexMaleMemoryNodeFeatureExtractor)initWithError:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = +[PGInvariantPartnerBiologicalSexMaleMemoryNodeFeatureExtractor name];
  v22[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];

  v5 = MEMORY[0x277D22C90];
  v6 = +[PGGraphPersonNode filterExcludingMe];
  relation = [v6 relation];
  v21[0] = relation;
  v8 = [PGGraphPersonNode filterForBiologicalSex:2];
  relation2 = [v8 relation];
  v21[1] = relation2;
  v10 = +[PGGraphPersonNode partnerOfPerson];
  v21[2] = v10;
  v11 = +[PGGraphMeNode filter];
  relation3 = [v11 relation];
  v21[3] = relation3;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  v14 = [v5 chain:v13];

  v15 = +[PGInvariantPartnerBiologicalSexMaleMemoryNodeFeatureExtractor name];
  v20.receiver = self;
  v20.super_class = PGInvariantPartnerBiologicalSexMaleMemoryNodeFeatureExtractor;
  v16 = [(PGGraphMemoryNodeFeatureExtractor *)&v20 initWithName:v15 featureNames:v4 relation:v14 labelForTargetBlock:&__block_literal_global_39];

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

@end