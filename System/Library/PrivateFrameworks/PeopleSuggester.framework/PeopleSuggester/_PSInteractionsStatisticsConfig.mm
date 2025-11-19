@interface _PSInteractionsStatisticsConfig
- (NSSet)configuredSceneCategoryTagNames;
- (_PSInteractionsStatisticsConfig)initWithSourceBundleId:(id)a3 anchorDate:(id)a4 leftBoundDate:(id)a5 fetchLimit:(unint64_t)a6 maxComputationTime:(double)a7 shouldUseSuggestionEngaged:(BOOL)a8 sortOrderFeatureNames:(id)a9 statsDefaultValues:(id)a10 sceneCategoryTagMapping:(id)a11 sceneCategoryTagThresholds:(id)a12;
- (id)_appBundleIdForAppExtBundleId:(uint64_t)a1;
- (id)appBundleIdForRecord:(id)a3;
- (id)detectedSceneCategoryNamesFromSceneNetTags:(id)a3;
- (id)initDefaultConfigWithBundleId:(id)a3 anchorDate:(id)a4;
- (id)initFallbackConfigWithBundleId:(id)a3 anchorDate:(id)a4;
- (id)sceneTagThresholdForSceneCategoryName:(id)a3;
- (id)shareSheetCommunicationInteractionsSelectionPredicateWithStartDate:(void *)a3 endDate:;
- (id)shareSheetSharingInteractionsSelectionPredicateWithStartDate:(void *)a3 endDate:;
- (void)setAnchorDate:(uint64_t)a1;
- (void)setLookBackTimeInterval:(double)a3;
@end

@implementation _PSInteractionsStatisticsConfig

- (_PSInteractionsStatisticsConfig)initWithSourceBundleId:(id)a3 anchorDate:(id)a4 leftBoundDate:(id)a5 fetchLimit:(unint64_t)a6 maxComputationTime:(double)a7 shouldUseSuggestionEngaged:(BOOL)a8 sortOrderFeatureNames:(id)a9 statsDefaultValues:(id)a10 sceneCategoryTagMapping:(id)a11 sceneCategoryTagThresholds:(id)a12
{
  v33 = a3;
  v34 = a4;
  v32 = a5;
  v31 = a9;
  v30 = a10;
  v18 = a11;
  v19 = a12;
  v35.receiver = self;
  v35.super_class = _PSInteractionsStatisticsConfig;
  v20 = [(_PSInteractionsStatisticsConfig *)&v35 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_sourceBundleId, a3);
    objc_storeStrong(&v21->_defaultValues, a10);
    v21->_shouldUseSuggestionEngaged = a8;
    v21->_isFallbackFetch = 0;
    v21->_maxComputationTime = a7;
    objc_storeStrong(&v21->_leftBoundDate, a5);
    objc_storeStrong(&v21->_rightBoundDate, a4);
    v21->_fetchLimit = a6;
    objc_storeStrong(&v21->_sortOrderFeatureNames, a9);
    [(_PSInteractionsStatisticsConfig *)v21 setAnchorDate:v34];
    objc_storeStrong(&v21->_sceneCategoryTagMapping, a11);
    objc_storeStrong(&v21->_sceneCategoryTagThresholds, a12);
    staticFeatures = v21->_staticFeatures;
    v24 = MEMORY[0x1E695E0F0];
    v21->_staticFeatures = MEMORY[0x1E695E0F0];

    dynamicFeatureRecipe = v21->_dynamicFeatureRecipe;
    v21->_dynamicFeatureRecipe = v24;

    v26 = _PSShareSheetExtensionBundleIDToAppBundleIDMapping(0);
    shareExtToAppBundleIdMapping = v21->_shareExtToAppBundleIdMapping;
    v21->_shareExtToAppBundleIdMapping = v26;
  }

  return v21;
}

- (void)setLookBackTimeInterval:(double)a3
{
  v4 = [(NSDate *)self->_rightBoundDate dateByAddingTimeInterval:-a3];
  leftBoundDate = self->_leftBoundDate;
  self->_leftBoundDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)appBundleIdForRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 mechanism];
  if (v5 > 0x14)
  {
    goto LABEL_9;
  }

  if (((1 << v5) & 0xB0C00) != 0)
  {
    v6 = +[_PSConstants mobileMessagesBundleId];
LABEL_4:
    v7 = v6;
    goto LABEL_5;
  }

  if (((1 << v5) & 0x102000) == 0)
  {
LABEL_9:
    v6 = [v4 bundleId];
    goto LABEL_4;
  }

  v9 = [v4 targetBundleId];
  v7 = [(_PSInteractionsStatisticsConfig *)self _appBundleIdForAppExtBundleId:v9];

