@interface PGFingerprint
+ (id)_assetFingerprintWithFeatureExtractor:(id)extractor forAsset:(id)asset withTransformers:(id)transformers error:(id *)error;
+ (id)_generateErrorWithErrorCode:(int64_t)code errorMessage:(id)message underlyingError:(id)error;
+ (id)assetCollectionFingerprintWithVersion:(int64_t)version forAssetCollection:(id)collection withGraph:(id)graph withTransformers:(id)transformers error:(id *)error;
+ (id)assetCollectionFingerprintsDataframeWithVersion:(int64_t)version forAssetCollections:(id)collections withGraph:(id)graph withTransformers:(id)transformers progressReporter:(id)reporter error:(id *)error;
+ (id)assetCollectionFingerprintsWithVersion:(int64_t)version forAssetCollections:(id)collections withGraph:(id)graph withTransformers:(id)transformers error:(id *)error;
+ (id)assetFingerprintWithVersion:(int64_t)version forAsset:(id)asset withGraph:(id)graph withTransformers:(id)transformers error:(id *)error;
+ (id)assetFingerprintsDataframeWithVersion:(int64_t)version forAssets:(id)assets withGraph:(id)graph withTransformers:(id)transformers progressReporter:(id)reporter error:(id *)error;
+ (id)assetFingerprintsWithVersion:(int64_t)version forAssets:(id)assets withGraph:(id)graph withTransformers:(id)transformers error:(id *)error;
+ (id)memoryFeatureNodesFingerprintsDataFrameWithVersion:(int64_t)version forFeatureNodes:(id)nodes uniqueMemoryIdentifiers:(id)identifiers withGraph:(id)graph progressReporter:(id)reporter error:(id *)error;
+ (id)momentNodeFingerprintsDataFrameWithVersion:(int64_t)version forMomentNodes:(id)nodes withGraph:(id)graph progressReporter:(id)reporter error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFingerprint:(id)fingerprint;
- (PGFingerprint)initWithFloatArray:(id)array withFeatureNames:(id)names;
@end

@implementation PGFingerprint

- (BOOL)isEqualToFingerprint:(id)fingerprint
{
  fingerprintCopy = fingerprint;
  floatArray = [(PGFingerprint *)self floatArray];
  floatArray2 = [fingerprintCopy floatArray];

  LOBYTE(fingerprintCopy) = [floatArray isApproximatelyEqualTo:floatArray2];
  return fingerprintCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PGFingerprint *)self isEqualToFingerprint:equalCopy];
  }

  return v5;
}

- (PGFingerprint)initWithFloatArray:(id)array withFeatureNames:(id)names
{
  arrayCopy = array;
  namesCopy = names;
  v11.receiver = self;
  v11.super_class = PGFingerprint;
  v8 = [(PGFingerprint *)&v11 init];
  if (v8)
  {
    v9 = [arrayCopy copy];
    [(PGFingerprint *)v8 setFloatArray:v9];

    [(PGFingerprint *)v8 setFeatureNames:namesCopy];
  }

  return v8;
}

