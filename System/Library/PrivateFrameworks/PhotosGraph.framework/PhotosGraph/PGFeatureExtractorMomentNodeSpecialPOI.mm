@interface PGFeatureExtractorMomentNodeSpecialPOI
- (id)featureNames;
- (id)floatMatrixWithEntities:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureExtractorMomentNodeSpecialPOI

- (id)floatMatrixWithEntities:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 addObject:*(*(&v35 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v10);
  }

  v13 = [v7 count];
  v14 = [(PGFeatureExtractorMomentNodeSpecialPOI *)self featureNames];
  v15 = [v14 count];

  v16 = [MEMORY[0x277D22C60] zerosWithRows:v13 columns:v15];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v8;
  v17 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v32;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v31 + 1) + 8 * j);
        v23 = [PGSpecialPOIResolver alloc];
        v24 = [v22 array];
        v25 = [(PGSpecialPOIResolver *)v23 initWithMomentNodes:v24];

        if ([(PGSpecialPOIResolver *)v25 momentsContainSpecialPOI:1 withMomentRatio:1.0])
        {
          LODWORD(v26) = 1.0;
          [v16 setFloat:v19 atRow:0 column:v26];
        }

        if ([(PGSpecialPOIResolver *)v25 momentsContainSpecialPOI:2 withMomentRatio:1.0])
        {
          LODWORD(v27) = 1.0;
          [v16 setFloat:v19 atRow:1 column:v27];
        }

        ++v19;
      }

      v18 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v18);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [PGSpecialPOIResolver alloc];
  v7 = [v5 array];

  v8 = [(PGSpecialPOIResolver *)v6 initWithMomentNodes:v7];
  v9 = [MEMORY[0x277D22C68] zerosOfCount:{-[PGFeatureExtractorMomentNodeSpecialPOI featureLength](self, "featureLength")}];
  if ([(PGSpecialPOIResolver *)v8 momentsContainSpecialPOI:1 withMomentRatio:1.0])
  {
    LODWORD(v10) = 1.0;
    [v9 setFloat:0 atIndex:v10];
  }

  if ([(PGSpecialPOIResolver *)v8 momentsContainSpecialPOI:2 withMomentRatio:1.0])
  {
    LODWORD(v11) = 1.0;
    [v9 setFloat:1 atIndex:v11];
  }

  return v9;
}

- (id)featureNames
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"Disney";
  v5[1] = @"Universal";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end