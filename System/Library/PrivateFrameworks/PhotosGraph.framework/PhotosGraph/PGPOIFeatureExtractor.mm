@interface PGPOIFeatureExtractor
+ (id)_labelForEmptyRelationForVersion:(int64_t)a3;
+ (id)_labelProcessingForVersion:(int64_t)a3 label:(id)a4;
+ (id)_labelsForVersion:(int64_t)a3;
+ (id)_rawLabelsForVersion:(int64_t)a3;
- (PGPOIFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4;
@end

@implementation PGPOIFeatureExtractor

- (PGPOIFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4
{
  v6 = [objc_opt_class() _labelsForVersion:a3];
  v7 = [objc_opt_class() _labelForEmptyRelationForVersion:a3];
  v8 = MEMORY[0x277CBEB98];
  v9 = [objc_opt_class() _rawLabelsForVersion:a3];
  v10 = [v8 setWithArray:v9];

  v11 = +[PGGraphMomentNode poiOfMoment];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __47__PGPOIFeatureExtractor_initWithVersion_error___block_invoke;
  v16[3] = &unk_27887F4B0;
  v17 = v10;
  v18 = a3;
  v15.receiver = self;
  v15.super_class = PGPOIFeatureExtractor;
  v12 = v10;
  v13 = [(MARelationCollectionFeatureExtractor *)&v15 initWithName:@"POI" featureNames:v6 relation:v11 labelForEmptyRelation:v7 labelForTargetBlock:v16];

  return v13;
}

id __47__PGPOIFeatureExtractor_initWithVersion_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 label];
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v4 = @"None";

    v3 = @"None";
  }

  v5 = [PGPOIFeatureExtractor _labelProcessingForVersion:*(a1 + 40) label:v3];

  return v5;
}

+ (id)_labelForEmptyRelationForVersion:(int64_t)a3
{
  if (a3 == 3)
  {
    v4 = @"None";
    v5 = @"None";
    v6 = [a1 _labelProcessingForVersion:3 label:@"None"];
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return v6;
}

+ (id)_labelProcessingForVersion:(int64_t)a3 label:(id)a4
{
  v6 = a4;
  v7 = v6;
  if ((a3 - 2) >= 2)
  {
    if (a3 == 1)
    {
      v10 = v6;
    }

    else
    {
      v10 = @"unknown";
    }
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [a1 prefix];
    v10 = [v8 stringWithFormat:@"%@_%@", v9, v7];
  }

  return v10;
}

+ (id)_labelsForVersion:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [a1 _rawLabelsForVersion:?];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [a1 _labelProcessingForVersion:a3 label:{*(*(&v15 + 1) + 8 * i), v15}];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_rawLabelsForVersion:(int64_t)a3
{
  v23[16] = *MEMORY[0x277D85DE8];
  if ((a3 - 1) < 2)
  {
    v3 = *MEMORY[0x277D27540];
    v23[0] = *MEMORY[0x277D27558];
    v23[1] = v3;
    v4 = *MEMORY[0x277D27570];
    v23[2] = *MEMORY[0x277D27560];
    v23[3] = v4;
    v5 = *MEMORY[0x277D27538];
    v23[4] = *MEMORY[0x277D27508];
    v23[5] = v5;
    v6 = *MEMORY[0x277D27500];
    v23[6] = *MEMORY[0x277D27518];
    v23[7] = v6;
    v7 = *MEMORY[0x277D27550];
    v23[8] = *MEMORY[0x277D27548];
    v23[9] = v7;
    v8 = *MEMORY[0x277D274F8];
    v23[10] = *MEMORY[0x277D27568];
    v23[11] = v8;
    v9 = *MEMORY[0x277D27528];
    v23[12] = *MEMORY[0x277D27510];
    v23[13] = v9;
    v10 = *MEMORY[0x277D27530];
    v23[14] = *MEMORY[0x277D27520];
    v23[15] = v10;
    v11 = MEMORY[0x277CBEA60];
    v12 = v23;
    v13 = 16;
LABEL_5:
    v19 = [v11 arrayWithObjects:v12 count:v13];
    goto LABEL_7;
  }

  if (a3 == 3)
  {
    v14 = *MEMORY[0x277D27540];
    v22[0] = *MEMORY[0x277D27558];
    v22[1] = v14;
    v15 = *MEMORY[0x277D27508];
    v22[2] = *MEMORY[0x277D27570];
    v22[3] = v15;
    v16 = *MEMORY[0x277D27518];
    v22[4] = *MEMORY[0x277D27538];
    v22[5] = v16;
    v17 = *MEMORY[0x277D27548];
    v22[6] = *MEMORY[0x277D27500];
    v22[7] = v17;
    v18 = *MEMORY[0x277D274F8];
    v22[8] = *MEMORY[0x277D27568];
    v22[9] = v18;
    v22[10] = *MEMORY[0x277D27528];
    v22[11] = @"None";
    v11 = MEMORY[0x277CBEA60];
    v12 = v22;
    v13 = 12;
    goto LABEL_5;
  }

  v19 = MEMORY[0x277CBEBF8];
LABEL_7:
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end