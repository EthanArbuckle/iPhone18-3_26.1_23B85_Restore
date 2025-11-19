@interface L3ModelManager
+ (BOOL)getBoolFeatureField:(id *)a3 valueObj:(id *)a4 fieldName:(const char *)a5 defaultValue:(BOOL)a6;
+ (_MDPlistContainer)loadMdpData:(id)a3;
+ (const)getStringFeatureField:(id *)a3 valueObj:(id *)a4 fieldName:(const char *)a5 log:(BOOL)a6;
+ (float)getFloatFeatureField:(id *)a3 valueObj:(id *)a4 fieldName:(const char *)a5 defaultValue:(float)a6;
+ (id)get2DArrayFeatureField:(id *)a3 fieldName:(const char *)a4 dataType:(int)a5;
+ (id)getArrayDictionaryFeatureField:(id *)a3 fieldName:(const char *)a4;
+ (id)getArrayFeatureField:(id *)a3 fieldName:(const char *)a4 dataType:(int)a5;
+ (id)getArrayStringField:(id *)a3 fieldName:(const char *)a4;
+ (int64_t)getIntFeatureField:(id *)a3 valueObj:(id *)a4 fieldName:(const char *)a5 defaultValue:(int64_t)a6;
- (BOOL)loadDictionary;
- (BOOL)loadModel;
- (BOOL)loadModelConfig;
- (BOOL)loadUnitTestData:(id)a3;
- (L3ModelManager)init;
- (id)predictProcessedFeatures:(id)a3 denseFeatures:(id)a4;
- (int64_t)getBundleId:(id)a3 defaultValue:(int64_t)a4 hashing:(BOOL)a5 hashBucketStart:(int)a6 embeddingTableSize:(int)a7;
- (int64_t)getLocaleId:(id)a3 defaultValue:(int64_t)a4;
- (void)extractFeatures:(id)a3 idFeatures:(id)a4 denseFeatures:(id)a5 index:(int64_t)a6 unitTest:(BOOL)a7;
- (void)unloadModel;
@end

@implementation L3ModelManager

- (L3ModelManager)init
{
  v6.receiver = self;
  v6.super_class = L3ModelManager;
  v2 = [(L3ModelManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB30]);
    condition = v2->_condition;
    v2->_condition = v3;
  }

  return v2;
}

- (BOOL)loadModel
{
  v21 = *MEMORY[0x1E69E9840];
  [(NSCondition *)self->_condition lock];
  if (self->_loaded)
  {
    v3 = SSGeneralLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D9F69000, v3, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] L3 - model is already loaded!", buf, 2u);
    }

    [(NSCondition *)self->_condition unlock];
    v4 = 1;
    goto LABEL_22;
  }

  self->_loaded = 0;
  if (![(L3ModelManager *)self loadDictionary])
  {
    v15 = SSGeneralLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [L3ModelManager loadModel];
    }

    goto LABEL_17;
  }

  if (![(L3ModelManager *)self loadModelConfig])
  {
    v15 = SSGeneralLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [L3ModelManager loadModel];
    }

LABEL_17:

    [(NSCondition *)self->_condition unlock];
    v4 = 0;
    goto LABEL_22;
  }

  v5 = @"spotlight_l3_ios_v1.mlmodelc";
  v6 = SSDefaultsGetAssetPath(@"spotlight_l3_ios_v1.mlmodelc");
  if (!v6)
  {
    v5 = @"spotlight_l3_ios.mlmodelc";
    v6 = SSDefaultsGetAssetPath(@"spotlight_l3_ios.mlmodelc");
  }

  v7 = v6;
  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
  v9 = objc_opt_new();
  [v9 setComputeUnits:0];
  v18 = 0;
  v10 = [[spotlight_l3_1 alloc] initWithContentsOfURL:v8 configuration:v9 error:&v18];
  v11 = v18;
  model = self->_model;
  self->_model = v10;

  v4 = v11 == 0;
  v13 = SSGeneralLog();
  v14 = v13;
  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(L3ModelManager *)v5 loadModel];
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_1D9F69000, v14, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] L3 - successfully loaded l3 model %@ ", buf, 0xCu);
    }

    self->_loaded = 1;
  }

  [(NSCondition *)self->_condition unlock];

