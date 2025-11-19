@interface PGPartOfDayFeatureExtractor
- (PGPartOfDayFeatureExtractor)initWithError:(id *)a3;
@end

@implementation PGPartOfDayFeatureExtractor

- (PGPartOfDayFeatureExtractor)initWithError:(id *)a3
{
  v12[5] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D275E0];
  v12[0] = *MEMORY[0x277D275D0];
  v12[1] = v4;
  v5 = *MEMORY[0x277D275C8];
  v12[2] = *MEMORY[0x277D275C0];
  v12[3] = v5;
  v12[4] = *MEMORY[0x277D275D8];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:5];
  v7 = +[PGGraphMomentNode partOfDayOfMoment];
  v11.receiver = self;
  v11.super_class = PGPartOfDayFeatureExtractor;
  v8 = [(PGGraphFeatureExtractor *)&v11 initWithName:@"PartOfDay" featureNames:v6 relation:v7 labelForTargetBlock:&__block_literal_global_55331];

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

@end