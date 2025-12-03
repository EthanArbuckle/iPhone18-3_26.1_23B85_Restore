@interface CLSCurationSession
+ (id)scoringContextWithAssets:(id)assets aestheticScoreThresholdToBeAwesome:(double)awesome;
+ (signed)audioClassificationsToEmphasizeWithAudioClassificationCounts:(id)counts threshold:(double)threshold;
+ (void)addAudioClassifications:(signed __int16)classifications toAudioClassificationCounts:(id)counts;
+ (void)enumerateSignalsFromAsset:(id)asset fullHierarchyName:(BOOL)name usingBlock:(id)block;
- (CLSCurationSession)init;
- (id)_curationModelWithSpecification:(id)specification;
- (id)curationModelForAsset:(id)asset;
- (id)curationModelForItemInfo:(id)info options:(id)options;
- (id)curationModelWithSpecification:(id)specification;
- (void)prepareAssets:(id)assets;
@end

@implementation CLSCurationSession

- (void)prepareAssets:(id)assets
{
  v16 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [assetsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(assetsCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 hasCurationModel] & 1) == 0)
        {
          v10 = [(CLSCurationSession *)self curationModelForAsset:v9];
          [v9 setCurationModel:v10];
        }
      }

      v6 = [assetsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)curationModelForItemInfo:(id)info options:(id)options
{
  optionsCopy = options;
  infoCopy = info;
  v8 = [[CLSCurationModelSpecification alloc] initWithItemInfo:infoCopy options:optionsCopy];

  v9 = [(CLSCurationSession *)self curationModelWithSpecification:v8];

  return v9;
}

- (id)curationModelForAsset:(id)asset
{
  assetCopy = asset;
  v5 = [[CLSCurationModelSpecification alloc] initWithAsset:assetCopy];

  v6 = [(CLSCurationSession *)self curationModelWithSpecification:v5];

  return v6;
}

- (id)curationModelWithSpecification:(id)specification
{
  specificationCopy = specification;
  os_unfair_lock_lock(&self->_curationModelBySpecificationLock);
  v5 = [(NSMutableDictionary *)self->_curationModelBySpecification objectForKeyedSubscript:specificationCopy];
  if (!v5)
  {
    v6 = [CLSCurationModel baseSpecificationWithSpecification:specificationCopy];
    v5 = [(NSMutableDictionary *)self->_curationModelBySpecification objectForKeyedSubscript:v6];
    if (!v5)
    {
      v5 = [(CLSCurationSession *)self _curationModelWithSpecification:specificationCopy];
      [(NSMutableDictionary *)self->_curationModelBySpecification setObject:v5 forKeyedSubscript:v6];
    }

    [(NSMutableDictionary *)self->_curationModelBySpecification setObject:v5 forKeyedSubscript:specificationCopy];
  }

  os_unfair_lock_unlock(&self->_curationModelBySpecificationLock);

  return v5;
}

- (id)_curationModelWithSpecification:(id)specification
{
  specificationCopy = specification;
  v4 = [[CLSCurationModel alloc] initWithCurationModelSpecification:specificationCopy];

  return v4;
}