LABEL_22:
  v16 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)unloadModel
{
  [(NSCondition *)self->_condition lock];
  bundleDict = self->_bundleDict;
  if (bundleDict)
  {
    self->_bundleDict = 0;
  }

  localeDict = self->_localeDict;
  if (localeDict)
  {
    self->_localeDict = 0;
  }

  idFeatureConfigs = self->_idFeatureConfigs;
  if (idFeatureConfigs)
  {
    self->_idFeatureConfigs = 0;
  }

  denseFeatureConfigs = self->_denseFeatureConfigs;
  if (denseFeatureConfigs)
  {
    self->_denseFeatureConfigs = 0;
  }

  v7 = [(spotlight_l3_1 *)self->_model model];

  if (v7)
  {
    model = self->_model;
    self->_model = 0;
  }

  self->_loaded = 0;
  v9 = SSGeneralLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1D9F69000, v9, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] L3 - unloaded L3 model!", v10, 2u);
  }

  [(NSCondition *)self->_condition unlock];
}

+ (_MDPlistContainer)loadMdpData:(id)a3
{
  v3 = SSDefaultsGetAssetPath(a3);
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v4 options:8 error:0];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      v8 = *MEMORY[0x1E695E480];
      [v7 bytes];
      [v7 length];
      v9 = _MDPlistContainerCreateWithBytesAndDeallocator();
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)loadDictionary
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [L3ModelManager loadMdpData:@"spotlight_l3_dictionary.mdplist"];
  if (v3)
  {
    v4 = v3;
    v19 = xmmword_1E8595E10;
    v20 = xmmword_1E8595E00;
    v17 = 0uLL;
    v18 = 0;
    localeDict = self->_localeDict;
    self->_localeDict = 0;

    bundleDict = self->_bundleDict;
    self->_bundleDict = 0;

    if (_MDPlistContainerGetPlistObjectAtKeyArray())
    {
      v15 = v17;
      v16 = v18;
      v7 = [[SSPlistDataReader alloc] initWithPlistContainer:v4 obj:&v15];
      v8 = self->_bundleDict;
      self->_bundleDict = v7;
    }

    if (_MDPlistContainerGetPlistObjectAtKeyArray())
    {
      v9 = [SSPlistDataReader alloc];
      v15 = v17;
      v16 = v18;
      v10 = [(SSPlistDataReader *)v9 initWithPlistContainer:v4 obj:&v15];
      v11 = self->_localeDict;
      self->_localeDict = v10;
    }

    if (self->_bundleDict)
    {
      v12 = self->_localeDict != 0;
    }

    else
    {
      v12 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)loadModelConfig
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [L3ModelManager loadMdpData:@"spotlight_l3_model_v1.mdplist"];
  if (!v3)
  {
    v3 = [L3ModelManager loadMdpData:@"spotlight_l3_model.mdplist"];
    if (!v3)
    {
      v26 = 0;
      goto LABEL_34;
    }
  }

  v41 = xmmword_1E8595E20;
  v39 = 0uLL;
  v40 = 0;
  cf = v3;
  if (!_MDPlistContainerGetPlistObjectAtKeyArray())
  {
    goto LABEL_32;
  }

  v4 = objc_opt_new();
  idFeatureConfigs = self->_idFeatureConfigs;
  self->_idFeatureConfigs = v4;

  v6 = objc_opt_new();
  denseFeatureConfigs = self->_denseFeatureConfigs;
  self->_denseFeatureConfigs = v6;

  v37 = v39;
  v38 = v40;
  Count = _MDPlistArrayGetCount();
  v9 = 0x1E8593000uLL;
  if (Count < 1)
  {
LABEL_24:
    v26 = 1;
    goto LABEL_33;
  }

  v32 = Count;
  v10 = 0;
  while (1)
  {
    v37 = 0uLL;
    v38 = 0;
    v35 = v39;
    v36 = v40;
    _MDPlistArrayGetPlistObjectAtIndex();
    v35 = 0uLL;
    v36 = 0;
    if (([*(v9 + 992) getBoolFeatureField:&v37 valueObj:&v35 fieldName:"enabled" defaultValue:1] & 1) == 0)
    {
      goto LABEL_23;
    }

    v11 = [*(v9 + 992) getStringFeatureField:&v37 valueObj:&v35 fieldName:"name" log:1];
    if (!v11)
    {
      break;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    if (!strcmp([*(v9 + 992) getStringFeatureField:&v37 valueObj:&v35 fieldName:"feature_type" log:1], "id_string"))
    {
      v13 = objc_opt_new();
      [v13 setName:v12];
      [v13 setEmbeddingTableSize:{+[L3ModelManager getIntFeatureField:valueObj:fieldName:defaultValue:](L3ModelManager, "getIntFeatureField:valueObj:fieldName:defaultValue:", &v37, &v35, "embedding_size", 1024)}];
      [v13 setEmbeddingDimention:{+[L3ModelManager getIntFeatureField:valueObj:fieldName:defaultValue:](L3ModelManager, "getIntFeatureField:valueObj:fieldName:defaultValue:", &v37, &v35, "embedding_dim", 128)}];
      [v13 setHashing:{+[L3ModelManager getBoolFeatureField:valueObj:fieldName:defaultValue:](L3ModelManager, "getBoolFeatureField:valueObj:fieldName:defaultValue:", &v37, &v35, "hashing", 0)}];
      [v13 setHashBucketStart:{+[L3ModelManager getIntFeatureField:valueObj:fieldName:defaultValue:](L3ModelManager, "getIntFeatureField:valueObj:fieldName:defaultValue:", &v37, &v35, "hash_bucket_start", 128)}];
      [(NSMutableArray *)self->_idFeatureConfigs addObject:v13];
    }

    else
    {
      v13 = objc_opt_new();
      [L3ModelManager getFloatFeatureField:&v37 valueObj:&v35 fieldName:"default_value" defaultValue:0.0];
      [v13 setDefaultValue:?];
      v33 = v37;
      v34 = v38;
      if (_MDPlistDictionaryGetPlistObjectForKey())
      {
        [v13 setNormalization:1];
        v33 = 0uLL;
        v34 = 0;
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{+[L3ModelManager getStringFeatureField:valueObj:fieldName:log:](L3ModelManager, "getStringFeatureField:valueObj:fieldName:log:", &v35, &v33, "type", 1)}];
        [v13 setNormalizationType:v14];

        *&v15 = [L3ModelManager getIntFeatureField:&v35 valueObj:&v33 fieldName:"min" defaultValue:0];
        [v13 setNormalizationMin:v15];
        *&v16 = [L3ModelManager getIntFeatureField:&v35 valueObj:&v33 fieldName:"max" defaultValue:10];
        [v13 setNormalizationMax:v16];
      }

      else
      {
        [v13 setNormalization:0];
      }

      v17 = [L3ModelManager getStringFeatureField:&v37 valueObj:&v35 fieldName:"transform" log:0];
      if (v17)
      {
        [v13 setTransform:1];
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];
        [v13 setTransformType:v18];

        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{+[L3ModelManager getStringFeatureField:valueObj:fieldName:log:](L3ModelManager, "getStringFeatureField:valueObj:fieldName:log:", &v37, &v35, "original_feature", 1)}];
        [v13 setOriginalFeatureName:v19];
      }

      if ([L3ModelManager getStringFeatureField:&v37 valueObj:&v35 fieldName:"nested_field" log:0])
      {
        v20 = [L3ModelManager getStringFeatureField:&v37 valueObj:&v35 fieldName:"sub_name" log:1];
        if (!v20)
        {
          v28 = SSGeneralLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [L3ModelManager loadModelConfig];
          }

          goto LABEL_32;
        }

        v21 = [L3ModelManager getIntFeatureField:&v37 valueObj:&v35 fieldName:"padding" defaultValue:3];
        if (v21 >= 1)
        {
          v22 = 0;
          do
          {
            v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s_%d", v11, v20, v22];

            v24 = self->_denseFeatureConfigs;
            v25 = [[DenseFeatureConfig alloc] initWithConfig:v13 name:v23];
            [(NSMutableArray *)v24 addObject:v25];

            v22 = (v22 + 1);
            v12 = v23;
          }

          while (v21 != v22);
          v12 = v23;
        }
      }

      else
      {
        [v13 setName:v12];
        [(NSMutableArray *)self->_denseFeatureConfigs addObject:v13];
      }
    }

    v9 = 0x1E8593000;