LABEL_5:

  return v7;
}

- (id)sceneTagThresholdForSceneCategoryName:(id)a3
{
  v3 = [(NSDictionary *)self->_sceneCategoryTagThresholds objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &unk_1F2D8B088;
  }

  v6 = v5;

  return v5;
}

- (NSSet)configuredSceneCategoryTagNames
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E695DFD8];
  v5 = [(NSDictionary *)self->_sceneCategoryTagMapping allKeys];
  v6 = [v4 setWithArray:v5];

  objc_autoreleasePoolPop(v3);

  return v6;
}

- (id)detectedSceneCategoryNamesFromSceneNetTags:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  sceneCategoryTagMapping = self->_sceneCategoryTagMapping;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78___PSInteractionsStatisticsConfig_detectedSceneCategoryNamesFromSceneNetTags___block_invoke;
  v11[3] = &unk_1E7C24188;
  v11[4] = self;
  v12 = v4;
  v13 = v5;
  v7 = v5;
  v8 = v4;
  [(NSDictionary *)sceneCategoryTagMapping enumerateKeysAndObjectsUsingBlock:v11];
  v9 = [v7 copy];

  return v9;
}

- (id)initFallbackConfigWithBundleId:(id)a3 anchorDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (initFallbackConfigWithBundleId_anchorDate___pasOnceToken7 != -1)
  {
    [_PSInteractionsStatisticsConfig(DefaultConfig) initFallbackConfigWithBundleId:anchorDate:];
  }

  v8 = initFallbackConfigWithBundleId_anchorDate___pasExprOnceResult;
  if (initFallbackConfigWithBundleId_anchorDate___pasOnceToken8 != -1)
  {
    [_PSInteractionsStatisticsConfig(DefaultConfig) initFallbackConfigWithBundleId:anchorDate:];
  }

  v9 = initFallbackConfigWithBundleId_anchorDate___pasExprOnceResult_11;
  if (initFallbackConfigWithBundleId_anchorDate___pasOnceToken9 != -1)
  {
    [_PSInteractionsStatisticsConfig(DefaultConfig) initFallbackConfigWithBundleId:anchorDate:];
  }

  v10 = initFallbackConfigWithBundleId_anchorDate___pasExprOnceResult_14;
  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = [MEMORY[0x1E695DF00] now];
  }

  v12 = v11;
  v13 = [v11 dateByAddingTimeInterval:-5184000.0];
  v14 = [(_PSInteractionsStatisticsConfig *)self initWithSourceBundleId:v6 anchorDate:v12 leftBoundDate:v13 fetchLimit:200 maxComputationTime:0 shouldUseSuggestionEngaged:v8 sortOrderFeatureNames:0.35 statsDefaultValues:v10 sceneCategoryTagMapping:MEMORY[0x1E695E0F8] sceneCategoryTagThresholds:MEMORY[0x1E695E0F8]];
  v15 = v14;
  if (v14)
  {
    [(_PSInteractionsStatisticsConfig *)v14 setStaticFeatures:v9];
  }

  return v15;
}