+ (id)_generateErrorWithErrorCode:(int64_t)code errorMessage:(id)message underlyingError:(id)error
{
  errorCopy = error;
  v8 = MEMORY[0x277CBEB38];
  messageCopy = message;
  v10 = objc_alloc_init(v8);
  [v10 setObject:messageCopy forKey:*MEMORY[0x277CCA450]];

  if (errorCopy)
  {
    [v10 setObject:errorCopy forKey:*MEMORY[0x277CCA7E8]];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotosGraph.PGFingerprint" code:code userInfo:v10];

  return v11;
}

+ (id)memoryFeatureNodesFingerprintsDataFrameWithVersion:(int64_t)version forFeatureNodes:(id)nodes uniqueMemoryIdentifiers:(id)identifiers withGraph:(id)graph progressReporter:(id)reporter error:(id *)error
{
  nodesCopy = nodes;
  identifiersCopy = identifiers;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([PGFingerprintVersionHelper isMemoryNodeFingerprintVersion:version])
  {
    v18 = [PGFingerprintVersionHelper featureExtractorForFingerprintVersion:version withGraph:graphCopy withTransformers:0 error:error];
    version2 = v18;
    if (v18)
    {
      v20 = [v18 featureVectorsWithEntities:nodesCopy entityLabels:identifiersCopy progressReporter:reporterCopy error:error];
      if (v20)
      {
        version = v20;
        v22 = version;
      }

      else
      {
        if (error)
        {
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to extract feature vectors for (%ld) memories.", objc_msgSend(nodesCopy, "count")];
          *error = [self _generateErrorWithErrorCode:3 errorMessage:v23 underlyingError:0];
        }

        version = 0;
        v22 = 0;
      }
    }

    else
    {
      if (!error)
      {
        version2 = 0;
        v22 = 0;
        goto LABEL_14;
      }

      version = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to build feature extractor for fingerprint version: %ld", version];
      [self _generateErrorWithErrorCode:2 errorMessage:version underlyingError:0];
      *error = v22 = 0;
    }
  }

  else
  {
    if (!error)
    {
      v22 = 0;
      goto LABEL_15;
    }

    version2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version not supported for memory node collection: %ld", version];
    [self _generateErrorWithErrorCode:1 errorMessage:version2 underlyingError:0];
    *error = v22 = 0;
  }

LABEL_14:

LABEL_15:

  return v22;
}

+ (id)momentNodeFingerprintsDataFrameWithVersion:(int64_t)version forMomentNodes:(id)nodes withGraph:(id)graph progressReporter:(id)reporter error:(id *)error
{
  nodesCopy = nodes;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([PGFingerprintVersionHelper isMomentNodeFingerprintVersion:version])
  {
    v15 = [PGFingerprintVersionHelper featureExtractorForFingerprintVersion:version withGraph:graphCopy withTransformers:0 error:error];
    if (v15)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __108__PGFingerprint_momentNodeFingerprintsDataFrameWithVersion_forMomentNodes_withGraph_progressReporter_error___block_invoke;
      v32 = &unk_278887190;
      v33 = graphCopy;
      v18 = v16;
      v34 = v18;
      v19 = v17;
      v35 = v19;
      [nodesCopy enumerateUUIDsUsingBlock:&v29];
      v20 = [v15 featureVectorsWithEntities:v19 entityLabels:v18 progressReporter:reporterCopy error:error];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else if (error)
      {
        v25 = MEMORY[0x277CCACA8];
        v26 = [v19 count];
        v27 = [v25 stringWithFormat:@"Failed to extract feature vectors for (%ld) moment nodes.", v26, v29, v30, v31, v32, v33, v34];
        *error = [self _generateErrorWithErrorCode:3 errorMessage:v27 underlyingError:0];
      }
    }

    else
    {
      if (error && !*error)
      {
        version = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to build feature extractor for fingerprint version: %ld", version];
        *error = [self _generateErrorWithErrorCode:2 errorMessage:version underlyingError:0];
      }

      v21 = 0;
    }
  }

  else
  {
    if (error)
    {
      version2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version not supported for moment node collection: %ld", version];
      *error = [self _generateErrorWithErrorCode:1 errorMessage:version2 underlyingError:0];
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

+ (id)assetCollectionFingerprintsDataframeWithVersion:(int64_t)version forAssetCollections:(id)collections withGraph:(id)graph withTransformers:(id)transformers progressReporter:(id)reporter error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  graphCopy = graph;
  transformersCopy = transformers;
  reporterCopy = reporter;
  if ([PGFingerprintVersionHelper isMomentFingerprintVersion:version]|| [PGFingerprintVersionHelper isMemoryFingerprintVersion:version])
  {
    v18 = [PGFingerprintVersionHelper featureExtractorForFingerprintVersion:version withGraph:graphCopy withTransformers:transformersCopy error:error];
    if (v18)
    {
      v29 = reporterCopy;
      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v30 = collectionsCopy;
      v20 = collectionsCopy;
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

            localIdentifier = [*(*(&v31 + 1) + 8 * i) localIdentifier];
            [v19 addObject:localIdentifier];
          }

          v22 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v22);
      }

      reporterCopy = v29;
      error = [v18 featureVectorsWithEntities:v20 entityLabels:v19 progressReporter:v29 error:error];

      collectionsCopy = v30;
    }

    else
    {
      error = 0;
    }
  }

  else if (error)
  {
    version = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version not supported for asset collections: %ld", version];
    *error = [self _generateErrorWithErrorCode:1 errorMessage:version underlyingError:0];

    error = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return error;
}

