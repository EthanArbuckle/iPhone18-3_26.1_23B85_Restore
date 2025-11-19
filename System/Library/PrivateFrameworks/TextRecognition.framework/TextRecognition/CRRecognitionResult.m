@interface CRRecognitionResult
- (CRRecognitionResult)init;
- (id)_recognizedRegionsForDetectedLineRegion:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)recognizedLineRegions;
- (id)recognizedRegionsForDetectedLineRegion:(id)a3;
- (id)recognizedRegionsForDetectedLineRegions:(id)a3;
- (void)addRecognizedRegionPair:(id)a3;
- (void)enumerateResultsUsingBlock:(id)a3;
@end

@implementation CRRecognitionResult

- (CRRecognitionResult)init
{
  v6.receiver = self;
  v6.super_class = CRRecognitionResult;
  v2 = [(CRRecognitionResult *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    detectorRecognizerResultMap = v2->_detectorRecognizerResultMap;
    v2->_detectorRecognizerResultMap = v3;

    v2->_mapUpdateLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CRRecognitionResult);
  v5 = [(CRRecognitionResult *)self detectorRecognizerResultMap];
  v6 = [v5 copy];
  [(CRRecognitionResult *)v4 setDetectorRecognizerResultMap:v6];

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CRMutableRecognitionResult);
  v5 = [(CRRecognitionResult *)self detectorRecognizerResultMap];
  v6 = [v5 copy];
  [(CRRecognitionResult *)v4 setDetectorRecognizerResultMap:v6];

  return v4;
}

- (id)recognizedLineRegions
{
  v2 = [(CRRecognitionResult *)self detectorRecognizerResultMap];
  v3 = [v2 allValues];
  v4 = [v3 valueForKeyPath:@"@unionOfArrays.self"];

  return v4;
}

- (id)recognizedRegionsForDetectedLineRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_mapUpdateLock);
  v5 = [(CRRecognitionResult *)self detectorRecognizerResultMap];
  v6 = [v4 uuid];

  v7 = [v5 objectForKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_mapUpdateLock);
  v8 = [v7 recognizedTextRegions];

  return v8;
}

- (id)recognizedRegionsForDetectedLineRegions:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_mapUpdateLock);
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(CRRecognitionResult *)self _recognizedRegionsForDetectedLineRegion:*(*(&v13 + 1) + 8 * i), v13];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_mapUpdateLock);

  return v5;
}

- (void)enumerateResultsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(CRRecognitionResult *)self detectorRecognizerResultMap];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CRRecognitionResult_enumerateResultsUsingBlock___block_invoke;
  v7[3] = &unk_1E7BC2978;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void __50__CRRecognitionResult_enumerateResultsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v6 = [v4 detectedLineRegion];
  v5 = [v4 recognizedTextRegions];

  (*(v3 + 16))(v3, v6, v5);
}

- (void)addRecognizedRegionPair:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_mapUpdateLock);
  v5 = [(CRRecognitionResult *)self detectorRecognizerResultMap];
  v6 = [v4 detectedLineRegion];
  v7 = [v6 uuid];
  [v5 setObject:v4 forKeyedSubscript:v7];

  os_unfair_lock_unlock(&self->_mapUpdateLock);
}

- (id)_recognizedRegionsForDetectedLineRegion:(id)a3
{
  v4 = a3;
  v5 = [(CRRecognitionResult *)self detectorRecognizerResultMap];
  v6 = [v4 uuid];

  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v7 recognizedTextRegions];

  return v8;
}

@end