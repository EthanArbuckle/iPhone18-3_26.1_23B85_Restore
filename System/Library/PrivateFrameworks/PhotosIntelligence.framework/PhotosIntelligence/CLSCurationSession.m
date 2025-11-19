@interface CLSCurationSession
+ (id)scoringContextWithAssets:(id)a3 aestheticScoreThresholdToBeAwesome:(double)a4;
+ (signed)audioClassificationsToEmphasizeWithAudioClassificationCounts:(id)a3 threshold:(double)a4;
+ (void)addAudioClassifications:(signed __int16)a3 toAudioClassificationCounts:(id)a4;
+ (void)enumerateSignalsFromAsset:(id)a3 fullHierarchyName:(BOOL)a4 usingBlock:(id)a5;
- (CLSCurationSession)init;
- (id)_curationModelWithSpecification:(id)a3;
- (id)curationModelForAsset:(id)a3;
- (id)curationModelForItemInfo:(id)a3 options:(id)a4;
- (id)curationModelWithSpecification:(id)a3;
- (void)prepareAssets:(id)a3;
@end

@implementation CLSCurationSession

- (void)prepareAssets:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 hasCurationModel] & 1) == 0)
        {
          v10 = [(CLSCurationSession *)self curationModelForAsset:v9];
          [v9 setCurationModel:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)curationModelForItemInfo:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CLSCurationModelSpecification alloc] initWithItemInfo:v7 options:v6];

  v9 = [(CLSCurationSession *)self curationModelWithSpecification:v8];

  return v9;
}

- (id)curationModelForAsset:(id)a3
{
  v4 = a3;
  v5 = [[CLSCurationModelSpecification alloc] initWithAsset:v4];

  v6 = [(CLSCurationSession *)self curationModelWithSpecification:v5];

  return v6;
}

- (id)curationModelWithSpecification:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_curationModelBySpecificationLock);
  v5 = [(NSMutableDictionary *)self->_curationModelBySpecification objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = [CLSCurationModel baseSpecificationWithSpecification:v4];
    v5 = [(NSMutableDictionary *)self->_curationModelBySpecification objectForKeyedSubscript:v6];
    if (!v5)
    {
      v5 = [(CLSCurationSession *)self _curationModelWithSpecification:v4];
      [(NSMutableDictionary *)self->_curationModelBySpecification setObject:v5 forKeyedSubscript:v6];
    }

    [(NSMutableDictionary *)self->_curationModelBySpecification setObject:v5 forKeyedSubscript:v4];
  }

  os_unfair_lock_unlock(&self->_curationModelBySpecificationLock);

  return v5;
}

- (id)_curationModelWithSpecification:(id)a3
{
  v3 = a3;
  v4 = [[CLSCurationModel alloc] initWithCurationModelSpecification:v3];

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

+ (void)enumerateSignalsFromAsset:(id)a3 fullHierarchyName:(BOOL)a4 usingBlock:(id)a5
{
  v31 = a4;
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a5;
  v30 = v6;
  v34 = [v6 curationModel];
  v32 = [v34 sceneModel];
  v8 = [v34 entityNetModel];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [v6 clsSceneClassifications];
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
        v11 = [v10 extendedSceneIdentifier];
        v41 = 0;
        v42 = &v41;
        v43 = 0x2020000000;
        v44 = 0;
        if (![v8 isResponsibleForSignalIdentifier:v11])
        {
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __77__CLSCurationSession_enumerateSignalsFromAsset_fullHierarchyName_usingBlock___block_invoke_2;
          v38[3] = &unk_1E82A1D10;
          v38[4] = &v45;
          v38[5] = &v41;
          v38[6] = v11;
          [v34 enumerateClassificationBasedSignalModelsUsingBlock:v38];
          goto LABEL_18;
        }

        if ([v32 isResponsibleForSignalIdentifier:v11])
        {
          v12 = v32;
        }

        else
        {
          v12 = v8;
        }

        v13 = v12;
        if (![v13 taxonomyNodeRefForSceneIdentifier:v11])
        {
          v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%llu)", v11];
LABEL_16:
          v16 = v46[5];
          v46[5] = v21;
          goto LABEL_17;
        }

        PFSceneTaxonomyNodeSearchThreshold();
        *(v42 + 3) = v14;
        if (!v31)
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
        v17 = [v16 reverseObjectEnumerator];
        v18 = [v17 allObjects];
        v19 = [v18 componentsJoinedByString:@"->"];
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
        v7[2](v7, v11, v22, &v37, v24, v25, v26, v27, v28, v29);
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

+ (signed)audioClassificationsToEmphasizeWithAudioClassificationCounts:(id)a3 threshold:(double)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v5 countForObject:v11];
        if (v12 <= a4)
        {
          v8 |= [v11 integerValue];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:{16, v12}];
    }

    while (v7);
  }

  else
  {
    LOWORD(v8) = 0;
  }

  return v8;
}

+ (void)addAudioClassifications:(signed __int16)a3 toAudioClassificationCounts:(id)a4
{
  v4 = a3;
  v7 = a4;
  if (v4 >= 1)
  {
    LOWORD(v5) = 1;
    do
    {
      if ((v5 & v4) != 0)
      {
        v6 = [MEMORY[0x1E696AD98] numberWithShort:v5];
        [v7 addObject:v6];
      }

      v5 = (2 * v5);
    }

    while (v5 <= v4);
  }
}

+ (id)scoringContextWithAssets:(id)a3 aestheticScoreThresholdToBeAwesome:(double)a4
{
  v73 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 count];
  v61 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v4;
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
        v23 = [v22 clsViewCount];
        v24 = [v22 clsPlayCount];
        if ([v22 clsShareCount])
        {
          ++v19;
        }

        v25 = [v22 hasAdjustments];
        if ([v22 clsIsInterestingLivePhoto])
        {
          ++v17;
          [a1 addAudioClassifications:objc_msgSend(v22 toAudioClassificationCounts:{"clsInterestingAudioClassifications"), v61}];
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

        v15 = v15 + v23;
        v14 = v14 + v24;
        v18 += v25;
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
        v35 = [v34 clsViewCount];
        v30 = v30 + (v35 - v26) * (v35 - v26);
        v36 = [v34 clsPlayCount];
        v7 = v7 + (v36 - v27) * (v36 - v27);
      }

      v31 = [v28 countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v31);
  }

  v37 = v26 + sqrt(v30 / v5) * 2.0;
  v38 = v27 + sqrt(v7 / v5) * 2.0;
  v39 = [MEMORY[0x1E695E000] standardUserDefaults];
  v40 = [v39 BOOLForKey:@"CLSAssetScoreIgnoreViewPlayCount"];

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
  v50 = [a1 audioClassificationsToEmphasizeWithAudioClassificationCounts:v61 threshold:?];
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
  [(CLSAssetScoringContext *)v51 setAestheticScoreThresholdToBeAwesome:a4];

  return v51;
}

@end