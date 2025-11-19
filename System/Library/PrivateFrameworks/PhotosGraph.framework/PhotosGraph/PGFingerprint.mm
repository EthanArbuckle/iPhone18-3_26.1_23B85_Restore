@interface PGFingerprint
+ (id)_assetFingerprintWithFeatureExtractor:(id)a3 forAsset:(id)a4 withTransformers:(id)a5 error:(id *)a6;
+ (id)_generateErrorWithErrorCode:(int64_t)a3 errorMessage:(id)a4 underlyingError:(id)a5;
+ (id)assetCollectionFingerprintWithVersion:(int64_t)a3 forAssetCollection:(id)a4 withGraph:(id)a5 withTransformers:(id)a6 error:(id *)a7;
+ (id)assetCollectionFingerprintsDataframeWithVersion:(int64_t)a3 forAssetCollections:(id)a4 withGraph:(id)a5 withTransformers:(id)a6 progressReporter:(id)a7 error:(id *)a8;
+ (id)assetCollectionFingerprintsWithVersion:(int64_t)a3 forAssetCollections:(id)a4 withGraph:(id)a5 withTransformers:(id)a6 error:(id *)a7;
+ (id)assetFingerprintWithVersion:(int64_t)a3 forAsset:(id)a4 withGraph:(id)a5 withTransformers:(id)a6 error:(id *)a7;
+ (id)assetFingerprintsDataframeWithVersion:(int64_t)a3 forAssets:(id)a4 withGraph:(id)a5 withTransformers:(id)a6 progressReporter:(id)a7 error:(id *)a8;
+ (id)assetFingerprintsWithVersion:(int64_t)a3 forAssets:(id)a4 withGraph:(id)a5 withTransformers:(id)a6 error:(id *)a7;
+ (id)memoryFeatureNodesFingerprintsDataFrameWithVersion:(int64_t)a3 forFeatureNodes:(id)a4 uniqueMemoryIdentifiers:(id)a5 withGraph:(id)a6 progressReporter:(id)a7 error:(id *)a8;
+ (id)momentNodeFingerprintsDataFrameWithVersion:(int64_t)a3 forMomentNodes:(id)a4 withGraph:(id)a5 progressReporter:(id)a6 error:(id *)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFingerprint:(id)a3;
- (PGFingerprint)initWithFloatArray:(id)a3 withFeatureNames:(id)a4;
@end

@implementation PGFingerprint

- (BOOL)isEqualToFingerprint:(id)a3
{
  v4 = a3;
  v5 = [(PGFingerprint *)self floatArray];
  v6 = [v4 floatArray];

  LOBYTE(v4) = [v5 isApproximatelyEqualTo:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PGFingerprint *)self isEqualToFingerprint:v4];
  }

  return v5;
}

- (PGFingerprint)initWithFloatArray:(id)a3 withFeatureNames:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PGFingerprint;
  v8 = [(PGFingerprint *)&v11 init];
  if (v8)
  {
    v9 = [v6 copy];
    [(PGFingerprint *)v8 setFloatArray:v9];

    [(PGFingerprint *)v8 setFeatureNames:v7];
  }

  return v8;
}

+ (id)_generateErrorWithErrorCode:(int64_t)a3 errorMessage:(id)a4 underlyingError:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277CBEB38];
  v9 = a4;
  v10 = objc_alloc_init(v8);
  [v10 setObject:v9 forKey:*MEMORY[0x277CCA450]];

  if (v7)
  {
    [v10 setObject:v7 forKey:*MEMORY[0x277CCA7E8]];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotosGraph.PGFingerprint" code:a3 userInfo:v10];

  return v11;
}

