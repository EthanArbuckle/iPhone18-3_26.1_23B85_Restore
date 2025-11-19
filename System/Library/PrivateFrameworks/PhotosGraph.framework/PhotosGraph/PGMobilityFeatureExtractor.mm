@interface PGMobilityFeatureExtractor
+ (id)_labelsForVersion:(int64_t)a3;
- (PGMobilityFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4;
@end

@implementation PGMobilityFeatureExtractor

- (PGMobilityFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4
{
  v5 = [objc_opt_class() _labelsForVersion:a3];
  v6 = +[PGGraphMomentNode mobilityOfMoment];
  v9.receiver = self;
  v9.super_class = PGMobilityFeatureExtractor;
  v7 = [(MARelationCollectionFeatureExtractor *)&v9 initWithName:@"Mobility" featureNames:v5 relation:v6 labelForEmptyRelation:@"None" labelForTargetBlock:&__block_literal_global_58381];

  return v7;
}

+ (id)_labelsForVersion:(int64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    v8 = *MEMORY[0x277D274D0];
    v13 = *MEMORY[0x277D274E0];
    v14 = v8;
    v9 = *MEMORY[0x277D274E8];
    v15 = *MEMORY[0x277D274D8];
    v16 = v9;
    v17 = @"None";
    v5 = MEMORY[0x277CBEA60];
    v6 = &v13;
    v7 = 5;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v3 = *MEMORY[0x277D274D0];
    v18 = *MEMORY[0x277D274E0];
    v19 = v3;
    v4 = *MEMORY[0x277D274E8];
    v20 = *MEMORY[0x277D274D8];
    v21 = v4;
    v5 = MEMORY[0x277CBEA60];
    v6 = &v18;
    v7 = 4;
LABEL_5:
    v10 = [v5 arrayWithObjects:v6 count:{v7, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22}];
    goto LABEL_7;
  }

  v10 = MEMORY[0x277CBEBF8];
LABEL_7:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end