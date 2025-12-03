@interface PGFeatureExtractorPhotoLibraryAverage
+ (BOOL)preCalculateFeatureVectorWithPhotoLibrary:(id)library assetFeatureExtractor:(id)extractor assetFetchOptionPropertySet:(id)set error:(id *)error;
- (NSArray)featureNames;
- (PGFeatureExtractorPhotoLibraryAverage)initWithAssetFeatureExtractor:(id)extractor assetFetchOptionPropertySet:(id)set;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
- (id)name;
- (int64_t)featureLength;
@end

@implementation PGFeatureExtractorPhotoLibraryAverage

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  preCalculatedFloatVector = [objc_opt_class() preCalculatedFloatVector];

  if (preCalculatedFloatVector)
  {
    goto LABEL_3;
  }

  v8 = objc_opt_class();
  assetFeatureExtractor = [(PGFeatureExtractorPhotoLibraryAverage *)self assetFeatureExtractor];
  assetFetchOptionPropertySet = [(PGFeatureExtractorPhotoLibraryAverage *)self assetFetchOptionPropertySet];
  v11 = [v8 preCalculateFeatureVectorWithPhotoLibrary:entityCopy assetFeatureExtractor:assetFeatureExtractor assetFetchOptionPropertySet:assetFetchOptionPropertySet error:error];

  if (v11)
  {
LABEL_3:
    preCalculatedFloatVector2 = [objc_opt_class() preCalculatedFloatVector];
  }

  else
  {
    preCalculatedFloatVector2 = 0;
  }

  return preCalculatedFloatVector2;
}

- (int64_t)featureLength
{
  assetFeatureExtractor = [(PGFeatureExtractorPhotoLibraryAverage *)self assetFeatureExtractor];
  featureNames = [assetFeatureExtractor featureNames];
  v4 = [featureNames count];

  return v4;
}

- (NSArray)featureNames
{
  v23 = *MEMORY[0x277D85DE8];
  featureNames = self->_featureNames;
  if (!featureNames)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB18]);
    assetFeatureExtractor = [(PGFeatureExtractorPhotoLibraryAverage *)self assetFeatureExtractor];
    featureNames = [assetFeatureExtractor featureNames];
    v7 = [v4 initWithCapacity:{objc_msgSend(featureNames, "count")}];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    assetFeatureExtractor2 = [(PGFeatureExtractorPhotoLibraryAverage *)self assetFeatureExtractor];
    featureNames2 = [assetFeatureExtractor2 featureNames];

    v10 = [featureNames2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(featureNames2);
          }

          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"PhotoLibraryAverage-%@", *(*(&v18 + 1) + 8 * v13)];
          [(NSArray *)v7 addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [featureNames2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  assetFeatureExtractor = [(PGFeatureExtractorPhotoLibraryAverage *)self assetFeatureExtractor];
  name = [assetFeatureExtractor name];
  v5 = [v2 stringWithFormat:@"PhotoLibraryAverage-%@", name];

  return v5;
}

- (PGFeatureExtractorPhotoLibraryAverage)initWithAssetFeatureExtractor:(id)extractor assetFetchOptionPropertySet:(id)set
{
  extractorCopy = extractor;
  setCopy = set;
  v12.receiver = self;
  v12.super_class = PGFeatureExtractorPhotoLibraryAverage;
  v9 = [(PGFeatureExtractorPhotoLibraryAverage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetFeatureExtractor, extractor);
    objc_storeStrong(&v10->_assetFetchOptionPropertySet, set);
  }

  return v10;
}

+ (BOOL)preCalculateFeatureVectorWithPhotoLibrary:(id)library assetFeatureExtractor:(id)extractor assetFetchOptionPropertySet:(id)set error:(id *)error
{
  v53[1] = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  extractorCopy = extractor;
  setCopy = set;
  [self resetPreCalculatedFeatureVector];
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  [librarySpecificFetchOptions setChunkSizeForFetch:100];
  [librarySpecificFetchOptions setCacheSizeForFetch:100];
  if (setCopy)
  {
    [librarySpecificFetchOptions setFetchPropertySets:setCopy];
  }

  v43 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
  v13 = [v43 count];
  if (!error || v13)
  {
    selfCopy = self;
    errorCopy = error;
    v39 = librarySpecificFetchOptions;
    v40 = setCopy;
    v41 = libraryCopy;
    featureNames = [extractorCopy featureNames];
    v18 = [featureNames count];

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
        v26 = [extractorCopy floatVectorWithEntity:v25 error:&v45];
        v15 = v45;

        if (v26 && [v26 count] == v18)
        {
          [v42 addVector:v26];
          ++v21;
        }

        else
        {
          v27 = +[PGLogging sharedLogging];
          loggingConnection = [v27 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
          {
            localIdentifier = [v25 localIdentifier];
            *buf = 138412546;
            v49 = localIdentifier;
            v50 = 2112;
            v51 = v15;
            _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Failed to calculate feature vector for asset %@: %@", buf, 0x16u);
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

    if (errorCopy)
    {
      v30 = v15;
      *errorCopy = v15;
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
        *errorCopy = v16 = 0;
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
    [selfCopy setPreCalculatedFloatVector:v34];
    v16 = 1;
LABEL_24:

LABEL_25:
    setCopy = v40;
    libraryCopy = v41;
    librarySpecificFetchOptions = v39;

    goto LABEL_26;
  }

  v14 = MEMORY[0x277CCA9B8];
  v52 = *MEMORY[0x277CCA450];
  v53[0] = @"Library contains no assets.";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
  [v14 errorWithDomain:@"com.apple.PhotoAnalysis.PGFeatureExtractorPhotoLibraryAverageDomain" code:1 userInfo:v15];
  *error = v16 = 0;
LABEL_26:

  v35 = *MEMORY[0x277D85DE8];
  return v16;
}

@end