@interface PGFeatureExtractorFaceAgeType
- (id)_floatVectorForFaceAgeType:(unsigned __int16)type;
- (id)defaultFloatVectorWithError:(id *)error;
- (id)featureNames;
- (id)floatMatrixWithEntities:(id)entities progressReporter:(id)reporter error:(id *)error;
@end

@implementation PGFeatureExtractorFaceAgeType

- (id)_floatVectorForFaceAgeType:(unsigned __int16)type
{
  typeCopy = type;
  v4 = [MEMORY[0x277D22C68] zerosOfCount:{-[PGFeatureExtractorFaceAgeType featureLength](self, "featureLength")}];
  v6 = v4;
  if (typeCopy <= 5)
  {
    LODWORD(v5) = 1.0;
    [v4 setFloat:typeCopy atIndex:v5];
  }

  return v6;
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

        v13 = -[PGFeatureExtractorFaceAgeType _floatVectorForFaceAgeType:](self, "_floatVectorForFaceAgeType:", [*(*(&v16 + 1) + 8 * i) ageType]);
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
  v3 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:&unk_284485610];

  return v3;
}

- (id)featureNames
{
  v5[6] = *MEMORY[0x277D85DE8];
  v5[0] = @"FaceAgeTypeNotSet";
  v5[1] = @"FaceAgeTypeBaby";
  v5[2] = @"FaceAgeTypeChild";
  v5[3] = @"FaceAgeTypeYoungAdult";
  v5[4] = @"FaceAgeTypeSenior";
  v5[5] = @"FaceAgeTypeAdult";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end