@interface PGFeatureExtractorTaboo
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorTaboo

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  sceneClassifications = [entity sceneClassifications];
  v6 = [MEMORY[0x277D22C68] zerosOfCount:{-[PGFeatureExtractorTaboo featureLength](self, "featureLength")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = sceneClassifications;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) extendedSceneIdentifier] - 2147482870;
        if (v12 <= 9 && ((0x2FFu >> v12) & 1) != 0)
        {
          LODWORD(v13) = 1.0;
          [v6 setFloat:qword_22F78C458[v12] atIndex:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)featureNames
{
  v5[9] = *MEMORY[0x277D85DE8];
  v5[0] = @"Blood";
  v5[1] = @"Demonstration";
  v5[2] = @"FireDevastation";
  v5[3] = @"FloodDevastation";
  v5[4] = @"Funeral";
  v5[5] = @"Hospital";
  v5[6] = @"ReligiousSetting";
  v5[7] = @"VehicleCrash";
  v5[8] = @"War";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:9];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end