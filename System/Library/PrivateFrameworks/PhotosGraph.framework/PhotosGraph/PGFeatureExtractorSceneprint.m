@interface PGFeatureExtractorSceneprint
- (id)_generateErrorWithErrorCode:(int64_t)a3 message:(id)a4 underlyingError:(id)a5;
- (id)featureNames;
- (id)featureValuesForAssets:(id)a3 error:(id *)a4;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureExtractorSceneprint

- (id)_generateErrorWithErrorCode:(int64_t)a3 message:(id)a4 underlyingError:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277CBEB38];
  v9 = a4;
  v10 = objc_alloc_init(v8);
  [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCA450]];

  if (v7)
  {
    [v10 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotosGraph.PGFeatureExtractorScenePrint" code:a3 userInfo:v10];

  return v11;
}

- (id)featureValuesForAssets:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  if (a4)
  {
    *a4 = [(PGFeatureExtractorSceneprint *)self _generateErrorWithErrorCode:1 message:@"PGFingerprintVersionAssetPrintTypeScene2048 print is deprecated. Use PGFingerprintVersionAssetPrintTypeSceneCLIP768 instead." underlyingError:0];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
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

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [MEMORY[0x277D22C68] vectorRepeatingFloat:-[PGFeatureExtractorSceneprint featureLength](self count:{"featureLength", v18), 0.0}];
        v15 = [v13 localIdentifier];
        [v7 setObject:v14 forKeyedSubscript:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a3;
  v8 = [v6 arrayWithObjects:&v14 count:1];
  v9 = [(PGFeatureExtractorSceneprint *)self featureValuesForAssets:v8 error:a4, v14, v15];
  v10 = [v7 localIdentifier];

  v11 = [v9 objectForKeyedSubscript:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)featureNames
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[PGFeatureExtractorSceneprint featureLength](self, "featureLength")}];
  if ([(PGFeatureExtractorSceneprint *)self featureLength]>= 1)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%u", @"SP", v5 - 1];
      [v3 setObject:v6 atIndexedSubscript:v4];

      v4 = v5;
    }

    while ([(PGFeatureExtractorSceneprint *)self featureLength]> v5++);
  }

  return v3;
}

@end