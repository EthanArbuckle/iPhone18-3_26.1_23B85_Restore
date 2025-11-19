@interface PGInvariantPartnerFeatureExtractor
- (PGInvariantPartnerFeatureExtractor)initWithError:(id *)a3;
@end

@implementation PGInvariantPartnerFeatureExtractor

- (PGInvariantPartnerFeatureExtractor)initWithError:(id *)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D275B8];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v5 = MEMORY[0x277D22C90];
  v6 = +[PGGraphMomentNode personInMoment];
  v16[0] = v6;
  v7 = +[PGGraphPersonNode partnerOfPerson];
  v16[1] = v7;
  v8 = +[PGGraphMeNode filter];
  v9 = [v8 relation];
  v16[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v11 = [v5 chain:v10];

  v15.receiver = self;
  v15.super_class = PGInvariantPartnerFeatureExtractor;
  v12 = [(PGGraphFeatureExtractor *)&v15 initWithName:@"Partner" featureNames:v4 relation:v11 labelForTargetBlock:&__block_literal_global_44439];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

@end