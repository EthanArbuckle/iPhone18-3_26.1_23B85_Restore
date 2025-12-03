@interface PGFeatureExtractorSceneprint
- (id)_generateErrorWithErrorCode:(int64_t)code message:(id)message underlyingError:(id)error;
- (id)featureNames;
- (id)featureValuesForAssets:(id)assets error:(id *)error;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorSceneprint

- (id)_generateErrorWithErrorCode:(int64_t)code message:(id)message underlyingError:(id)error
{
  errorCopy = error;
  v8 = MEMORY[0x277CBEB38];
  messageCopy = message;
  v10 = objc_alloc_init(v8);
  [v10 setObject:messageCopy forKeyedSubscript:*MEMORY[0x277CCA450]];

  if (errorCopy)
  {
    [v10 setObject:errorCopy forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotosGraph.PGFeatureExtractorScenePrint" code:code userInfo:v10];

  return v11;
}

- (id)featureValuesForAssets:(id)assets error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (error)
  {
    *error = [(PGFeatureExtractorSceneprint *)self _generateErrorWithErrorCode:1 message:@"PGFingerprintVersionAssetPrintTypeScene2048 print is deprecated. Use PGFingerprintVersionAssetPrintTypeSceneCLIP768 instead." underlyingError:0];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = assetsCopy;
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
        localIdentifier = [v13 localIdentifier];
        [dictionary setObject:v14 forKeyedSubscript:localIdentifier];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  v6 = MEMORY[0x277CBEA60];
  entityCopy2 = entity;
  v8 = [v6 arrayWithObjects:&entityCopy count:1];
  v9 = [(PGFeatureExtractorSceneprint *)self featureValuesForAssets:v8 error:error, entityCopy, v15];
  localIdentifier = [entityCopy2 localIdentifier];

  v11 = [v9 objectForKeyedSubscript:localIdentifier];

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