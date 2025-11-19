@interface _PSShareSheetEphemeralFeatureManager
- (_PSShareSheetEphemeralFeatureManager)initWithContext:(id)a3 candidates:(id)a4 caches:(id)a5 store:(id)a6;
- (id)computeFeaturesWithHistogramFeatures:(id)a3;
- (id)loadPSConfig;
- (void)setCandidates:(id)a3;
- (void)setContext:(id)a3;
- (void)setFeatureManagerProperties;
@end

@implementation _PSShareSheetEphemeralFeatureManager

- (_PSShareSheetEphemeralFeatureManager)initWithContext:(id)a3 candidates:(id)a4 caches:(id)a5 store:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = _PSShareSheetEphemeralFeatureManager;
  v15 = [(_PSShareSheetEphemeralFeatureManager *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_context, a3);
    objc_storeStrong(&v16->_candidates, a4);
    objc_storeStrong(&v16->_caches, a5);
    objc_storeStrong(&v16->_store, a6);
    v16->_lock._os_unfair_lock_opaque = 0;
    os_unfair_lock_lock(&v16->_lock);
    [(_PSShareSheetEphemeralFeatureManager *)v16 setFeatureManagerProperties];
    os_unfair_lock_unlock(&v16->_lock);
  }

  return v16;
}

- (id)loadPSConfig
{
  v2 = +[_PSConfig defaultConfig];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = v4;

  return v4;
}

- (void)setFeatureManagerProperties
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [(_PSShareSheetEphemeralFeatureManager *)self loadPSConfig];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = objc_opt_new();
    v8 = [v6 objectForKeyedSubscript:@"featureList"];
    v9 = v8;
    v10 = MEMORY[0x1E695E0F0];
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        v16 = 0;
        do
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v32 + 1) + 8 * v16);
          v18 = [MEMORY[0x1E696AD98] numberWithInt:{BMMLSEVirtualFeatureStoreFeaturefeatureNameFromString(), v32}];
          [(NSSet *)v7 addObject:v18];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v14);
    }

    features = self->_features;
    self->_features = v7;
    v20 = v7;

    v21 = MEMORY[0x1E696AD98];
    v22 = [v6 objectForKeyedSubscript:@"histogramFeatureSmoothingK"];
    [v22 doubleValue];
    if (v23 == 0.0)
    {
      v23 = 1.0;
    }

    v24 = [v21 numberWithDouble:{v23, v32}];
    histogramSmoothingParameterK = self->_histogramSmoothingParameterK;
    self->_histogramSmoothingParameterK = v24;

    v26 = MEMORY[0x1E696AD98];
    v27 = [v6 objectForKeyedSubscript:@"histogramFeatureSmoothingV"];
    [v27 doubleValue];
    if (v28 == 0.0)
    {
      v28 = 10.0;
    }

    v29 = [v26 numberWithDouble:v28];
    histogramSmoothingParameterV = self->_histogramSmoothingParameterV;
    self->_histogramSmoothingParameterV = v29;
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)setCandidates:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  candidates = self->_candidates;
  self->_candidates = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setContext:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  context = self->_context;
  self->_context = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)computeFeaturesWithHistogramFeatures:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSSet *)self->_features allObjects];
  v7 = objc_alloc(MEMORY[0x1E695DF20]);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __77___PSShareSheetEphemeralFeatureManager_computeFeaturesWithHistogramFeatures___block_invoke;
  v18[3] = &unk_1E7C27188;
  v18[4] = self;
  v19 = v4;
  v8 = v4;
  v9 = [v6 _pas_mappedArrayWithTransform:v18];
  v10 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_48];
  v11 = [v7 initWithObjects:v9 forKeys:v10];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77___PSShareSheetEphemeralFeatureManager_computeFeaturesWithHistogramFeatures___block_invoke_3;
  v16[3] = &unk_1E7C260F0;
  v12 = v5;
  v17 = v12;
  [v11 enumerateKeysAndObjectsUsingBlock:v16];
  os_unfair_lock_unlock(&self->_lock);
  v13 = v17;
  v14 = v12;

  return v12;
}

@end