LABEL_23:
    if (++v10 == v32)
    {
      goto LABEL_24;
    }
  }

  v27 = SSGeneralLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [L3ModelManager loadModelConfig];
  }

LABEL_32:
  v26 = 0;
LABEL_33:
  CFRelease(cf);
LABEL_34:
  v29 = *MEMORY[0x1E69E9840];
  return v26;
}

- (BOOL)loadUnitTestData:(id)a3
{
  v3 = a3;
  v4 = [L3ModelManager loadMdpData:@"spotlight_l3_ios_unit_test_data_v1.mdplist"];
  if (v4)
  {
    v5 = v4;
    memset(v12, 0, sizeof(v12));
    _MDPlistGetRootPlistObjectFromPlist();
    v6 = [L3ModelManager get2DArrayFeatureField:v12 fieldName:"idFeatures" dataType:0];
    if (v6)
    {
      v7 = [L3ModelManager get2DArrayFeatureField:v12 fieldName:"denseFeatures" dataType:1];
      v8 = v7 != 0;
      if (v7)
      {
        v9 = [L3ModelManager getArrayDictionaryFeatureField:v12 fieldName:"rawFeatures"];
        v10 = [L3ModelManager getArrayFeatureField:v12 fieldName:"scores" dataType:1];
        [v3 setObject:v6 forKeyedSubscript:@"idFeatures"];
        [v3 setObject:v7 forKeyedSubscript:@"denseFeatures"];
        [v3 setObject:v9 forKeyedSubscript:@"rawFeatures"];
        [v3 setObject:v10 forKeyedSubscript:@"scores"];
      }
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (const)getStringFeatureField:(id *)a3 valueObj:(id *)a4 fieldName:(const char *)a5 log:(BOOL)a6
{
  v6 = a6;
  v11 = *a3;
  if (_MDPlistDictionaryGetPlistObjectForKey())
  {
    v12 = *&a4->var0;
    var2 = a4->var2;
    return _MDPlistStringGetValue();
  }

  else
  {
    if (v6)
    {
      v10 = SSGeneralLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [L3ModelManager getStringFeatureField:a5 valueObj:v10 fieldName:? log:?];
      }
    }

    return 0;
  }
}

+ (BOOL)getBoolFeatureField:(id *)a3 valueObj:(id *)a4 fieldName:(const char *)a5 defaultValue:(BOOL)a6
{
  v9 = *a3;
  if (_MDPlistDictionaryGetPlistObjectForKey())
  {
    v10 = *&a4->var0;
    var2 = a4->var2;
    return _MDPlistBooleanGetValue() != 0;
  }

  return a6;
}

+ (int64_t)getIntFeatureField:(id *)a3 valueObj:(id *)a4 fieldName:(const char *)a5 defaultValue:(int64_t)a6
{
  v9 = *a3;
  if (_MDPlistDictionaryGetPlistObjectForKey())
  {
    v10 = *&a4->var0;
    var2 = a4->var2;
    return _MDPlistNumberGetIntValue();
  }

  return a6;
}

+ (float)getFloatFeatureField:(id *)a3 valueObj:(id *)a4 fieldName:(const char *)a5 defaultValue:(float)a6
{
  v10 = *a3;
  if (_MDPlistDictionaryGetPlistObjectForKey())
  {
    v11 = *&a4->var0;
    var2 = a4->var2;
    _MDPlistNumberGetDoubleValue();
    return v8;
  }

  return a6;
}

+ (id)get2DArrayFeatureField:(id *)a3 fieldName:(const char *)a4 dataType:(int)a5
{
  v17 = *a3;
  if (!_MDPlistDictionaryGetPlistObjectForKey())
  {
    v15 = 0;
    goto LABEL_16;
  }

  Count = _MDPlistArrayGetCount();
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
  if (Count < 1)
  {
LABEL_12:
    v15 = v7;
    goto LABEL_15;
  }

  v8 = 0;
  while (1)
  {
    _MDPlistArrayGetPlistObjectAtIndex();
    v9 = _MDPlistArrayGetCount();
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
    v11 = v10;
    if (v9 >= 1)
    {
      break;
    }

LABEL_11:
    [v7 addObject:v11];

    if (++v8 == Count)
    {
      goto LABEL_12;
    }
  }

  if (a5 <= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      v13 = MEMORY[0x1E696AD98];
      _MDPlistArrayGetPlistObjectAtIndex();
      if (a5)
      {
        _MDPlistNumberGetDoubleValue();
        [v13 numberWithDouble:{0, 0, 0}];
      }

      else
      {
        [v13 numberWithLongLong:{_MDPlistNumberGetIntValue(), 0, 0, 0}];
      }
      v14 = ;
      [v11 addObject:v14];
    }

    goto LABEL_11;
  }

  v15 = 0;
LABEL_15:

LABEL_16:

  return v15;
}

+ (id)getArrayFeatureField:(id *)a3 fieldName:(const char *)a4 dataType:(int)a5
{
  v14 = *a3;
  if (!_MDPlistDictionaryGetPlistObjectForKey())
  {
    v12 = 0;
    goto LABEL_13;
  }

  Count = _MDPlistArrayGetCount();
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
  if (Count < 1)
  {
LABEL_9:
    v12 = v7;
    goto LABEL_12;
  }

  v8 = 0;
  while (1)
  {
    _MDPlistArrayGetPlistObjectAtIndex();
    if (a5 == 1)
    {
      v10 = MEMORY[0x1E696AD98];
      _MDPlistNumberGetDoubleValue();
      v9 = [v10 numberWithDouble:{0, 0, 0}];
      goto LABEL_8;
    }

    if (a5)
    {
      break;
    }

    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{_MDPlistNumberGetIntValue(), 0, 0, 0}];
LABEL_8:
    v11 = v9;
    [v7 addObject:v9];

    if (Count == ++v8)
    {
      goto LABEL_9;
    }
  }

  v12 = 0;
LABEL_12:

LABEL_13:

  return v12;
}

