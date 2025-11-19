@interface PGFeatureExtractorPhotoLibraryAverage
+ (BOOL)preCalculateFeatureVectorWithPhotoLibrary:(id)a3 assetFeatureExtractor:(id)a4 assetFetchOptionPropertySet:(id)a5 error:(id *)a6;
- (NSArray)featureNames;
- (PGFeatureExtractorPhotoLibraryAverage)initWithAssetFeatureExtractor:(id)a3 assetFetchOptionPropertySet:(id)a4;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
- (id)name;
- (int64_t)featureLength;
@end

@implementation PGFeatureExtractorPhotoLibraryAverage

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() preCalculatedFloatVector];

  if (v7)
  {
    goto LABEL_3;
  }

  v8 = objc_opt_class();
  v9 = [(PGFeatureExtractorPhotoLibraryAverage *)self assetFeatureExtractor];
  v10 = [(PGFeatureExtractorPhotoLibraryAverage *)self assetFetchOptionPropertySet];
  v11 = [v8 preCalculateFeatureVectorWithPhotoLibrary:v6 assetFeatureExtractor:v9 assetFetchOptionPropertySet:v10 error:a4];

  if (v11)
  {
LABEL_3:
    v12 = [objc_opt_class() preCalculatedFloatVector];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)featureLength
{
  v2 = [(PGFeatureExtractorPhotoLibraryAverage *)self assetFeatureExtractor];
  v3 = [v2 featureNames];
  v4 = [v3 count];

  return v4;
}

- (NSArray)featureNames
{
  v23 = *MEMORY[0x277D85DE8];
  featureNames = self->_featureNames;
  if (!featureNames)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB18]);
    v5 = [(PGFeatureExtractorPhotoLibraryAverage *)self assetFeatureExtractor];
    v6 = [v5 featureNames];
    v7 = [v4 initWithCapacity:{objc_msgSend(v6, "count")}];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [(PGFeatureExtractorPhotoLibraryAverage *)self assetFeatureExtractor];
    v9 = [v8 featureNames];

    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"PhotoLibraryAverage-%@", *(*(&v18 + 1) + 8 * v13)];
          [(NSArray *)v7 addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v15 = self->_featureNames;
    self->_featureNames = v7;

    featureNames = self->_featureNames;
  }

  v16 = *MEMORY[0x277D85DE8];

  return featureNames;
}

- (id)name
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(PGFeatureExtractorPhotoLibraryAverage *)self assetFeatureExtractor];
  v4 = [v3 name];
  v5 = [v2 stringWithFormat:@"PhotoLibraryAverage-%@", v4];

  return v5;
}

- (PGFeatureExtractorPhotoLibraryAverage)initWithAssetFeatureExtractor:(id)a3 assetFetchOptionPropertySet:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGFeatureExtractorPhotoLibraryAverage;
  v9 = [(PGFeatureExtractorPhotoLibraryAverage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetFeatureExtractor, a3);
    objc_storeStrong(&v10->_assetFetchOptionPropertySet, a4);
  }

  return v10;
}

+ (BOOL)preCalculateFeatureVectorWithPhotoLibrary:(id)a3 assetFeatureExtractor:(id)a4 assetFetchOptionPropertySet:(id)a5 error:(id *)a6
{
  v53[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v44 = a4;
  v11 = a5;
  [a1 resetPreCalculatedFeatureVector];
  v12 = [v10 librarySpecificFetchOptions];
  [v12 setChunkSizeForFetch:100];
  [v12 setCacheSizeForFetch:100];
  if (v11)
  {
    [v12 setFetchPropertySets:v11];
  }

  v43 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v12];
  v13 = [v43 count];
  if (!a6 || v13)
  {
    v37 = a1;
    v38 = a6;
    v39 = v12;
    v40 = v11;
    v41 = v10;
    v17 = [v44 featureNames];
    v18 = [v17 count];

    v42 = [MEMORY[0x277D22C68] vectorRepeatingFloat:v18 count:0.0];
    v19 = [v43 count];
    if (v19)
    {
      v15 = 0;
      v21 = 0;
      for (i = 0; i != v19; ++i)
      {
        v23 = v15;
        v24 = objc_autoreleasePoolPush();
        v25 = [v43 objectAtIndexedSubscript:i];
        v45 = v15;
        v26 = [v44 floatVectorWithEntity:v25 error:&v45];
        v15 = v45;

        if (v26 && [v26 count] == v18)
        {
          [v42 addVector:v26];
          ++v21;
        }

        else
        {
          v27 = +[PGLogging sharedLogging];
          v28 = [v27 loggingConnection];

          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = [v25 localIdentifier];
            *buf = 138412546;
            v49 = v29;
            v50 = 2112;
            v51 = v15;
            _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "Failed to calculate feature vector for asset %@: %@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v24);
      }
    }

    else
    {
      v21 = 0;
      v15 = 0;
    }

    if (v38)
    {
      v30 = v15;
      *v38 = v15;
      if (v21 <= v19 >> 1)
      {
        v31 = MEMORY[0x277CCA9B8];
        v32 = *MEMORY[0x277CCA7E8];
        v46[0] = *MEMORY[0x277CCA450];
        v46[1] = v32;
        v33 = @"nil";
        if (v15)
        {
          v33 = v15;
        }

        v47[0] = @"Failed to compute mean of asset feature vectors. More than half of the asset feature vector extraction failed. Error: ";
        v47[1] = v33;
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
        [v31 errorWithDomain:@"com.apple.PhotoAnalysis.PGFeatureExtractorPhotoLibraryAverageDomain" code:2 userInfo:v34];
        *v38 = v16 = 0;
        goto LABEL_24;
      }
    }

    else if (v21 <= v19 >> 1)
    {
      v16 = 0;
      goto LABEL_25;
    }

    *&v20 = v21;
    v34 = [v42 vectorByDividingByScalar:v20];
    [v37 setPreCalculatedFloatVector:v34];
    v16 = 1;
LABEL_24:

LABEL_25:
    v11 = v40;
    v10 = v41;
    v12 = v39;

    goto LABEL_26;
  }

  v14 = MEMORY[0x277CCA9B8];
  v52 = *MEMORY[0x277CCA450];
  v53[0] = @"Library contains no assets.";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
  [v14 errorWithDomain:@"com.apple.PhotoAnalysis.PGFeatureExtractorPhotoLibraryAverageDomain" code:1 userInfo:v15];
  *a6 = v16 = 0;
LABEL_26:

  v35 = *MEMORY[0x277D85DE8];
  return v16;
}

@end