- (id)initDefaultConfigWithBundleId:(id)a3 anchorDate:(id)a4
{
  v19 = a3;
  v6 = a4;
  if (initDefaultConfigWithBundleId_anchorDate___pasOnceToken10 != -1)
  {
    [_PSInteractionsStatisticsConfig(DefaultConfig) initDefaultConfigWithBundleId:anchorDate:];
  }

  v7 = initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult;
  if (initDefaultConfigWithBundleId_anchorDate___pasOnceToken11 != -1)
  {
    [_PSInteractionsStatisticsConfig(DefaultConfig) initDefaultConfigWithBundleId:anchorDate:];
  }

  v8 = initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_40;
  if (initDefaultConfigWithBundleId_anchorDate___pasOnceToken12 != -1)
  {
    [_PSInteractionsStatisticsConfig(DefaultConfig) initDefaultConfigWithBundleId:anchorDate:];
  }

  v9 = initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_43;
  if (initDefaultConfigWithBundleId_anchorDate___pasOnceToken13 != -1)
  {
    [_PSInteractionsStatisticsConfig(DefaultConfig) initDefaultConfigWithBundleId:anchorDate:];
  }

  v10 = initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_70;
  if (initDefaultConfigWithBundleId_anchorDate___pasOnceToken22 != -1)
  {
    [_PSInteractionsStatisticsConfig(DefaultConfig) initDefaultConfigWithBundleId:anchorDate:];
  }

  v11 = initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_83;
  if (initDefaultConfigWithBundleId_anchorDate___pasOnceToken23 != -1)
  {
    [_PSInteractionsStatisticsConfig(DefaultConfig) initDefaultConfigWithBundleId:anchorDate:];
  }

  v12 = initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_580;
  if (v6)
  {
    v13 = v6;
  }

  else
  {
    v13 = [MEMORY[0x1E695DF00] now];
  }

  v14 = v13;
  v15 = [v13 dateByAddingTimeInterval:-5184000.0];
  v16 = [(_PSInteractionsStatisticsConfig *)self initWithSourceBundleId:v19 anchorDate:v14 leftBoundDate:v15 fetchLimit:500 maxComputationTime:1 shouldUseSuggestionEngaged:v7 sortOrderFeatureNames:0.35 statsDefaultValues:v9 sceneCategoryTagMapping:v11 sceneCategoryTagThresholds:v12];
  v17 = v16;
  if (v16)
  {
    [(_PSInteractionsStatisticsConfig *)v16 setStaticFeatures:v8];
    [(_PSInteractionsStatisticsConfig *)v17 setDynamicFeatureRecipe:v10];
  }

  return v17;
}

- (void)setAnchorDate:(uint64_t)a1
{
  v5 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 112), a2);
    [v5 timeIntervalSinceReferenceDate];
    *(a1 + 16) = v4;
    if (qword_1EB924008 != -1)
    {
      dispatch_once(&qword_1EB924008, &__block_literal_global_4);
    }

    *(a1 + 50) = [_MergedGlobals isDateInWeekend:v5];
  }
}

- (id)shareSheetSharingInteractionsSelectionPredicateWithStartDate:(void *)a3 endDate:
{
  v19[4] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v7 = *(a1 + 49);
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    if (v7)
    {
      v8 = &unk_1F2D8C000;
    }

    else
    {
      v8 = &unk_1F2D8C018;
    }

    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (bundleId IN %@)", &unk_1F2D8BFD0];
    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(direction IN %@)", &unk_1F2D8BFE8];
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism IN %@)", v8];
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(startDate >= %@) && (startDate <= %@)", v5, v6];
    v13 = MEMORY[0x1E696AB28];
    v14 = objc_autoreleasePoolPush();
    v19[0] = v9;
    v19[1] = v10;
    v19[2] = v11;
    v19[3] = v12;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
    objc_autoreleasePoolPop(v14);
    v16 = [v13 andPredicateWithSubpredicates:v15];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)shareSheetCommunicationInteractionsSelectionPredicateWithStartDate:(void *)a3 endDate:
{
  v17[4] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (bundleId IN %@)", &unk_1F2D8C030];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(direction IN %@)", &unk_1F2D8C048];
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism IN %@)", &unk_1F2D8C060];
    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(startDate >= %@) && (startDate <= %@)", v5, v6];
    v11 = MEMORY[0x1E696AB28];
    v12 = objc_autoreleasePoolPush();
    v17[0] = v7;
    v17[1] = v8;
    v17[2] = v9;
    v17[3] = v10;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
    objc_autoreleasePoolPop(v12);
    v14 = [v11 andPredicateWithSubpredicates:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_appBundleIdForAppExtBundleId:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = [*(a1 + 40) objectForKeyedSubscript:v3];
      if (v5)
      {
        goto LABEL_10;
      }

      v6 = +[_PSLogging rewriteChannel];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_error_impl(&dword_1B5ED1000, v6, OS_LOG_TYPE_ERROR, "Unable to resolve main app bundleId from sharing interaction because there was no main bundleId associated with the sharing extension bundleId.", v8, 2u);
      }
    }

    else
    {
      v6 = +[_PSLogging rewriteChannel];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1B5ED1000, v6, OS_LOG_TYPE_ERROR, "Unable to resolve main app bundleId from sharing interaction because the sharing extension bundleId was nil.", buf, 2u);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_10:

  return v5;
}

@end