+ (id)assetCollectionFingerprintsWithVersion:(int64_t)version forAssetCollections:(id)collections withGraph:(id)graph withTransformers:(id)transformers error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  graphCopy = graph;
  transformersCopy = transformers;
  if ([PGFingerprintVersionHelper isMomentFingerprintVersion:version]|| [PGFingerprintVersionHelper isMemoryFingerprintVersion:version])
  {
    errorCopy = error;
    v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v29 = collectionsCopy;
    obj = collectionsCopy;
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
          v14 = [self assetCollectionFingerprintWithVersion:version forAssetCollection:v20 withGraph:graphCopy withTransformers:transformersCopy error:&v35];
          v15 = v35;

          if (v14)
          {
            localIdentifier = [v20 localIdentifier];
            [v31 setObject:v14 forKeyedSubscript:localIdentifier];
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

    else if (errorCopy)
    {
      v23 = v15;
      v24 = 0;
      *errorCopy = v15;
    }

    else
    {
      v24 = 0;
    }

    collectionsCopy = v29;
  }

  else
  {
    if (error)
    {
      version = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version not supported for asset collections: %ld", version];
      *error = [self _generateErrorWithErrorCode:1 errorMessage:version underlyingError:0];
    }

    v24 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)assetCollectionFingerprintWithVersion:(int64_t)version forAssetCollection:(id)collection withGraph:(id)graph withTransformers:(id)transformers error:(id *)error
{
  collectionCopy = collection;
  graphCopy = graph;
  transformersCopy = transformers;
  if ([PGFingerprintVersionHelper isMomentFingerprintVersion:version]|| [PGFingerprintVersionHelper isMemoryFingerprintVersion:version])
  {
    v15 = [PGFingerprintVersionHelper featureExtractorForFingerprintVersion:version withGraph:graphCopy withTransformers:transformersCopy error:error];
    version = v15;
    if (v15)
    {
      v17 = [v15 floatVectorWithEntity:collectionCopy error:error];
      featureNames = [version featureNames];
      v19 = featureNames;
      v20 = 0;
      if (v17 && featureNames)
      {
        v20 = [[PGFingerprint alloc] initWithFloatArray:v17 withFeatureNames:featureNames];
      }
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_11;
  }

  if (error)
  {
    version = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version not supported for asset collections: %ld", version];
    [self _generateErrorWithErrorCode:1 errorMessage:version underlyingError:0];
    *error = v20 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v20 = 0;
LABEL_12:

  return v20;
}

+ (id)_assetFingerprintWithFeatureExtractor:(id)extractor forAsset:(id)asset withTransformers:(id)transformers error:(id *)error
{
  if (extractor)
  {
    extractorCopy = extractor;
    v9 = [extractorCopy floatVectorWithEntity:asset error:error];
    featureNames = [extractorCopy featureNames];

    v11 = 0;
    if (v9 && featureNames)
    {
      v11 = [[PGFingerprint alloc] initWithFloatArray:v9 withFeatureNames:featureNames];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)assetFingerprintsDataframeWithVersion:(int64_t)version forAssets:(id)assets withGraph:(id)graph withTransformers:(id)transformers progressReporter:(id)reporter error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  graphCopy = graph;
  transformersCopy = transformers;
  reporterCopy = reporter;
  if ([PGFingerprintVersionHelper isAssetFingerprintVersion:version])
  {
    v18 = [PGFingerprintVersionHelper featureExtractorForFingerprintVersion:version withGraph:graphCopy withTransformers:transformersCopy error:error];
    if (v18)
    {
      v29 = graphCopy;
      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v30 = assetsCopy;
      v20 = assetsCopy;
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

            localIdentifier = [*(*(&v31 + 1) + 8 * i) localIdentifier];
            [v19 addObject:localIdentifier];
          }

          v22 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v22);
      }

      error = [v18 featureVectorsWithEntities:v20 entityLabels:v19 progressReporter:reporterCopy error:error];

      graphCopy = v29;
      assetsCopy = v30;
    }

    else
    {
      error = 0;
    }
  }

  else if (error)
  {
    version = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version not supported for assets: %ld", version];
    *error = [self _generateErrorWithErrorCode:1 errorMessage:version underlyingError:0];

    error = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return error;
}

+ (id)assetFingerprintsWithVersion:(int64_t)version forAssets:(id)assets withGraph:(id)graph withTransformers:(id)transformers error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  graphCopy = graph;
  transformersCopy = transformers;
  if ([PGFingerprintVersionHelper isAssetFingerprintVersion:version])
  {
    errorCopy = error;
    v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = assetsCopy;
    obj = assetsCopy;
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
          v21 = [self assetFingerprintWithVersion:version forAsset:v19 withGraph:graphCopy withTransformers:transformersCopy error:&v34];
          v15 = v34;

          if (v21)
          {
            localIdentifier = [v19 localIdentifier];
            [v31 setObject:v21 forKeyedSubscript:localIdentifier];
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

    else if (errorCopy)
    {
      v25 = v15;
      v24 = 0;
      *errorCopy = v15;
    }

    else
    {
      v24 = 0;
    }

    assetsCopy = v29;
  }

  else
  {
    if (error)
    {
      version = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version not supported for assets: %ld", version];
      *error = [self _generateErrorWithErrorCode:1 errorMessage:version underlyingError:0];
    }

    v24 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)assetFingerprintWithVersion:(int64_t)version forAsset:(id)asset withGraph:(id)graph withTransformers:(id)transformers error:(id *)error
{
  assetCopy = asset;
  graphCopy = graph;
  transformersCopy = transformers;
  if ([PGFingerprintVersionHelper isAssetFingerprintVersion:version])
  {
    version = [PGFingerprintVersionHelper featureExtractorForFingerprintVersion:version withGraph:graphCopy withTransformers:transformersCopy error:error];
    v16 = [self _assetFingerprintWithFeatureExtractor:version forAsset:assetCopy withTransformers:transformersCopy error:error];
LABEL_5:

    goto LABEL_6;
  }

  if (error)
  {
    version = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version not supported for assets: %ld", version];
    [self _generateErrorWithErrorCode:1 errorMessage:version underlyingError:0];
    *error = v16 = 0;
    goto LABEL_5;
  }

  v16 = 0;
LABEL_6:

  return v16;
}

@end