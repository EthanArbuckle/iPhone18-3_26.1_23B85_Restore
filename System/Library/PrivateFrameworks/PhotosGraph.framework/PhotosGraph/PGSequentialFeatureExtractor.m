@interface PGSequentialFeatureExtractor
- (PGSequentialFeatureExtractor)initWithFeatureExtractor:(id)a3 featureTransformers:(id)a4;
- (id)_generateErrorWithErrorCode:(int64_t)a3 message:(id)a4 underlyingError:(id)a5;
- (id)_transformFloatVector:(id)a3 error:(id *)a4;
- (id)defaultFloatVectorWithError:(id *)a3;
- (id)featureNames;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
- (id)name;
- (int64_t)featureLength;
@end

@implementation PGSequentialFeatureExtractor

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

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotosGraph.PGSequentialFeatureExtractor" code:a3 userInfo:v10];

  return v11;
}

- (id)_transformFloatVector:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(PGSequentialFeatureExtractor *)self featureTransformers];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
LABEL_3:
    v11 = 0;
    v12 = v6;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v6 = [*(*(&v15 + 1) + 8 * v11) floatVectorWithFloatVector:v12 error:a4];

      if (!v6)
      {
        break;
      }

      ++v11;
      v12 = v6;
      if (v9 == v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PGSequentialFeatureExtractor *)self featureExtractor];
  v14 = 0;
  v8 = [v7 floatVectorWithEntity:v6 error:&v14];

  v9 = v14;
  if (v8)
  {
    a4 = [(PGSequentialFeatureExtractor *)self _transformFloatVector:v8 error:a4];
  }

  else if (a4)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [(PGSequentialFeatureExtractor *)self featureExtractor];
    v12 = [v10 stringWithFormat:@"Feature Extraction for %@ returned nil.", objc_opt_class()];
    *a4 = [(PGSequentialFeatureExtractor *)self _generateErrorWithErrorCode:0 message:v12 underlyingError:v9];

    a4 = 0;
  }

  return a4;
}

- (id)defaultFloatVectorWithError:(id *)a3
{
  v5 = [(PGSequentialFeatureExtractor *)self featureExtractor];
  v6 = [v5 defaultFloatVectorWithError:a3];

  if (v6)
  {
    v7 = [(PGSequentialFeatureExtractor *)self _transformFloatVector:v6 error:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)featureLength
{
  v2 = [(PGSequentialFeatureExtractor *)self featureExtractor];
  v3 = [v2 featureNames];
  v4 = [v3 count];

  return v4;
}

- (id)featureNames
{
  v2 = [(PGSequentialFeatureExtractor *)self featureExtractor];
  v3 = [v2 featureNames];

  return v3;
}

- (id)name
{
  v2 = [(PGSequentialFeatureExtractor *)self featureExtractor];
  v3 = [v2 name];

  return v3;
}

- (PGSequentialFeatureExtractor)initWithFeatureExtractor:(id)a3 featureTransformers:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGSequentialFeatureExtractor;
  v9 = [(PGSequentialFeatureExtractor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_featureExtractor, a3);
    objc_storeStrong(&v10->_featureTransformers, a4);
  }

  return v10;
}

@end