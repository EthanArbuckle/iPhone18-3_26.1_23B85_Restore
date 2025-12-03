@interface PGFeatureExtractorFaceSize
- (id)defaultFloatVectorWithError:(id *)error;
- (id)featureNames;
- (id)floatMatrixWithEntities:(id)entities progressReporter:(id)reporter error:(id *)error;
@end

@implementation PGFeatureExtractorFaceSize

- (id)floatMatrixWithEntities:(id)entities progressReporter:(id)reporter error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  v7 = objc_alloc_init(MEMORY[0x277D22C60]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = entitiesCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v18 + 1) + 8 * i) size];
        *&v13 = v13;
        v17 = LODWORD(v13);
        v14 = [objc_alloc(MEMORY[0x277D22C40]) initWithFloats:&v17 count:{-[PGFeatureExtractorFaceSize featureLength](self, "featureLength")}];
        [v7 appendRow:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)defaultFloatVectorWithError:(id *)error
{
  v3 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:&unk_284485520];

  return v3;
}

- (id)featureNames
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"FaceSize";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end