+ (id)getArrayDictionaryFeatureField:(id *)a3 fieldName:(const char *)a4
{
  v10 = *a3;
  if (_MDPlistDictionaryGetPlistObjectForKey())
  {
    Count = _MDPlistArrayGetCount();
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        _MDPlistArrayGetPlistObjectAtIndex();
        v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:_MDPlistDictionaryGetCount()];
        v7 = v9;
        _MDPlistDictionaryIterate();
        [v5 addObject:v7];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __59__L3ModelManager_getArrayDictionaryFeatureField_fieldName___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v12 = *a4;
  v16 = *(a4 + 2);
  if (_MDPlistGetPlistObjectType() == 244 || (v13 = *a4, v17 = *(a4 + 2), _MDPlistGetPlistObjectType() == 245))
  {
    v14 = *a4;
    v18 = *(a4 + 2);
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:_MDPlistStringGetValue()];
    v8 = *(a1 + 32);
    v9 = MEMORY[0x1E696AEC0];
  }

  else
  {
    v10 = MEMORY[0x1E696AD98];
    v15 = *a4;
    v19 = *(a4 + 2);
    _MDPlistNumberGetDoubleValue();
    v7 = [v10 numberWithDouble:?];
    v8 = *(a1 + 32);
    v9 = MEMORY[0x1E696AEC0];
  }

  v11 = [v9 stringWithUTF8String:a2];
  [v8 setObject:v7 forKeyedSubscript:v11];
}

