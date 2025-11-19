@interface ICMutableNetworkConstraints
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setShouldAllowData:(BOOL)a3 forNetworkType:(int64_t)a4;
- (void)setShouldAllowDataForAllNetworkTypes:(BOOL)a3;
- (void)setShouldAllowDataForCellularNetworkTypes:(BOOL)a3;
- (void)setShouldAllowDataForWiFiNetworkTypes:(BOOL)a3;
- (void)setSizeLimit:(id)a3 forNetworkType:(int64_t)a4;
@end

@implementation ICMutableNetworkConstraints

- (void)setSizeLimit:(id)a3 forNetworkType:(int64_t)a4
{
  v6 = a3;
  networkTypeToSizeLimit = self->super._networkTypeToSizeLimit;
  v11 = v6;
  if (v6)
  {
    if (!networkTypeToSizeLimit)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->super._networkTypeToSizeLimit;
      self->super._networkTypeToSizeLimit = v8;

      networkTypeToSizeLimit = self->super._networkTypeToSizeLimit;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(NSMutableDictionary *)networkTypeToSizeLimit setObject:v11 forKey:v10];
  }

  else
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(NSMutableDictionary *)networkTypeToSizeLimit removeObjectForKey:v10];
  }
}

- (void)setShouldAllowDataForWiFiNetworkTypes:(BOOL)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSMutableDictionary *)self->super._networkTypeToSizeLimit allKeys];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if (([v11 intValue] - 1000) <= 0x3E7)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(NSMutableDictionary *)self->super._networkTypeToSizeLimit removeObjectsForKeys:v5];
  self->super._wiFiDataAllowedFallbackValue = a3;
}

- (void)setShouldAllowDataForCellularNetworkTypes:(BOOL)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSMutableDictionary *)self->super._networkTypeToSizeLimit allKeys];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if (([v11 intValue] - 1) <= 0x1F2)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(NSMutableDictionary *)self->super._networkTypeToSizeLimit removeObjectsForKeys:v5];
  self->super._cellularDataAllowedFallbackValue = a3;
}

- (void)setShouldAllowData:(BOOL)a3 forNetworkType:(int64_t)a4
{
  v5 = a3;
  networkTypeToDataAllowed = self->super._networkTypeToDataAllowed;
  if (!networkTypeToDataAllowed)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->super._networkTypeToDataAllowed;
    self->super._networkTypeToDataAllowed = v8;

    networkTypeToDataAllowed = self->super._networkTypeToDataAllowed;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)networkTypeToDataAllowed setObject:v11 forKey:v10];
}

- (void)setShouldAllowDataForAllNetworkTypes:(BOOL)a3
{
  [(NSMutableDictionary *)self->super._networkTypeToDataAllowed removeAllObjects];
  self->super._dataAllowedFallbackValue = a3;
  self->super._cellularDataAllowedFallbackValue = a3;
  self->super._wiFiDataAllowedFallbackValue = a3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(ICNetworkConstraints *)self _copyWithClass:v5 zone:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(ICNetworkConstraints *)self _copyWithClass:v5 zone:a3];
}

@end