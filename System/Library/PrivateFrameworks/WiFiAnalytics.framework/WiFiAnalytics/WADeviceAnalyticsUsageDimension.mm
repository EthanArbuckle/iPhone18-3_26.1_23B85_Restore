@interface WADeviceAnalyticsUsageDimension
+ (id)dimensionWith:(id)with forEntity:(id)entity;
+ (id)dimensionsUsedAsFilterIn:(id)in;
+ (id)dimensionsUsedAsGroupBy:(id)by;
+ (id)usedDimensionsIn:(id)in;
- (BOOL)useDimensionAs:(unint64_t)as withPredicate:(id)predicate withError:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation WADeviceAnalyticsUsageDimension

+ (id)dimensionWith:(id)with forEntity:(id)entity
{
  withCopy = with;
  entityCopy = entity;
  v7 = objc_opt_new();
  v8 = v7;
  if (v7)
  {
    [v7 setDimension:withCopy];
    [v8 setUseAs:0];
    [v8 setFilterPredicate:0];
    [v8 setEntity:entityCopy];
    attributesByName = [entityCopy attributesByName];
    v10 = [attributesByName objectForKeyedSubscript:withCopy];
    attributeType = [v10 attributeType];

    v12 = 0x7FFFFFFFFFFFFFFFLL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (attributeType == 200)
    {
      v13 = 0x7FFFFFFFLL;
    }

    if (attributeType != 300)
    {
      v12 = v13;
    }

    if (attributeType == 100)
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

- (BOOL)useDimensionAs:(unint64_t)as withPredicate:(id)predicate withError:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v9 = predicateCopy;
  if (!predicateCopy && (as & 2) != 0)
  {
    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v22 = "[WADeviceAnalyticsUsageDimension useDimensionAs:withPredicate:withError:]";
      v23 = 1024;
      v24 = 92;
    }

    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A588];
      v28[0] = @"WAErrorCodeInvalidInput";
      v14 = MEMORY[0x1E695DF20];
      v15 = v28;
      v16 = &v27;
LABEL_17:
      v18 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:{1, v19, v20}];
      *error = [v13 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v18];

      LOBYTE(error) = 0;
    }
  }

  else
  {
    if (!predicateCopy || (as & 2) != 0)
    {
      [(WADeviceAnalyticsUsageDimension *)self setUseAs:as];
      [(WADeviceAnalyticsUsageDimension *)self setFilterPredicate:v9];
      if (error)
      {
        *error = 0;
      }

      LOBYTE(error) = 1;
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
      asCopy = as;
    }

    if (error)
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
  return error;
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

- (id)copyWithZone:(_NSZone *)zone
{
  dimension = [(WADeviceAnalyticsUsageDimension *)self dimension];
  entity = [(WADeviceAnalyticsUsageDimension *)self entity];
  v6 = [WADeviceAnalyticsUsageDimension dimensionWith:dimension forEntity:entity];

  [v6 setUseAs:{-[WADeviceAnalyticsUsageDimension useAs](self, "useAs")}];
  filterPredicate = [(WADeviceAnalyticsUsageDimension *)self filterPredicate];
  [v6 setFilterPredicate:filterPredicate];

  return v6;
}

+ (id)usedDimensionsIn:(id)in
{
  v11[1] = *MEMORY[0x1E69E9840];
  allValues = [in allValues];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"useAs != 0"];
  v5 = [WAUtil filterArray:allValues usingPredicate:v4];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dimension" ascending:1];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)dimensionsUsedAsFilterIn:(id)in
{
  v3 = MEMORY[0x1E696AE18];
  inCopy = in;
  v5 = [v3 predicateWithFormat:@"(useAs & %d) > 0", 2];
  v6 = [WAUtil filterArray:inCopy usingPredicate:v5];

  return v6;
}

+ (id)dimensionsUsedAsGroupBy:(id)by
{
  v3 = MEMORY[0x1E696AE18];
  byCopy = by;
  v5 = [v3 predicateWithFormat:@"(useAs & %d) > 0", 4];
  v6 = [WAUtil filterArray:byCopy usingPredicate:v5];

  return v6;
}

@end