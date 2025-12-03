@interface PGSequentialFeatureExtractor
- (PGSequentialFeatureExtractor)initWithFeatureExtractor:(id)extractor featureTransformers:(id)transformers;
- (id)_generateErrorWithErrorCode:(int64_t)code message:(id)message underlyingError:(id)error;
- (id)_transformFloatVector:(id)vector error:(id *)error;
- (id)defaultFloatVectorWithError:(id *)error;
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
- (id)name;
- (int64_t)featureLength;
@end

@implementation PGSequentialFeatureExtractor

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

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotosGraph.PGSequentialFeatureExtractor" code:code userInfo:v10];

  return v11;
}

- (id)_transformFloatVector:(id)vector error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  featureTransformers = [(PGSequentialFeatureExtractor *)self featureTransformers];
  v8 = [featureTransformers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
LABEL_3:
    v11 = 0;
    v12 = vectorCopy;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(featureTransformers);
      }

      vectorCopy = [*(*(&v15 + 1) + 8 * v11) floatVectorWithFloatVector:v12 error:error];

      if (!vectorCopy)
      {
        break;
      }

      ++v11;
      v12 = vectorCopy;
      if (v9 == v11)
      {
        v9 = [featureTransformers countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return vectorCopy;
}

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  featureExtractor = [(PGSequentialFeatureExtractor *)self featureExtractor];
  v14 = 0;
  v8 = [featureExtractor floatVectorWithEntity:entityCopy error:&v14];

  v9 = v14;
  if (v8)
  {
    error = [(PGSequentialFeatureExtractor *)self _transformFloatVector:v8 error:error];
  }

  else if (error)
  {
    v10 = MEMORY[0x277CCACA8];
    featureExtractor2 = [(PGSequentialFeatureExtractor *)self featureExtractor];
    v12 = [v10 stringWithFormat:@"Feature Extraction for %@ returned nil.", objc_opt_class()];
    *error = [(PGSequentialFeatureExtractor *)self _generateErrorWithErrorCode:0 message:v12 underlyingError:v9];

    error = 0;
  }

  return error;
}

- (id)defaultFloatVectorWithError:(id *)error
{
  featureExtractor = [(PGSequentialFeatureExtractor *)self featureExtractor];
  v6 = [featureExtractor defaultFloatVectorWithError:error];

  if (v6)
  {
    v7 = [(PGSequentialFeatureExtractor *)self _transformFloatVector:v6 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)featureLength
{
  featureExtractor = [(PGSequentialFeatureExtractor *)self featureExtractor];
  featureNames = [featureExtractor featureNames];
  v4 = [featureNames count];

  return v4;
}

- (id)featureNames
{
  featureExtractor = [(PGSequentialFeatureExtractor *)self featureExtractor];
  featureNames = [featureExtractor featureNames];

  return featureNames;
}

- (id)name
{
  featureExtractor = [(PGSequentialFeatureExtractor *)self featureExtractor];
  name = [featureExtractor name];

  return name;
}

- (PGSequentialFeatureExtractor)initWithFeatureExtractor:(id)extractor featureTransformers:(id)transformers
{
  extractorCopy = extractor;
  transformersCopy = transformers;
  v12.receiver = self;
  v12.super_class = PGSequentialFeatureExtractor;
  v9 = [(PGSequentialFeatureExtractor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_featureExtractor, extractor);
    objc_storeStrong(&v10->_featureTransformers, transformers);
  }

  return v10;
}

@end