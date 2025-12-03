@interface CRMutableRecognitionResult
- (void)addContentsOfRecognitionResult:(id)result shouldOverwriteExistingHandler:(id)handler;
- (void)addRecognizedRegions:(id)regions detectedRegion:(id)region;
@end

@implementation CRMutableRecognitionResult

- (void)addRecognizedRegions:(id)regions detectedRegion:(id)region
{
  regionCopy = region;
  regionsCopy = regions;
  os_unfair_lock_lock(&self->super._mapUpdateLock);
  v8 = [[CRDetectedRecognizedRegionPair alloc] initWithDetectedRegion:regionCopy recognizedRegions:regionsCopy];

  detectorRecognizerResultMap = [(CRRecognitionResult *)self detectorRecognizerResultMap];
  uuid = [regionCopy uuid];

  [detectorRecognizerResultMap setObject:v8 forKeyedSubscript:uuid];

  os_unfair_lock_unlock(&self->super._mapUpdateLock);
}

- (void)addContentsOfRecognitionResult:(id)result shouldOverwriteExistingHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->super._mapUpdateLock);
  array = [MEMORY[0x1E695DF70] array];
  detectorRecognizerResultMap = [resultCopy detectorRecognizerResultMap];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __92__CRMutableRecognitionResult_addContentsOfRecognitionResult_shouldOverwriteExistingHandler___block_invoke;
  v21[3] = &unk_1E7BC29A0;
  v21[4] = self;
  v10 = handlerCopy;
  v23 = v10;
  v11 = array;
  v22 = v11;
  [detectorRecognizerResultMap enumerateKeysAndObjectsUsingBlock:v21];

  os_unfair_lock_unlock(&self->super._mapUpdateLock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(CRRecognitionResult *)self addRecognizedRegionPair:*(*(&v17 + 1) + 8 * v16++), v17];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v24 count:16];
    }

    while (v14);
  }
}

void __92__CRMutableRecognitionResult_addContentsOfRecognitionResult_shouldOverwriteExistingHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) detectorRecognizerResultMap];
  v7 = [v6 objectForKeyedSubscript:v13];

  if (!v7 || (v8 = *(a1 + 48), [*(a1 + 32) detectorRecognizerResultMap], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", v13), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "recognizedTextRegions"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "recognizedTextRegions"), v12 = objc_claimAutoreleasedReturnValue(), LODWORD(v8) = (*(v8 + 16))(v8, v11, v12), v12, v11, v10, v9, v8))
  {
    [*(a1 + 40) addObject:v5];
  }
}

@end