+ (id)memoryFeatureNodesFingerprintsDataFrameWithVersion:(int64_t)a3 forFeatureNodes:(id)a4 uniqueMemoryIdentifiers:(id)a5 withGraph:(id)a6 progressReporter:(id)a7 error:(id *)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if ([PGFingerprintVersionHelper isMemoryNodeFingerprintVersion:a3])
  {
    v18 = [PGFingerprintVersionHelper featureExtractorForFingerprintVersion:a3 withGraph:v16 withTransformers:0 error:a8];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 featureVectorsWithEntities:v14 entityLabels:v15 progressReporter:v17 error:a8];
      if (v20)
      {
        v21 = v20;
        v22 = v21;
      }

      else
      {
        if (a8)
        {
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to extract feature vectors for (%ld) memories.", objc_msgSend(v14, "count")];
          *a8 = [a1 _generateErrorWithErrorCode:3 errorMessage:v23 underlyingError:0];
        }

        v21 = 0;
        v22 = 0;
      }
    }

    else
    {
      if (!a8)
      {
        v19 = 0;
        v22 = 0;
        goto LABEL_14;
      }

      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to build feature extractor for fingerprint version: %ld", a3];
      [a1 _generateErrorWithErrorCode:2 errorMessage:v21 underlyingError:0];
      *a8 = v22 = 0;
    }
  }

  else
  {
    if (!a8)
    {
      v22 = 0;
      goto LABEL_15;
    }

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version not supported for memory node collection: %ld", a3];
    [a1 _generateErrorWithErrorCode:1 errorMessage:v19 underlyingError:0];
    *a8 = v22 = 0;
  }

LABEL_14:

LABEL_15:

  return v22;
}

+ (id)momentNodeFingerprintsDataFrameWithVersion:(int64_t)a3 forMomentNodes:(id)a4 withGraph:(id)a5 progressReporter:(id)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([PGFingerprintVersionHelper isMomentNodeFingerprintVersion:a3])
  {
    v15 = [PGFingerprintVersionHelper featureExtractorForFingerprintVersion:a3 withGraph:v13 withTransformers:0 error:a7];
    if (v15)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __108__PGFingerprint_momentNodeFingerprintsDataFrameWithVersion_forMomentNodes_withGraph_progressReporter_error___block_invoke;
      v32 = &unk_278887190;
      v33 = v13;
      v18 = v16;
      v34 = v18;
      v19 = v17;
      v35 = v19;
      [v12 enumerateUUIDsUsingBlock:&v29];
      v20 = [v15 featureVectorsWithEntities:v19 entityLabels:v18 progressReporter:v14 error:a7];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else if (a7)
      {
        v25 = MEMORY[0x277CCACA8];
        v26 = [v19 count];
        v27 = [v25 stringWithFormat:@"Failed to extract feature vectors for (%ld) moment nodes.", v26, v29, v30, v31, v32, v33, v34];
        *a7 = [a1 _generateErrorWithErrorCode:3 errorMessage:v27 underlyingError:0];
      }
    }

    else
    {
      if (a7 && !*a7)
      {
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to build feature extractor for fingerprint version: %ld", a3];
        *a7 = [a1 _generateErrorWithErrorCode:2 errorMessage:v24 underlyingError:0];
      }

      v21 = 0;
    }
  }

  else
  {
    if (a7)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version not supported for moment node collection: %ld", a3];
      *a7 = [a1 _generateErrorWithErrorCode:1 errorMessage:v23 underlyingError:0];
    }

    v21 = 0;
  }

  return v21;
}

void __108__PGFingerprint_momentNodeFingerprintsDataFrameWithVersion_forMomentNodes_withGraph_progressReporter_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277D22BB0];
  v6 = a3;
  v8 = [[v5 alloc] initWithElementIdentifier:a2];
  v7 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithGraph:*(a1 + 32) elementIdentifiers:v8];
  [*(a1 + 40) addObject:v6];

  [*(a1 + 48) addObject:v7];
}

