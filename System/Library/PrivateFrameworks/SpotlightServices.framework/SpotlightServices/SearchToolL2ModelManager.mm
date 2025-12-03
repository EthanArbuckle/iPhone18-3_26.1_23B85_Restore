@interface SearchToolL2ModelManager
- (BOOL)loadDictionary;
- (BOOL)loadModel;
- (SearchToolL2ModelManager)init;
- (double)getThreshold:(unint64_t)threshold;
- (id)getModelName:(unint64_t)name;
- (id)predict:(id)predict;
- (void)extractFeatures:(id)features providersPerBundle:(id)bundle indicesPerBundle:(id)perBundle;
- (void)predictProcessedFeatures:(id)features indicesPerBundle:(id)bundle allResults:(id)results;
- (void)unloadModel;
@end

@implementation SearchToolL2ModelManager

- (SearchToolL2ModelManager)init
{
  v6.receiver = self;
  v6.super_class = SearchToolL2ModelManager;
  v2 = [(SearchToolL2ModelManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB30]);
    condition = v2->_condition;
    v2->_condition = v3;
  }

  v2->_loaded = 0;
  return v2;
}

- (BOOL)loadModel
{
  selfCopy = self;
  v38 = *MEMORY[0x1E69E9840];
  [(NSCondition *)self->_condition lock];
  if (selfCopy->_loaded)
  {
    v3 = SSGeneralLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D9F69000, v3, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [L2] model is already loaded!", buf, 2u);
    }

    [(NSCondition *)selfCopy->_condition unlock];
    v4 = 1;
  }

  else
  {
    selfCopy->_loaded = 0;
    if ([(SearchToolL2ModelManager *)selfCopy loadDictionary])
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      obj = selfCopy->_modelConfigs;
      v27 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v27)
      {
        v25 = *v30;
        v26 = selfCopy;
        while (2)
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v30 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v6 = *(*(&v29 + 1) + 8 * i);
            v7 = [(NSMutableDictionary *)selfCopy->_modelConfigs objectForKeyedSubscript:v6];
            v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"searchToolL2_%@.mlmodelc", v6];
            v9 = SSDefaultsGetAssetPath(v8);
            v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];
            v11 = objc_opt_new();
            v28 = 0;
            v12 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:v10 configuration:v11 error:&v28];
            v13 = v28;
            [v7 setModel:v12];

            model = [v7 model];

            v15 = SSGeneralLog();
            v16 = v15;
            if (model)
            {
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                [v7 threshold];
                *buf = 138412546;
                v34 = v6;
                v35 = 2048;
                v36 = v17;
                _os_log_impl(&dword_1D9F69000, v16, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [L2] loaded model %@. threshold=%f", buf, 0x16u);
              }

              selfCopy = v26;
            }

            else
            {
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v34 = v8;
                _os_log_error_impl(&dword_1D9F69000, v16, OS_LOG_TYPE_ERROR, "[SpotlightRanking] [SearchTool] [L2] failed to load model %@", buf, 0xCu);
              }

              selfCopy = v26;
              modelConfigs = v26->_modelConfigs;
              v26->_modelConfigs = 0;

              [(NSCondition *)v26->_condition unlock];
            }

            if (!model)
            {

              goto LABEL_28;
            }
          }

          v27 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      v19 = SSGeneralLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(NSMutableDictionary *)selfCopy->_modelConfigs count];
        *buf = 134217984;
        v34 = v20;
        _os_log_impl(&dword_1D9F69000, v19, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [L2] successfully loaded %lu l2 model", buf, 0xCu);
      }

      v4 = 1;
      selfCopy->_loaded = 1;
      [(NSCondition *)selfCopy->_condition unlock];
    }

    else
    {
      v21 = SSGeneralLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(SearchToolL2ModelManager *)v21 loadModel];
      }

      [(NSCondition *)selfCopy->_condition unlock];
LABEL_28:
      v4 = 0;
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)unloadModel
{
  [(NSCondition *)self->_condition lock];
  modelConfigs = self->_modelConfigs;
  self->_modelConfigs = 0;

  self->_loaded = 0;
  v4 = SSGeneralLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D9F69000, v4, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [L2] unloaded L3 model!", v5, 2u);
  }

  [(NSCondition *)self->_condition unlock];
}

- (BOOL)loadDictionary
{
  v3 = [L3ModelManager loadMdpData:@"searchtool_l2_dict.mdplist"];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  _MDPlistGetRootPlistObjectFromPlist();
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  modelConfigs = self->_modelConfigs;
  self->_modelConfigs = v5;

  _MDPlistDictionaryIterate();
  v7 = [(NSMutableDictionary *)self->_modelConfigs count:0]!= 0;
  CFRelease(v4);
  return v7;
}

