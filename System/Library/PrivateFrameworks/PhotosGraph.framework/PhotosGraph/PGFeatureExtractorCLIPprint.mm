@interface PGFeatureExtractorCLIPprint
- (id)_floatArrayFromSceneprint:(id)sceneprint;
- (id)featureNames;
- (id)featureValuesForAssets:(id)assets error:(id *)error;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorCLIPprint

- (id)featureValuesForAssets:(id)assets error:(id *)error
{
  v41[1] = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__52691;
  v38 = __Block_byref_object_dispose__52692;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__52691;
  v32 = __Block_byref_object_dispose__52692;
  v33 = 0;
  v7 = dispatch_group_create();
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __60__PGFeatureExtractorCLIPprint_featureValuesForAssets_error___block_invoke;
  v22 = &unk_278886098;
  v26 = &v28;
  v27 = &v34;
  v8 = assetsCopy;
  v23 = v8;
  selfCopy = self;
  v9 = v7;
  v25 = v9;
  v10 = _Block_copy(&v19);
  analysisService = [MEMORY[0x277D267E8] analysisService];
  dispatch_group_enter(v9);
  v40 = *MEMORY[0x277D26830];
  v41[0] = &unk_284484278;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  v13 = [analysisService requestSceneprintProcessingForAssets:v8 withOptions:v12 progressHandler:0 andCompletionHandler:v10];

  v14 = dispatch_time(0, 10000000000);
  dispatch_group_wait(v9, v14);
  if (!v35[5])
  {
    [analysisService cancelRequest:v13];
  }

  if (error)
  {
    v15 = v29[5];
    if (v15)
    {
      *error = v15;
    }
  }

  v16 = v35[5];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __60__PGFeatureExtractorCLIPprint_featureValuesForAssets_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = *(a1 + 32);
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      obj = v7;
      v14 = *v32;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          v17 = [v16 localIdentifier];
          v18 = [v5 objectForKeyedSubscript:v17];

          if (!v18)
          {
            v22 = *(*(a1 + 64) + 8);
            v23 = *(v22 + 40);
            *(v22 + 40) = 0;

            v7 = obj;
            if (!obj)
            {
              v24 = MEMORY[0x277CCA9B8];
              v35 = *MEMORY[0x277CCA450];
              v36 = @"Media Analysis returned nil for asset sceneprint with no error.";
              v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
              v7 = [v24 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureExtractorCLIPprint" code:3 userInfo:v25];
            }

            objc_storeStrong((*(*(a1 + 56) + 8) + 40), v7);
            goto LABEL_17;
          }

          v19 = [*(a1 + 40) _floatArrayFromSceneprint:v18];
          v20 = *(*(*(a1 + 64) + 8) + 40);
          v21 = [v16 localIdentifier];
          [v20 setObject:v19 forKeyedSubscript:v21];
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v7 = obj;
    }
  }

  else
  {
    if (!v6)
    {
      v26 = MEMORY[0x277CCA9B8];
      v38 = *MEMORY[0x277CCA450];
      v39[0] = @"Media Analysis returned nil result with no error.";
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
      v7 = [v26 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureExtractorCLIPprint" code:2 userInfo:v27];
    }

    v28 = *(*(a1 + 56) + 8);
    v7 = v7;
    v11 = *(v28 + 40);
    *(v28 + 40) = v7;
  }

LABEL_17:

  dispatch_group_leave(*(a1 + 48));
  v29 = *MEMORY[0x277D85DE8];
}

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  v7 = entityCopy;
  if (entityCopy)
  {
    v14[0] = entityCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v9 = [(PGFeatureExtractorCLIPprint *)self featureValuesForAssets:v8 error:error];
    if (v9)
    {
      localIdentifier = [v7 localIdentifier];
      v11 = [v9 objectForKeyedSubscript:localIdentifier];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_floatArrayFromSceneprint:(id)sceneprint
{
  sceneprintCopy = sceneprint;
  elementType = [sceneprintCopy elementType];
  if (elementType == 2)
  {
    v7 = objc_alloc_init(MEMORY[0x277D22C68]);
    descriptorData = [sceneprintCopy descriptorData];
    bytes = [descriptorData bytes];

    [v7 appendDoubles:bytes count:{objc_msgSend(sceneprintCopy, "elementCount")}];
  }

  else if (elementType == 1)
  {
    v5 = objc_alloc(MEMORY[0x277D22C40]);
    descriptorData2 = [sceneprintCopy descriptorData];
    v7 = [v5 initWithData:descriptorData2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)featureNames
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[PGFeatureExtractorCLIPprint featureLength](self, "featureLength")}];
  if ([(PGFeatureExtractorCLIPprint *)self featureLength]>= 1)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%u", @"CLIP", v5 - 1];
      [v3 setObject:v6 atIndexedSubscript:v4];

      v4 = v5;
    }

    while ([(PGFeatureExtractorCLIPprint *)self featureLength]> v5++);
  }

  return v3;
}

@end