+ (id)getArrayStringField:(id *)a3 fieldName:(const char *)a4
{
  v6 = *a3;
  if (_MDPlistDictionaryGetPlistObjectForKey())
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:_MDPlistArrayGetCount()];
    _MDPlistArrayIterate();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __48__L3ModelManager_getArrayStringField_fieldName___block_invoke(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  Value = _MDPlistStringGetValue();
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{Value, v6, v7, 0}];
  [v4 addObject:v5];
}

- (int64_t)getBundleId:(id)a3 defaultValue:(int64_t)a4 hashing:(BOOL)a5 hashBucketStart:(int)a6 embeddingTableSize:(int)a7
{
  if (a3)
  {
    bundleDict = self->_bundleDict;
    if (bundleDict)
    {
      v10 = a5;
      v11 = [SSPlistDataReader intValueForBundle:"intValueForBundle:defaultValue:" defaultValue:?];
      a4 = v11;
      if (v10 && v11 >= a6)
      {
        return (v11 - a6) % (a7 - a6) + a6;
      }
    }
  }

  return a4;
}

- (int64_t)getLocaleId:(id)a3 defaultValue:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && self->_localeDict)
  {
    v8 = [v6 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

    a4 = -[SSPlistDataReader intValueForKey:defaultValue:](self->_localeDict, "intValueForKey:defaultValue:", [v8 UTF8String], a4);
    v7 = v8;
  }

  return a4;
}

