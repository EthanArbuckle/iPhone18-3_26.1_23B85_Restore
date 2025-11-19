@interface PGROIFeatureExtractor
+ (id)_labelsForVersion:(int64_t)a3;
- (PGROIFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4;
@end

@implementation PGROIFeatureExtractor

- (PGROIFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4
{
  v5 = [objc_opt_class() _labelsForVersion:a3];
  v6 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v7 = +[PGGraphMomentNode roiOfMoment];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__PGROIFeatureExtractor_initWithVersion_error___block_invoke;
  v12[3] = &unk_278884998;
  v13 = v6;
  v11.receiver = self;
  v11.super_class = PGROIFeatureExtractor;
  v8 = v6;
  v9 = [(MARelationCollectionFeatureExtractor *)&v11 initWithName:@"ROI" featureNames:v5 relation:v7 labelForEmptyRelation:@"None" labelForTargetBlock:v12];

  return v9;
}

__CFString *__47__PGROIFeatureExtractor_initWithVersion_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 label];
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v4 = @"None";

    v3 = @"None";
  }

  return v3;
}

+ (id)_labelsForVersion:(int64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    v8 = *MEMORY[0x277D27588];
    v13 = *MEMORY[0x277D27590];
    v14 = v8;
    v9 = *MEMORY[0x277D27598];
    v15 = *MEMORY[0x277D275A0];
    v16 = v9;
    v17 = *MEMORY[0x277D27580];
    v18 = @"None";
    v5 = MEMORY[0x277CBEA60];
    v6 = &v13;
    v7 = 6;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v3 = *MEMORY[0x277D27588];
    v19 = *MEMORY[0x277D27590];
    v20 = v3;
    v4 = *MEMORY[0x277D27598];
    v21 = *MEMORY[0x277D275A0];
    v22 = v4;
    v23 = *MEMORY[0x277D27580];
    v5 = MEMORY[0x277CBEA60];
    v6 = &v19;
    v7 = 5;
LABEL_5:
    v10 = [v5 arrayWithObjects:v6 count:{v7, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24}];
    goto LABEL_7;
  }

  v10 = MEMORY[0x277CBEBF8];
LABEL_7:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end