- (CLSCurationSession)init
{
  v6.receiver = self;
  v6.super_class = CLSCurationSession;
  v2 = [(CLSCurationSession *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    curationModelBySpecification = v2->_curationModelBySpecification;
    v2->_curationModelBySpecification = v3;

    v2->_curationModelBySpecificationLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

+ (void)enumerateSignalsFromAsset:(id)asset fullHierarchyName:(BOOL)name usingBlock:(id)block
{
  nameCopy = name;
  v56 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  blockCopy = block;
  v30 = assetCopy;
  curationModel = [assetCopy curationModel];
  sceneModel = [curationModel sceneModel];
  entityNetModel = [curationModel entityNetModel];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [assetCopy clsSceneClassifications];
  v36 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v36)
  {
    v35 = *v52;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v52 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v51 + 1) + 8 * i);
        v45 = 0;
        v46 = &v45;
        v47 = 0x3032000000;
        v48 = __Block_byref_object_copy__362;
        v49 = __Block_byref_object_dispose__363;
        v50 = 0;
        extendedSceneIdentifier = [v10 extendedSceneIdentifier];
        v41 = 0;
        v42 = &v41;
        v43 = 0x2020000000;
        v44 = 0;
        if (![entityNetModel isResponsibleForSignalIdentifier:extendedSceneIdentifier])
        {
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __77__CLSCurationSession_enumerateSignalsFromAsset_fullHierarchyName_usingBlock___block_invoke_2;
          v38[3] = &unk_1E82A1D10;
          v38[4] = &v45;
          v38[5] = &v41;
          v38[6] = extendedSceneIdentifier;
          [curationModel enumerateClassificationBasedSignalModelsUsingBlock:v38];
          goto LABEL_18;
        }

        if ([sceneModel isResponsibleForSignalIdentifier:extendedSceneIdentifier])
        {
          v12 = sceneModel;
        }

        else
        {
          v12 = entityNetModel;
        }

        v13 = v12;
        if (![v13 taxonomyNodeRefForSceneIdentifier:extendedSceneIdentifier])
        {
          v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%llu)", extendedSceneIdentifier];
LABEL_16:
          v16 = v46[5];
          v46[5] = v21;
          goto LABEL_17;
        }

        PFSceneTaxonomyNodeSearchThreshold();
        *(v42 + 3) = v14;
        if (!nameCopy)
        {
          v21 = PFSceneTaxonomyNodeName();
          goto LABEL_16;
        }

        v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v38[7] = MEMORY[0x1E69E9820];
        v38[8] = 3221225472;
        v38[9] = __77__CLSCurationSession_enumerateSignalsFromAsset_fullHierarchyName_usingBlock___block_invoke;
        v38[10] = &unk_1E82A1CE8;
        v39 = v13;
        v16 = v15;
        v40 = v16;
        PFSceneTaxonomyNodeTraverseParents();
        reverseObjectEnumerator = [v16 reverseObjectEnumerator];
        allObjects = [reverseObjectEnumerator allObjects];
        v19 = [allObjects componentsJoinedByString:@"->"];
        v20 = v46[5];
        v46[5] = v19;

LABEL_17:
LABEL_18:
        v37 = 0;
        v22 = v46[5];
        [v10 confidence];
        v24 = v23;
        v25 = v42[3];
        [v10 boundingBox];
        blockCopy[2](blockCopy, extendedSceneIdentifier, v22, &v37, v24, v25, v26, v27, v28, v29);
        LOBYTE(v22) = v37;
        _Block_object_dispose(&v41, 8);
        _Block_object_dispose(&v45, 8);

        if (v22)
        {
          goto LABEL_21;
        }
      }

      v36 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v36);
  }

LABEL_21:
}

uint64_t __77__CLSCurationSession_enumerateSignalsFromAsset_fullHierarchyName_usingBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneTaxonomy];
  v3 = PFSceneTaxonomyNodeLocalizedLabel();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = PFSceneTaxonomyNodeName();
  }

  v6 = v5;

  [*(a1 + 40) addObject:v6];
  return 0;
}

void __77__CLSCurationSession_enumerateSignalsFromAsset_fullHierarchyName_usingBlock___block_invoke_2(void *a1, void *a2)
{
  v3 = [a2 nodeForSignalIdentifier:a1[6]];
  if (v3)
  {
    v8 = v3;
    v4 = [v3 name];
    v5 = *(a1[4] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    [v8 operatingPoint];
    v3 = v8;
    *(*(a1[5] + 8) + 24) = v7;
  }
}

+ (signed)audioClassificationsToEmphasizeWithAudioClassificationCounts:(id)counts threshold:(double)threshold
{
  v19 = *MEMORY[0x1E69E9840];
  countsCopy = counts;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [countsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(countsCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [countsCopy countForObject:v11];
        if (v12 <= threshold)
        {
          v8 |= [v11 integerValue];
        }
      }

      v7 = [countsCopy countByEnumeratingWithState:&v14 objects:v18 count:{16, v12}];
    }

    while (v7);
  }

  else
  {
    LOWORD(v8) = 0;
  }

  return v8;
}

+ (void)addAudioClassifications:(signed __int16)classifications toAudioClassificationCounts:(id)counts
{
  classificationsCopy = classifications;
  countsCopy = counts;
  if (classificationsCopy >= 1)
  {
    LOWORD(v5) = 1;
    do
    {
      if ((v5 & classificationsCopy) != 0)
      {
        v6 = [MEMORY[0x1E696AD98] numberWithShort:v5];
        [countsCopy addObject:v6];
      }

      v5 = (2 * v5);
    }

    while (v5 <= classificationsCopy);
  }
}