+ (id)assetCollectionFingerprintsDataframeWithVersion:(int64_t)a3 forAssetCollections:(id)a4 withGraph:(id)a5 withTransformers:(id)a6 progressReporter:(id)a7 error:(id *)a8
{
  v36 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if ([PGFingerprintVersionHelper isMomentFingerprintVersion:a3]|| [PGFingerprintVersionHelper isMemoryFingerprintVersion:a3])
  {
    v18 = [PGFingerprintVersionHelper featureExtractorForFingerprintVersion:a3 withGraph:v15 withTransformers:v16 error:a8];
    if (v18)
    {
      v29 = v17;
      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v30 = v14;
      v20 = v14;
      v21 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v32;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v32 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = [*(*(&v31 + 1) + 8 * i) localIdentifier];
            [v19 addObject:v25];
          }

          v22 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v22);
      }

      v17 = v29;
      a8 = [v18 featureVectorsWithEntities:v20 entityLabels:v19 progressReporter:v29 error:a8];

      v14 = v30;
    }

    else
    {
      a8 = 0;
    }
  }

  else if (a8)
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version not supported for asset collections: %ld", a3];
    *a8 = [a1 _generateErrorWithErrorCode:1 errorMessage:v28 underlyingError:0];

    a8 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return a8;
}

+ (id)assetCollectionFingerprintsWithVersion:(int64_t)a3 forAssetCollections:(id)a4 withGraph:(id)a5 withTransformers:(id)a6 error:(id *)a7
{
  v41 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v34 = a5;
  v33 = a6;
  if ([PGFingerprintVersionHelper isMomentFingerprintVersion:a3]|| [PGFingerprintVersionHelper isMemoryFingerprintVersion:a3])
  {
    v28 = a7;
    v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v29 = v11;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = 0;
      v16 = *v37;
      do
      {
        v17 = 0;
        v18 = v14;
        v19 = v15;
        do
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v36 + 1) + 8 * v17);
          v21 = objc_autoreleasePoolPush();
          v35 = v19;
          v14 = [a1 assetCollectionFingerprintWithVersion:a3 forAssetCollection:v20 withGraph:v34 withTransformers:v33 error:&v35];
          v15 = v35;

          if (v14)
          {
            v22 = [v20 localIdentifier];
            [v31 setObject:v14 forKeyedSubscript:v22];
          }

          objc_autoreleasePoolPop(v21);
          ++v17;
          v18 = v14;
          v19 = v15;
        }

        while (v13 != v17);
        v13 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    if ([v31 count] || !v15)
    {
      v24 = v31;
    }

    else if (v28)
    {
      v23 = v15;
      v24 = 0;
      *v28 = v15;
    }

    else
    {
      v24 = 0;
    }

    v11 = v29;
  }

  else
  {
    if (a7)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version not supported for asset collections: %ld", a3];
      *a7 = [a1 _generateErrorWithErrorCode:1 errorMessage:v25 underlyingError:0];
    }

    v24 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)assetCollectionFingerprintWithVersion:(int64_t)a3 forAssetCollection:(id)a4 withGraph:(id)a5 withTransformers:(id)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([PGFingerprintVersionHelper isMomentFingerprintVersion:a3]|| [PGFingerprintVersionHelper isMemoryFingerprintVersion:a3])
  {
    v15 = [PGFingerprintVersionHelper featureExtractorForFingerprintVersion:a3 withGraph:v13 withTransformers:v14 error:a7];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 floatVectorWithEntity:v12 error:a7];
      v18 = [v16 featureNames];
      v19 = v18;
      v20 = 0;
      if (v17 && v18)
      {
        v20 = [[PGFingerprint alloc] initWithFloatArray:v17 withFeatureNames:v18];
      }
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_11;
  }

  if (a7)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version not supported for asset collections: %ld", a3];
    [a1 _generateErrorWithErrorCode:1 errorMessage:v16 underlyingError:0];
    *a7 = v20 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v20 = 0;
LABEL_12:

  return v20;
}

