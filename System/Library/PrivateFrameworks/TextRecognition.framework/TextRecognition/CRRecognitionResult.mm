@interface CRRecognitionResult
- (CRRecognitionResult)init;
- (id)_recognizedRegionsForDetectedLineRegion:(id)region;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)recognizedLineRegions;
- (id)recognizedRegionsForDetectedLineRegion:(id)region;
- (id)recognizedRegionsForDetectedLineRegions:(id)regions;
- (void)addRecognizedRegionPair:(id)pair;
- (void)enumerateResultsUsingBlock:(id)block;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CRRecognitionResult);
  detectorRecognizerResultMap = [(CRRecognitionResult *)self detectorRecognizerResultMap];
  v6 = [detectorRecognizerResultMap copy];
  [(CRRecognitionResult *)v4 setDetectorRecognizerResultMap:v6];

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CRMutableRecognitionResult);
  detectorRecognizerResultMap = [(CRRecognitionResult *)self detectorRecognizerResultMap];
  v6 = [detectorRecognizerResultMap copy];
  [(CRRecognitionResult *)v4 setDetectorRecognizerResultMap:v6];

  return v4;
}

- (id)recognizedLineRegions
{
  detectorRecognizerResultMap = [(CRRecognitionResult *)self detectorRecognizerResultMap];
  allValues = [detectorRecognizerResultMap allValues];
  v4 = [allValues valueForKeyPath:@"@unionOfArrays.self"];

  return v4;
}

- (id)recognizedRegionsForDetectedLineRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_mapUpdateLock);
  detectorRecognizerResultMap = [(CRRecognitionResult *)self detectorRecognizerResultMap];
  uuid = [regionCopy uuid];

  v7 = [detectorRecognizerResultMap objectForKeyedSubscript:uuid];

  os_unfair_lock_unlock(&self->_mapUpdateLock);
  recognizedTextRegions = [v7 recognizedTextRegions];

  return recognizedTextRegions;
}

- (id)recognizedRegionsForDetectedLineRegions:(id)regions
{
  v18 = *MEMORY[0x1E69E9840];
  regionsCopy = regions;
  os_unfair_lock_lock(&self->_mapUpdateLock);
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = regionsCopy;
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

- (void)enumerateResultsUsingBlock:(id)block
{
  blockCopy = block;
  detectorRecognizerResultMap = [(CRRecognitionResult *)self detectorRecognizerResultMap];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CRRecognitionResult_enumerateResultsUsingBlock___block_invoke;
  v7[3] = &unk_1E7BC2978;
  v8 = blockCopy;
  v6 = blockCopy;
  [detectorRecognizerResultMap enumerateKeysAndObjectsUsingBlock:v7];
}

void __50__CRRecognitionResult_enumerateResultsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v6 = [v4 detectedLineRegion];
  v5 = [v4 recognizedTextRegions];

  (*(v3 + 16))(v3, v6, v5);
}

- (void)addRecognizedRegionPair:(id)pair
{
  pairCopy = pair;
  os_unfair_lock_lock(&self->_mapUpdateLock);
  detectorRecognizerResultMap = [(CRRecognitionResult *)self detectorRecognizerResultMap];
  detectedLineRegion = [pairCopy detectedLineRegion];
  uuid = [detectedLineRegion uuid];
  [detectorRecognizerResultMap setObject:pairCopy forKeyedSubscript:uuid];

  os_unfair_lock_unlock(&self->_mapUpdateLock);
}

- (id)_recognizedRegionsForDetectedLineRegion:(id)region
{
  regionCopy = region;
  detectorRecognizerResultMap = [(CRRecognitionResult *)self detectorRecognizerResultMap];
  uuid = [regionCopy uuid];

  v7 = [detectorRecognizerResultMap objectForKeyedSubscript:uuid];

  recognizedTextRegions = [v7 recognizedTextRegions];

  return recognizedTextRegions;
}

@end