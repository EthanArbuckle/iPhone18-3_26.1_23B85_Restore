@interface PGFeatureExtractorFacesFromAssetAverage
- (PGFeatureExtractorFacesFromAssetAverage)initWithFaceFeatureExtractor:(id)a3 name:(id)a4;
- (id)_generateErrorWithErrorCode:(int64_t)a3 andMessage:(id)a4 underlyingError:(id)a5;
- (id)featureNames;
- (id)floatMatrixWithEntities:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (id)floatVectorWithFaces:(id)a3 error:(id *)a4;
- (int64_t)featureLength;
@end

@implementation PGFeatureExtractorFacesFromAssetAverage

- (id)_generateErrorWithErrorCode:(int64_t)a3 andMessage:(id)a4 underlyingError:(id)a5
{
  v18[2] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA7E8];
  v16 = *MEMORY[0x277CCA450];
  v17 = v8;
  v18[0] = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = a4;
  v11 = [v9 stringWithFormat:@"%@", a5, v16, v17, v18[0]];
  v18[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v16 count:2];
  v13 = [v7 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureExtractorFacesFromAssetAverage" code:a3 userInfo:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)floatVectorWithFaces:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v6 count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v27 = v6;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v26 = a4;
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
          v15 = [(PGFeatureExtractorFacesFromAssetAverage *)self faceFeatureExtractor];
          v29 = v13;
          v16 = [v15 floatVectorWithEntity:v14 error:&v29];
          v10 = v29;

          if (!v16)
          {
            if (v26)
            {
              v17 = MEMORY[0x277CCACA8];
              v18 = [v14 localIdentifier];
              v19 = [v17 stringWithFormat:@"Unable to retrieve face feature vector from face %@. Returning nil.", v18];
              *v26 = [(PGFeatureExtractorFacesFromAssetAverage *)self _generateErrorWithErrorCode:0 andMessage:v19 underlyingError:v10];
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
    v6 = v27;
  }

  else
  {
    v21 = [(PGFeatureExtractorFacesFromAssetAverage *)self faceFeatureExtractor];
    v34 = 0;
    v20 = [v21 defaultFloatVectorWithError:&v34];
    v10 = v34;

    if (v20)
    {
      v22 = v20;
    }

    else if (a4)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to retrieve default face feature vector. Returning nil."];
      *a4 = [(PGFeatureExtractorFacesFromAssetAverage *)self _generateErrorWithErrorCode:1 andMessage:v23 underlyingError:v10];
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)floatMatrixWithEntities:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277D22C60]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_16;
  }

  v9 = v8;
  v23 = a5;
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
      v15 = [v14 photoLibrary];
      v16 = [v15 librarySpecificFetchOptions];

      if (!v16)
      {
        v16 = v7;
        v10 = v13;
LABEL_14:

        v7 = 0;
        goto LABEL_15;
      }

      v17 = [MEMORY[0x277CD9868] fetchFacesInAsset:v14 options:v16];
      v18 = [v17 fetchedObjects];
      v26 = v13;
      v19 = [(PGFeatureExtractorFacesFromAssetAverage *)self floatVectorWithFaces:v18 error:&v26];
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
  a5 = v23;
LABEL_16:

  if (a5)
  {
    v20 = v10;
    *a5 = v10;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)featureNames
{
  v2 = [(PGFeatureExtractorFacesFromAssetAverage *)self faceFeatureExtractor];
  v3 = [v2 featureNames];

  return v3;
}

- (int64_t)featureLength
{
  v2 = [(PGFeatureExtractorFacesFromAssetAverage *)self faceFeatureExtractor];
  v3 = [v2 featureNames];
  v4 = [v3 count];

  return v4;
}

- (PGFeatureExtractorFacesFromAssetAverage)initWithFaceFeatureExtractor:(id)a3 name:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGFeatureExtractorFacesFromAssetAverage;
  v9 = [(PGFeatureExtractorFacesFromAssetAverage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_faceFeatureExtractor, a3);
    objc_storeStrong(&v10->_name, a4);
  }

  return v10;
}

@end