+ (id)_assetFingerprintWithFeatureExtractor:(id)a3 forAsset:(id)a4 withTransformers:(id)a5 error:(id *)a6
{
  if (a3)
  {
    v8 = a3;
    v9 = [v8 floatVectorWithEntity:a4 error:a6];
    v10 = [v8 featureNames];

    v11 = 0;
    if (v9 && v10)
    {
      v11 = [[PGFingerprint alloc] initWithFloatArray:v9 withFeatureNames:v10];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)assetFingerprintsDataframeWithVersion:(int64_t)a3 forAssets:(id)a4 withGraph:(id)a5 withTransformers:(id)a6 progressReporter:(id)a7 error:(id *)a8
{
  v36 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if ([PGFingerprintVersionHelper isAssetFingerprintVersion:a3])
  {
    v18 = [PGFingerprintVersionHelper featureExtractorForFingerprintVersion:a3 withGraph:v15 withTransformers:v16 error:a8];
    if (v18)
    {
      v29 = v15;
      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v30 = v14;
      v20 = v14;
      v21 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v32;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v32 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = [*(*(&v31 + 1) + 8 * i) localIdentifier];
            [v19 addObject:v25];
          }

          v22 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v22);
      }

      a8 = [v18 featureVectorsWithEntities:v20 entityLabels:v19 progressReporter:v17 error:a8];

      v15 = v29;
      v14 = v30;
    }

    else
    {
      a8 = 0;
    }
  }

  else if (a8)
  {
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version not supported for assets: %ld", a3];
    *a8 = [a1 _generateErrorWithErrorCode:1 errorMessage:v26 underlyingError:0];

    a8 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return a8;
}

+ (id)assetFingerprintsWithVersion:(int64_t)a3 forAssets:(id)a4 withGraph:(id)a5 withTransformers:(id)a6 error:(id *)a7
{
  v40 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v33 = a5;
  v32 = a6;
  if ([PGFingerprintVersionHelper isAssetFingerprintVersion:a3])
  {
    v28 = a7;
    v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = v12;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v36;
      do
      {
        v17 = 0;
        v18 = v15;
        do
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v35 + 1) + 8 * v17);
          v20 = objc_autoreleasePoolPush();
          v34 = v18;
          v21 = [a1 assetFingerprintWithVersion:a3 forAsset:v19 withGraph:v33 withTransformers:v32 error:&v34];
          v15 = v34;

          if (v21)
          {
            v22 = [v19 localIdentifier];
            [v31 setObject:v21 forKeyedSubscript:v22];
          }

          objc_autoreleasePoolPop(v20);
          ++v17;
          v18 = v15;
        }

        while (v14 != v17);
        v14 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    if ([v31 count] || !v15)
    {
      v24 = v31;
    }

    else if (v28)
    {
      v25 = v15;
      v24 = 0;
      *v28 = v15;
    }

    else
    {
      v24 = 0;
    }

    v12 = v29;
  }

  else
  {
    if (a7)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version not supported for assets: %ld", a3];
      *a7 = [a1 _generateErrorWithErrorCode:1 errorMessage:v23 underlyingError:0];
    }

    v24 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)assetFingerprintWithVersion:(int64_t)a3 forAsset:(id)a4 withGraph:(id)a5 withTransformers:(id)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([PGFingerprintVersionHelper isAssetFingerprintVersion:a3])
  {
    v15 = [PGFingerprintVersionHelper featureExtractorForFingerprintVersion:a3 withGraph:v13 withTransformers:v14 error:a7];
    v16 = [a1 _assetFingerprintWithFeatureExtractor:v15 forAsset:v12 withTransformers:v14 error:a7];
LABEL_5:

    goto LABEL_6;
  }

  if (a7)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version not supported for assets: %ld", a3];
    [a1 _generateErrorWithErrorCode:1 errorMessage:v15 underlyingError:0];
    *a7 = v16 = 0;
    goto LABEL_5;
  }

  v16 = 0;
LABEL_6:

  return v16;
}

@end