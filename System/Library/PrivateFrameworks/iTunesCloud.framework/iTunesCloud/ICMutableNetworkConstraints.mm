@interface ICMutableNetworkConstraints
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setShouldAllowData:(BOOL)data forNetworkType:(int64_t)type;
- (void)setShouldAllowDataForAllNetworkTypes:(BOOL)types;
- (void)setShouldAllowDataForCellularNetworkTypes:(BOOL)types;
- (void)setShouldAllowDataForWiFiNetworkTypes:(BOOL)types;
- (void)setSizeLimit:(id)limit forNetworkType:(int64_t)type;
@end

@implementation ICMutableNetworkConstraints

- (void)setSizeLimit:(id)limit forNetworkType:(int64_t)type
{
  limitCopy = limit;
  networkTypeToSizeLimit = self->super._networkTypeToSizeLimit;
  v11 = limitCopy;
  if (limitCopy)
  {
    if (!networkTypeToSizeLimit)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->super._networkTypeToSizeLimit;
      self->super._networkTypeToSizeLimit = v8;

      networkTypeToSizeLimit = self->super._networkTypeToSizeLimit;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    [(NSMutableDictionary *)networkTypeToSizeLimit setObject:v11 forKey:v10];
  }

  else
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    [(NSMutableDictionary *)networkTypeToSizeLimit removeObjectForKey:v10];
  }
}

- (void)setShouldAllowDataForWiFiNetworkTypes:(BOOL)types
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [(NSMutableDictionary *)self->super._networkTypeToSizeLimit allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if (([v11 intValue] - 1000) <= 0x3E7)
        {
          [array addObject:v11];
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(NSMutableDictionary *)self->super._networkTypeToSizeLimit removeObjectsForKeys:array];
  self->super._wiFiDataAllowedFallbackValue = types;
}

- (void)setShouldAllowDataForCellularNetworkTypes:(BOOL)types
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [(NSMutableDictionary *)self->super._networkTypeToSizeLimit allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if (([v11 intValue] - 1) <= 0x1F2)
        {
          [array addObject:v11];
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(NSMutableDictionary *)self->super._networkTypeToSizeLimit removeObjectsForKeys:array];
  self->super._cellularDataAllowedFallbackValue = types;
}

- (void)setShouldAllowData:(BOOL)data forNetworkType:(int64_t)type
{
  dataCopy = data;
  networkTypeToDataAllowed = self->super._networkTypeToDataAllowed;
  if (!networkTypeToDataAllowed)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->super._networkTypeToDataAllowed;
    self->super._networkTypeToDataAllowed = v8;

    networkTypeToDataAllowed = self->super._networkTypeToDataAllowed;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:dataCopy];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(NSMutableDictionary *)networkTypeToDataAllowed setObject:v11 forKey:v10];
}

- (void)setShouldAllowDataForAllNetworkTypes:(BOOL)types
{
  [(NSMutableDictionary *)self->super._networkTypeToDataAllowed removeAllObjects];
  self->super._dataAllowedFallbackValue = types;
  self->super._cellularDataAllowedFallbackValue = types;
  self->super._wiFiDataAllowedFallbackValue = types;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(ICNetworkConstraints *)self _copyWithClass:v5 zone:zone];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(ICNetworkConstraints *)self _copyWithClass:v5 zone:zone];
}

@end