+ (id)scoringContextWithAssets:(id)assets aestheticScoreThresholdToBeAwesome:(double)awesome
{
  v73 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v5 = [assetsCopy count];
  v61 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = assetsCopy;
  v6 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  if (v6)
  {
    v16 = v6;
    v54 = 0;
    v56 = 0;
    v17 = 0;
    v58 = 0;
    v18 = 0;
    v19 = 0;
    v20 = *v68;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v68 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v67 + 1) + 8 * i);
        clsViewCount = [v22 clsViewCount];
        clsPlayCount = [v22 clsPlayCount];
        if ([v22 clsShareCount])
        {
          ++v19;
        }

        hasAdjustments = [v22 hasAdjustments];
        if ([v22 clsIsInterestingLivePhoto])
        {
          ++v17;
          [self addAudioClassifications:objc_msgSend(v22 toAudioClassificationCounts:{"clsInterestingAudioClassifications"), v61}];
        }

        else if ([v22 clsIsInterestingPanorama])
        {
          ++v58;
        }

        else if ([v22 representsBurst])
        {
          ++v54;
        }

        else
        {
          v56 += [v22 clsIsInterestingSDOF];
        }

        v15 = v15 + clsViewCount;
        v14 = v14 + clsPlayCount;
        v18 += hasAdjustments;
      }

      v16 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
    }

    while (v16);
    v13 = v19;
    v12 = v18;
    v11 = v58;
    v10 = v17;
    v9 = v54;
    v8 = v56;
  }

  v55 = v10;
  v57 = v9;
  v59 = v8;

  v26 = v15 / v5;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v27 = v14 / v5;
  v28 = obj;
  v29 = [v28 countByEnumeratingWithState:&v63 objects:v71 count:16];
  v30 = 0.0;
  if (v29)
  {
    v31 = v29;
    v32 = *v64;
    v7 = 0.0;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v64 != v32)
        {
          objc_enumerationMutation(v28);
        }

        v34 = *(*(&v63 + 1) + 8 * j);
        clsViewCount2 = [v34 clsViewCount];
        v30 = v30 + (clsViewCount2 - v26) * (clsViewCount2 - v26);
        clsPlayCount2 = [v34 clsPlayCount];
        v7 = v7 + (clsPlayCount2 - v27) * (clsPlayCount2 - v27);
      }

      v31 = [v28 countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v31);
  }

  v37 = v26 + sqrt(v30 / v5) * 2.0;
  v38 = v27 + sqrt(v7 / v5) * 2.0;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v40 = [standardUserDefaults BOOLForKey:@"CLSAssetScoreIgnoreViewPlayCount"];

  if (v40)
  {
    v38 = 1.79769313e308;
    v41 = 1.79769313e308;
  }

  else
  {
    v41 = v37;
  }

  v42 = sqrt(v5) + -1.0;
  if (v42 < 0.0)
  {
    v42 = 0.0;
  }

  v43 = ceil(v42);
  v44 = v43 >= v13;
  v45 = v43 >= v12;
  v46 = v43 >= v11;
  v47 = v43 >= v55;
  v48 = v43 >= v57;
  v49 = v43 >= v59;
  v50 = [self audioClassificationsToEmphasizeWithAudioClassificationCounts:v61 threshold:?];
  v51 = objc_alloc_init(CLSAssetScoringContext);
  [(CLSAssetScoringContext *)v51 setViewCountThreshold:v41];
  [(CLSAssetScoringContext *)v51 setPlayCountThreshold:v38];
  [(CLSAssetScoringContext *)v51 setShouldEmphasizeShared:v44];
  [(CLSAssetScoringContext *)v51 setShouldEmphasizeAdjusted:v45];
  [(CLSAssetScoringContext *)v51 setShouldEmphasizePanorama:v46];
  [(CLSAssetScoringContext *)v51 setShouldEmphasizeLive:v47];
  [(CLSAssetScoringContext *)v51 setShouldEmphasizeBurst:v48];
  [(CLSAssetScoringContext *)v51 setShouldEmphasizeSDOF:v49];
  [(CLSAssetScoringContext *)v51 setAudioClassificationsToEmphasize:v50];
  [(CLSAssetScoringContext *)v51 setAestheticScoreThresholdToBeAwesome:awesome];

  return v51;
}

@end