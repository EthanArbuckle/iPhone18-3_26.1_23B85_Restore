@interface PGFeatureExtractorFacesFromAssetAverage
- (PGFeatureExtractorFacesFromAssetAverage)initWithFaceFeatureExtractor:(id)extractor name:(id)name;
- (id)_generateErrorWithErrorCode:(int64_t)code andMessage:(id)message underlyingError:(id)error;
- (id)featureNames;
- (id)floatMatrixWithEntities:(id)entities progressReporter:(id)reporter error:(id *)error;
- (id)floatVectorWithFaces:(id)faces error:(id *)error;
- (int64_t)featureLength;
@end

@implementation PGFeatureExtractorFacesFromAssetAverage

- (id)_generateErrorWithErrorCode:(int64_t)code andMessage:(id)message underlyingError:(id)error
{
  v18[2] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA7E8];
  v16 = *MEMORY[0x277CCA450];
  v17 = v8;
  v18[0] = message;
  v9 = MEMORY[0x277CCACA8];
  messageCopy = message;
  v11 = [v9 stringWithFormat:@"%@", error, v16, v17, v18[0]];
  v18[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v16 count:2];
  v13 = [v7 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureExtractorFacesFromAssetAverage" code:code userInfo:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)floatVectorWithFaces:(id)faces error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  facesCopy = faces;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([facesCopy count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v27 = facesCopy;
    obj = facesCopy;
    v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      errorCopy = error;
      v10 = 0;
      v11 = *v31;
      while (2)
      {
        v12 = 0;
        v13 = v10;
        do
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v30 + 1) + 8 * v12);
          faceFeatureExtractor = [(PGFeatureExtractorFacesFromAssetAverage *)self faceFeatureExtractor];
          v29 = v13;
          v16 = [faceFeatureExtractor floatVectorWithEntity:v14 error:&v29];
          v10 = v29;

          if (!v16)
          {
            if (errorCopy)
            {
              v17 = MEMORY[0x277CCACA8];
              localIdentifier = [v14 localIdentifier];
              v19 = [v17 stringWithFormat:@"Unable to retrieve face feature vector from face %@. Returning nil.", localIdentifier];
              *errorCopy = [(PGFeatureExtractorFacesFromAssetAverage *)self _generateErrorWithErrorCode:0 andMessage:v19 underlyingError:v10];
            }

            v20 = 0;
            goto LABEL_18;
          }

          [v7 addObject:v16];

          ++v12;
          v13 = v10;
        }

        while (v9 != v12);
        v9 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 0;
    }

    v20 = [MEMORY[0x277D22C40] meanVectorWithFloatVectors:v7];
LABEL_18:
    facesCopy = v27;
  }

  else
  {
    faceFeatureExtractor2 = [(PGFeatureExtractorFacesFromAssetAverage *)self faceFeatureExtractor];
    v34 = 0;
    v20 = [faceFeatureExtractor2 defaultFloatVectorWithError:&v34];
    v10 = v34;

    if (v20)
    {
      v22 = v20;
    }

    else if (error)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to retrieve default face feature vector. Returning nil."];
      *error = [(PGFeatureExtractorFacesFromAssetAverage *)self _generateErrorWithErrorCode:1 andMessage:v23 underlyingError:v10];
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)floatMatrixWithEntities:(id)entities progressReporter:(id)reporter error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  v7 = objc_alloc_init(MEMORY[0x277D22C60]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = entitiesCopy;
  v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_16;
  }

  v9 = v8;
  errorCopy = error;
  v10 = 0;
  v11 = *v28;
  while (2)
  {
    v12 = 0;
    v13 = v10;
    do
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v27 + 1) + 8 * v12);
      photoLibrary = [v14 photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      if (!librarySpecificFetchOptions)
      {
        librarySpecificFetchOptions = v7;
        v10 = v13;
LABEL_14:

        v7 = 0;
        goto LABEL_15;
      }

      v17 = [MEMORY[0x277CD9868] fetchFacesInAsset:v14 options:librarySpecificFetchOptions];
      fetchedObjects = [v17 fetchedObjects];
      v26 = v13;
      v19 = [(PGFeatureExtractorFacesFromAssetAverage *)self floatVectorWithFaces:fetchedObjects error:&v26];
      v10 = v26;

      if (!v19)
      {

        goto LABEL_14;
      }

      [v7 appendRow:v19];

      ++v12;
      v13 = v10;
    }

    while (v9 != v12);
    v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_15:
  error = errorCopy;
LABEL_16:

  if (error)
  {
    v20 = v10;
    *error = v10;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)featureNames
{
  faceFeatureExtractor = [(PGFeatureExtractorFacesFromAssetAverage *)self faceFeatureExtractor];
  featureNames = [faceFeatureExtractor featureNames];

  return featureNames;
}

- (int64_t)featureLength
{
  faceFeatureExtractor = [(PGFeatureExtractorFacesFromAssetAverage *)self faceFeatureExtractor];
  featureNames = [faceFeatureExtractor featureNames];
  v4 = [featureNames count];

  return v4;
}

- (PGFeatureExtractorFacesFromAssetAverage)initWithFaceFeatureExtractor:(id)extractor name:(id)name
{
  extractorCopy = extractor;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = PGFeatureExtractorFacesFromAssetAverage;
  v9 = [(PGFeatureExtractorFacesFromAssetAverage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_faceFeatureExtractor, extractor);
    objc_storeStrong(&v10->_name, name);
  }

  return v10;
}

@end