void __42__SearchToolL2ModelManager_loadDictionary__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v11, 0, sizeof(v11));
  v7 = objc_alloc_init(ModelConfig);
  v8 = [L3ModelManager getArrayStringField:a4 fieldName:"features"];
  [(ModelConfig *)v7 setFeatureNames:v8];

  [L3ModelManager getFloatFeatureField:a4 valueObj:v11 fieldName:"threshold" defaultValue:0.0];
  [(ModelConfig *)v7 setThreshold:?];
  v9 = *(*(a1 + 32) + 24);
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  [v9 setObject:v7 forKeyedSubscript:v10];
}

- (id)getModelName:(unint64_t)name
{
  v3 = @"MobileSMS";
  v4 = @"mobilecal";
  v5 = @"mobileslideshow";
  if ((name & 0x3E060000) == 0)
  {
    v5 = 0;
  }

  if ((name & 0x20) == 0)
  {
    v4 = v5;
  }

  if ((name & 8) == 0)
  {
    v3 = v4;
  }

  if ((name & 0x100000) != 0)
  {
    return @"mobilemail";
  }

  else
  {
    return v3;
  }
}

- (void)extractFeatures:(id)features providersPerBundle:(id)bundle indicesPerBundle:(id)perBundle
{
  v79 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  bundleCopy = bundle;
  perBundleCopy = perBundle;
  if ([(NSMutableDictionary *)self->_modelConfigs count])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    selfCopy = self;
    v11 = self->_modelConfigs;
    v12 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v72 objects:v78 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v73;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v73 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v72 + 1) + 8 * i);
          array = [MEMORY[0x1E695DF70] array];
          [v10 setObject:array forKeyedSubscript:v16];

          array2 = [MEMORY[0x1E695DF70] array];
          [perBundleCopy setObject:array2 forKeyedSubscript:v16];
        }

        v13 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v72 objects:v78 count:16];
      }

      while (v13);
    }

    if ([featuresCopy count])
    {
      v19 = 0;
      v54 = bundleCopy;
      v55 = featuresCopy;
      do
      {
        v20 = [featuresCopy objectAtIndexedSubscript:v19];
        v21 = [v20 objectForKeyedSubscript:@"bundleIDType"];
        intValue = [v21 intValue];

        v23 = [(SearchToolL2ModelManager *)selfCopy getModelName:intValue];
        if (v23)
        {
          v24 = featuresCopy;
          v25 = [v10 objectForKeyedSubscript:v23];
          v26 = [perBundleCopy objectForKeyedSubscript:v23];
          v27 = [(NSMutableDictionary *)selfCopy->_modelConfigs objectForKeyedSubscript:v23];
          if (v25)
          {
            v28 = v26 == 0;
          }

          else
          {
            v28 = 1;
          }

          if (!v28 && v27 != 0)
          {
            v57 = v26;
            v58 = v25;
            v59 = v23;
            v60 = v19;
            v30 = v27;
            dictionary = [MEMORY[0x1E695DF90] dictionary];
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v56 = v30;
            featureNames = [v30 featureNames];
            v33 = [featureNames countByEnumeratingWithState:&v68 objects:v77 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v69;
              do
              {
                for (j = 0; j != v34; ++j)
                {
                  if (*v69 != v35)
                  {
                    objc_enumerationMutation(featureNames);
                  }

                  v37 = *(*(&v68 + 1) + 8 * j);
                  v38 = [v20 objectForKeyedSubscript:v37];
                  [v38 doubleValue];
                  v40 = v39;

                  v41 = [MEMORY[0x1E695FE60] featureValueWithDouble:v40];
                  [dictionary setObject:v41 forKeyedSubscript:v37];
                }

                v34 = [featureNames countByEnumeratingWithState:&v68 objects:v77 count:16];
              }

              while (v34);
            }

            v42 = objc_alloc(MEMORY[0x1E695FE48]);
            v67 = 0;
            v43 = [v42 initWithDictionary:dictionary error:&v67];
            [v58 addObject:v43];
            v19 = v60;
            v44 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v60];
            v26 = v57;
            [v57 addObject:v44];

            v25 = v58;
            bundleCopy = v54;
            v24 = v55;
            v23 = v59;
            v27 = v56;
          }

          featuresCopy = v24;
        }

        ++v19;
      }

      while (v19 < [featuresCopy count]);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v45 = v10;
    v46 = [v45 countByEnumeratingWithState:&v63 objects:v76 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v64;
      do
      {
        for (k = 0; k != v47; ++k)
        {
          if (*v64 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v63 + 1) + 8 * k);
          v51 = [v45 objectForKeyedSubscript:v50];
          if ([v51 count])
          {
            v52 = [objc_alloc(MEMORY[0x1E695FE30]) initWithFeatureProviderArray:v51];
            [bundleCopy setObject:v52 forKeyedSubscript:v50];
          }
        }

        v47 = [v45 countByEnumeratingWithState:&v63 objects:v76 count:16];
      }

      while (v47);
    }
  }

  v53 = *MEMORY[0x1E69E9840];
}

