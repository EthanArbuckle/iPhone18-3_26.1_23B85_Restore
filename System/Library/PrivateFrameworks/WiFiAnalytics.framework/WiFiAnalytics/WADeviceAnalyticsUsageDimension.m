@interface WADeviceAnalyticsUsageDimension
+ (id)dimensionWith:(id)a3 forEntity:(id)a4;
+ (id)dimensionsUsedAsFilterIn:(id)a3;
+ (id)dimensionsUsedAsGroupBy:(id)a3;
+ (id)usedDimensionsIn:(id)a3;
- (BOOL)useDimensionAs:(unint64_t)a3 withPredicate:(id)a4 withError:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation WADeviceAnalyticsUsageDimension

+ (id)dimensionWith:(id)a3 forEntity:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = v7;
  if (v7)
  {
    [v7 setDimension:v5];
    [v8 setUseAs:0];
    [v8 setFilterPredicate:0];
    [v8 setEntity:v6];
    v9 = [v6 attributesByName];
    v10 = [v9 objectForKeyedSubscript:v5];
    v11 = [v10 attributeType];

    v12 = 0x7FFFFFFFFFFFFFFFLL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (v11 == 200)
    {
      v13 = 0x7FFFFFFFLL;
    }

    if (v11 != 300)
    {
      v12 = v13;
    }

    if (v11 == 100)
    {
      v14 = 0x7FFFLL;
    }

    else
    {
      v14 = v12;
    }

    [v8 setInf:v14];
  }

  return v8;
}

- (BOOL)useDimensionAs:(unint64_t)a3 withPredicate:(id)a4 withError:(id *)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = v8;
  if (!v8 && (a3 & 2) != 0)
  {
    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v22 = "[WADeviceAnalyticsUsageDimension useDimensionAs:withPredicate:withError:]";
      v23 = 1024;
      v24 = 92;
    }

    if (a5)
    {
      v13 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A588];
      v28[0] = @"WAErrorCodeInvalidInput";
      v14 = MEMORY[0x1E695DF20];
      v15 = v28;
      v16 = &v27;
LABEL_17:
      v18 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:{1, v19, v20}];
      *a5 = [v13 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v18];

      LOBYTE(a5) = 0;
    }
  }

  else
  {
    if (!v8 || (a3 & 2) != 0)
    {
      [(WADeviceAnalyticsUsageDimension *)self setUseAs:a3];
      [(WADeviceAnalyticsUsageDimension *)self setFilterPredicate:v9];
      if (a5)
      {
        *a5 = 0;
      }

      LOBYTE(a5) = 1;
      goto LABEL_8;
    }

    v17 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v22 = "[WADeviceAnalyticsUsageDimension useDimensionAs:withPredicate:withError:]";
      v23 = 1024;
      v24 = 96;
      v25 = 2048;
      v26 = a3;
    }

    if (a5)
    {
      v13 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A588];
      v20 = @"WAErrorCodeInvalidInput";
      v14 = MEMORY[0x1E695DF20];
      v15 = &v20;
      v16 = &v19;
      goto LABEL_17;
    }
  }

LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
  return a5;
}

- (id)description
{
  v2 = @"Filter";
  filterPredicate = &stru_1F481C4A0;
  useAs = self->_useAs;
  if ((useAs & 2) == 0)
  {
    v2 = &stru_1F481C4A0;
  }

  if (!useAs)
  {
    v2 = @"Unused";
  }

  v5 = @" & ";
  if (useAs != 6)
  {
    v5 = &stru_1F481C4A0;
  }

  if ((useAs & 4) != 0)
  {
    v6 = @"GroupBy";
  }

  else
  {
    v6 = &stru_1F481C4A0;
  }

  if (self->_filterPredicate)
  {
    filterPredicate = self->_filterPredicate;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"dimension:%@ useAs:%@%@%@ %@", self->_dimension, v2, v5, v6, filterPredicate];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(WADeviceAnalyticsUsageDimension *)self dimension];
  v5 = [(WADeviceAnalyticsUsageDimension *)self entity];
  v6 = [WADeviceAnalyticsUsageDimension dimensionWith:v4 forEntity:v5];

  [v6 setUseAs:{-[WADeviceAnalyticsUsageDimension useAs](self, "useAs")}];
  v7 = [(WADeviceAnalyticsUsageDimension *)self filterPredicate];
  [v6 setFilterPredicate:v7];

  return v6;
}

+ (id)usedDimensionsIn:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [a3 allValues];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"useAs != 0"];
  v5 = [WAUtil filterArray:v3 usingPredicate:v4];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dimension" ascending:1];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)dimensionsUsedAsFilterIn:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = a3;
  v5 = [v3 predicateWithFormat:@"(useAs & %d) > 0", 2];
  v6 = [WAUtil filterArray:v4 usingPredicate:v5];

  return v6;
}

+ (id)dimensionsUsedAsGroupBy:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = a3;
  v5 = [v3 predicateWithFormat:@"(useAs & %d) > 0", 4];
  v6 = [WAUtil filterArray:v4 usingPredicate:v5];

  return v6;
}

@end