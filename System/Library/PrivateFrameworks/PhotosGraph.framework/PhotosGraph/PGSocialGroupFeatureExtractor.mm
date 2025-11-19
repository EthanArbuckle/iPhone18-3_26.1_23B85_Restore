@interface PGSocialGroupFeatureExtractor
- (PGSocialGroupFeatureExtractor)initWithError:(id *)a3;
@end

@implementation PGSocialGroupFeatureExtractor

- (PGSocialGroupFeatureExtractor)initWithError:(id *)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = @"SocialGroup";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v5 = MEMORY[0x277D22C90];
  v6 = +[PGGraphMomentNode socialGroupInMoment];
  v13 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v8 = [v5 chain:v7];

  v12.receiver = self;
  v12.super_class = PGSocialGroupFeatureExtractor;
  v9 = [(PGGraphFeatureExtractor *)&v12 initWithName:@"CHILD" featureNames:v4 relation:v8 labelForTargetBlock:&__block_literal_global_16272];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

@end