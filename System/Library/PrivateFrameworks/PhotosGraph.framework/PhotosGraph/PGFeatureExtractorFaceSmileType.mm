@interface PGFeatureExtractorFaceSmileType
- (id)_floatVectorForFaceSmileType:(unsigned __int16)type;
- (id)defaultFloatVectorWithError:(id *)error;
- (id)featureNames;
- (id)floatMatrixWithEntities:(id)entities progressReporter:(id)reporter error:(id *)error;
@end

@implementation PGFeatureExtractorFaceSmileType

- (id)_floatVectorForFaceSmileType:(unsigned __int16)type
{
  if (type <= 2u)
  {
    self = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:qword_27887FC40[type]];
  }

  return self;
}

- (id)floatMatrixWithEntities:(id)entities progressReporter:(id)reporter error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  v7 = objc_alloc_init(MEMORY[0x277D22C60]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = entitiesCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = -[PGFeatureExtractorFaceSmileType _floatVectorForFaceSmileType:](self, "_floatVectorForFaceSmileType:", [*(*(&v16 + 1) + 8 * i) smileType]);
        [v7 appendRow:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)defaultFloatVectorWithError:(id *)error
{
  v3 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:&unk_284485550];

  return v3;
}

- (id)featureNames
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"FaceSmileTypeNotSet";
  v5[1] = @"FaceSmileTypeNoSmile";
  v5[2] = @"FaceSmileTypeSmile";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end