- (void)extractFeatures:(id)a3 idFeatures:(id)a4 denseFeatures:(id)a5 index:(int64_t)a6 unitTest:(BOOL)a7
{
  v69 = a7;
  v93 = *MEMORY[0x1E69E9840];
  v75 = a3;
  v70 = a4;
  v73 = a5;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v10 = self->_idFeatureConfigs;
  v74 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v81 objects:v92 count:16];
  if (v74)
  {
    v11 = 0;
    obj = *v82;
    do
    {
      for (i = 0; i != v74; ++i)
      {
        if (*v82 != obj)
        {
          objc_enumerationMutation(v10);
        }

        v13 = *(*(&v81 + 1) + 8 * i);
        v14 = [v13 name];
        v15 = [v14 isEqualToString:@"locale"];

        if (v15)
        {
          v16 = MEMORY[0x1E696AD98];
          v17 = [v13 name];
          v18 = [v75 objectForKey:v17];
          v19 = [v16 numberWithLong:{-[L3ModelManager getLocaleId:defaultValue:](self, "getLocaleId:defaultValue:", v18, 1)}];
          v20 = [MEMORY[0x1E696AD98] numberWithLong:a6];
          v91[0] = v20;
          v21 = (v11 + 1);
          v22 = [MEMORY[0x1E696AD98] numberWithInt:v11];
          v91[1] = v22;
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
          [v70 setObject:v19 forKeyedSubscript:v23];

          v11 = v21;
        }

        else
        {
          v24 = [v13 name];
          v25 = [v24 isEqualToString:@"section_bundle_id"];

          if (v25)
          {
            v26 = MEMORY[0x1E696AD98];
            v17 = [v13 name];
            v68 = [v75 objectForKey:v17];
            v27 = [v26 numberWithLong:{-[L3ModelManager getBundleId:defaultValue:hashing:hashBucketStart:embeddingTableSize:](self, "getBundleId:defaultValue:hashing:hashBucketStart:embeddingTableSize:", v68, 1006, objc_msgSend(v13, "hashing"), objc_msgSend(v13, "hashBucketStart"), objc_msgSend(v13, "embeddingTableSize"))}];
            v28 = [MEMORY[0x1E696AD98] numberWithLong:a6];
            v90[0] = v28;
            v29 = [MEMORY[0x1E696AD98] numberWithInt:v11];
            v90[1] = v29;
            v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
            [v70 setObject:v27 forKeyedSubscript:v30];

            v11 = (v11 + 1);
          }

          else
          {
            v17 = SSGeneralLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [L3ModelManager extractFeatures:v89 idFeatures:v13 denseFeatures:? index:? unitTest:?];
            }
          }
        }
      }

      v74 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v81 objects:v92 count:16];
    }

    while (v74);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obja = self->_denseFeatureConfigs;
  v31 = [(NSMutableArray *)obja countByEnumeratingWithState:&v77 objects:v88 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = 0;
    v34 = *v78;
    do
    {
      v35 = 0;
      do
      {
        v36 = v33;
        if (*v78 != v34)
        {
          objc_enumerationMutation(obja);
        }

        v37 = *(*(&v77 + 1) + 8 * v35);
        v38 = [v37 name];
        v39 = [v38 isEqualToString:@"position_section"] & !v69;

        v40 = 3.0;
        if ((v39 & 1) == 0)
        {
          v41 = [v37 name];
          if ([v37 transform])
          {
            v42 = [v37 originalFeatureName];

            v41 = v42;
          }

          if (v69)
          {
            v43 = [v41 lowercaseString];

            v41 = v43;
          }

          v44 = [v75 objectForKeyedSubscript:v41];
          if (v44)
          {
            if ([v37 transform])
            {
              v45 = [v37 transformType];
              v46 = [v45 isEqualToString:@"string_length"];

              if (v46)
              {
                v40 = [v44 length];
              }

              else
              {
                v65 = SSGeneralLog();
                if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                {
                  [L3ModelManager extractFeatures:v87 idFeatures:v37 denseFeatures:? index:? unitTest:?];
                }

                v40 = 0.0;
              }

              goto LABEL_31;
            }

            [v44 floatValue];
          }

          else
          {
            [v37 defaultValue];
          }

          v40 = v47;
LABEL_31:
        }

        if (![v37 normalization])
        {
          goto LABEL_41;
        }

        v49 = [v37 normalizationType];
        v50 = [v49 isEqualToString:@"minmax"];

        if (v50)
        {
          [v37 normalizationMin];
          v52 = v51;
          [v37 normalizationMax];
          LODWORD(v54) = v53;
          *&v55 = v40;
          LODWORD(v56) = v52;
          [(L3ModelManager *)self minMaxNormalize:v55 min:v56 max:v54];
LABEL_37:
          v40 = *&v48;
          goto LABEL_41;
        }

        v57 = [v37 normalizationType];
        v58 = [v57 isEqualToString:@"sigmoid"];

        if (v58)
        {
          *&v59 = v40;
          [(L3ModelManager *)self sigmoid:v59];
          goto LABEL_37;
        }

        v60 = SSGeneralLog();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          [L3ModelManager extractFeatures:v86 idFeatures:v37 denseFeatures:? index:? unitTest:?];
        }

LABEL_41:
        *&v48 = v40;
        v61 = [MEMORY[0x1E696AD98] numberWithFloat:v48];
        v62 = [MEMORY[0x1E696AD98] numberWithLong:a6];
        v85[0] = v62;
        v33 = (v36 + 1);
        v63 = [MEMORY[0x1E696AD98] numberWithInt:v36];
        v85[1] = v63;
        v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
        [v73 setObject:v61 forKeyedSubscript:v64];

        ++v35;
      }

      while (v32 != v35);
      v66 = [(NSMutableArray *)obja countByEnumeratingWithState:&v77 objects:v88 count:16];
      v32 = v66;
    }

    while (v66);
  }

  v67 = *MEMORY[0x1E69E9840];
}

- (id)predictProcessedFeatures:(id)a3 denseFeatures:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[spotlight_l3_1Input alloc] initWithId_features:v6 dense_features:v7];
  model = self->_model;
  v25 = 0;
  v10 = [(spotlight_l3_1 *)model predictionFromFeatures:v8 error:&v25];
  v11 = v10;
  v12 = 0;
  if (!v25 && v10)
  {
    v13 = [v10 y];
    v14 = [v13 count];

    if (v14 < 1)
    {
      v12 = 0;
    }

    else
    {
      v15 = MEMORY[0x1E695DF70];
      v16 = [v11 y];
      v12 = [v15 arrayWithCapacity:{objc_msgSend(v16, "count")}];

      v17 = [v11 y];
      v18 = [v17 count];

      if (v18 >= 1)
      {
        v19 = 0;
        do
        {
          v20 = [v11 y];
          v21 = [v20 objectAtIndexedSubscript:v19];
          [v12 addObject:v21];

          ++v19;
          v22 = [v11 y];
          v23 = [v22 count];
        }

        while (v23 > v19);
      }
    }
  }

  return v12;
}

@end