- (id)predict:(id)predict
{
  predictCopy = predict;
  if ([(NSMutableDictionary *)self->_modelConfigs count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(predictCopy, "count")}];
    if ([predictCopy count])
    {
      v6 = 0;
      do
      {
        [v5 addObject:&unk_1F55B6D48];
        ++v6;
      }

      while (v6 < [predictCopy count]);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [(SearchToolL2ModelManager *)self extractFeatures:predictCopy providersPerBundle:dictionary indicesPerBundle:dictionary2];
    if ([dictionary count])
    {
      [(SearchToolL2ModelManager *)self predictProcessedFeatures:dictionary indicesPerBundle:dictionary2 allResults:v5];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)predictProcessedFeatures:(id)features indicesPerBundle:(id)bundle allResults:(id)results
{
  v63 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  bundleCopy = bundle;
  resultsCopy = results;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = featuresCopy;
  v47 = [featuresCopy countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v47)
  {
    v44 = *v55;
    v10 = @"prob";
    v11 = 0x1E696A000uLL;
    *&v9 = 134218240;
    v43 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v55 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v54 + 1) + 8 * v12);
        v14 = [(NSMutableDictionary *)self->_modelConfigs objectForKeyedSubscript:v13, v43];
        model = [v14 model];

        v16 = [obj objectForKeyedSubscript:v13];
        v17 = [bundleCopy objectForKeyedSubscript:v13];
        v53 = 0;
        v18 = [model predictionsFromBatch:v16 error:&v53];
        v19 = v53;
        v51 = v16;
        v52 = model;
        v49 = v19;
        v50 = v12;
        if (v19)
        {
          v20 = v19;
          v21 = SSGeneralLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v59 = v20;
            v22 = v21;
            v23 = "[SpotlightRanking] [SearchTool] [L2] prediction error %@";
            v24 = 12;
            goto LABEL_16;
          }

          goto LABEL_17;
        }

        v25 = [v18 count];
        if (v25 != [v17 count])
        {
          v21 = SSGeneralLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v40 = [v18 count];
            v41 = [v17 count];
            *buf = v43;
            v59 = v40;
            v60 = 2048;
            v61 = v41;
            v22 = v21;
            v23 = "[SpotlightRanking] [SearchTool] [L2] batch prediction results returns a different count %lu from features count %lu";
            v24 = 22;
LABEL_16:
            _os_log_error_impl(&dword_1D9F69000, v22, OS_LOG_TYPE_ERROR, v23, buf, v24);
          }

LABEL_17:

          goto LABEL_18;
        }

        if ([v18 count] >= 1)
        {
          v26 = 0;
          do
          {
            v27 = [v18 featuresAtIndex:v26];
            [v27 featureValueForName:v10];
            v29 = v28 = resultsCopy;
            [v29 dictionaryValue];
            v30 = v17;
            v32 = v31 = v11;
            [v32 objectForKeyedSubscript:&unk_1F55B3C48];
            v34 = v33 = v10;
            [v34 doubleValue];
            v36 = v35;

            v11 = v31;
            v17 = v30;

            v37 = [v30 objectAtIndexedSubscript:v26];
            LODWORD(v29) = [v37 intValue];

            v38 = [*(v11 + 3480) numberWithDouble:v36];
            v39 = v29;
            resultsCopy = v28;
            [v28 setObject:v38 atIndexedSubscript:v39];

            v10 = v33;
            ++v26;
          }

          while (v26 < [v18 count]);
        }

LABEL_18:

        v12 = v50 + 1;
      }

      while (v50 + 1 != v47);
      v47 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v47);
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (double)getThreshold:(unint64_t)threshold
{
  v4 = [(SearchToolL2ModelManager *)self getModelName:threshold];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_modelConfigs objectForKeyedSubscript:v4];
    v6 = v5;
    if (v5)
    {
      [v5 threshold];
      v8 = v7;
    }

    else
    {
      v8 = -1.0;
    }
  }

  else
  {
    v8 = -1.0;
  }

  return v8;
}

@end