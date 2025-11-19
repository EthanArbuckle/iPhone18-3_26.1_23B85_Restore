@interface PGFeatureExtractorAssetCollectionAverage
- (PGFeatureExtractorAssetCollectionAverage)initWithAssetFeatureExtractor:(id)a3 assetFetchOptionPropertySet:(id)a4 name:(id)a5;
- (id)_generateErrorWithErrorCode:(int64_t)a3 message:(id)a4 underlyingError:(id)a5;
- (id)featureNames;
- (id)floatMatrixWithEntities:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
- (int64_t)featureLength;
@end

@implementation PGFeatureExtractorAssetCollectionAverage

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

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotosGraph.PGFeatureExtractorAssetCollectionAverage" code:a3 userInfo:v10];

  return v11;
}

- (id)floatMatrixWithEntities:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x277D22C60]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(PGFeatureExtractorAssetCollectionAverage *)self floatVectorWithEntity:*(*(&v19 + 1) + 8 * i) error:a5, v19];
        if (!v14)
        {

          v16 = 0;
          goto LABEL_11;
        }

        v15 = v14;
        [v8 appendRow:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = v8;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [v6 photoLibrary];
  v9 = [v8 librarySpecificFetchOptions];

  v10 = [(PGFeatureExtractorAssetCollectionAverage *)self assetFetchOptionPropertySet];

  if (v10)
  {
    v11 = [(PGFeatureExtractorAssetCollectionAverage *)self assetFetchOptionPropertySet];
    [v9 setFetchPropertySets:v11];
  }

  v12 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v6 options:v9];
  if ([v12 count])
  {
    v25 = a4;
    v26 = v9;
    v27 = v6;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          v19 = [(PGFeatureExtractorAssetCollectionAverage *)self assetFeatureExtractor];
          v28 = 0;
          v20 = [v19 floatVectorWithEntity:v18 error:&v28];
          v21 = v28;

          if (!v20)
          {
            if (v25)
            {
              *v25 = [(PGFeatureExtractorAssetCollectionAverage *)self _generateErrorWithErrorCode:1 message:@"Unable to extract feature vector for asset. Returning nil for the asset collection print." underlyingError:v21];
            }

            v22 = 0;
            goto LABEL_16;
          }

          [v7 addObject:v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v22 = [MEMORY[0x277D22C40] meanVectorWithFloatVectors:v7];
LABEL_16:
    v9 = v26;
    v6 = v27;
  }

  else if (a4)
  {
    [(PGFeatureExtractorAssetCollectionAverage *)self _generateErrorWithErrorCode:0 message:@"No assets could be fetched from the asset collection." underlyingError:0];
    *a4 = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (int64_t)featureLength
{
  v2 = [(PGFeatureExtractorAssetCollectionAverage *)self assetFeatureExtractor];
  v3 = [v2 featureNames];
  v4 = [v3 count];

  return v4;
}

- (id)featureNames
{
  v2 = [(PGFeatureExtractorAssetCollectionAverage *)self assetFeatureExtractor];
  v3 = [v2 featureNames];

  return v3;
}

- (PGFeatureExtractorAssetCollectionAverage)initWithAssetFeatureExtractor:(id)a3 assetFetchOptionPropertySet:(id)a4 name:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PGFeatureExtractorAssetCollectionAverage;
  v12 = [(PGFeatureExtractorAssetCollectionAverage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetFeatureExtractor, a3);
    objc_storeStrong(&v13->_assetFetchOptionPropertySet, a4);
    objc_storeStrong(&v13->_name, a5);
  }

  return v13;
}

@end