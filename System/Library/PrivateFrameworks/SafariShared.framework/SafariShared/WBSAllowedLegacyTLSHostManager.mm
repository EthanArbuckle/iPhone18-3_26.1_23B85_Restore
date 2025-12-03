@interface WBSAllowedLegacyTLSHostManager
- (BOOL)isLegacyTLSAllowedForHost:(id)host;
- (WBSAllowedLegacyTLSHostManager)initWithBrowserDefaults:(id)defaults;
- (void)allowLegacyTLSForHost:(id)host;
- (void)clearLegacyTLSForHostIfPresent:(id)present;
- (void)clearLegacyTLSForHosts:(id)hosts;
@end

@implementation WBSAllowedLegacyTLSHostManager

- (WBSAllowedLegacyTLSHostManager)initWithBrowserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v10.receiver = self;
  v10.super_class = WBSAllowedLegacyTLSHostManager;
  v6 = [(WBSAllowedLegacyTLSHostManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_browserDefaults, defaults);
    v8 = v7;
  }

  return v7;
}

- (BOOL)isLegacyTLSAllowedForHost:(id)host
{
  hostCopy = host;
  v5 = [(NSUserDefaults *)self->_browserDefaults dictionaryForKey:@"allowedLegacyTLSHosts"];
  v6 = [v5 mutableCopy];

  v7 = [v6 safari_dateForKey:hostCopy];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 dateByAddingTimeInterval:604800.0];
    date = [MEMORY[0x1E695DF00] date];
    v11 = [v9 compare:date];

    if ((v11 + 1) > 1)
    {
      v12 = 1;
    }

    else
    {
      [v6 setObject:0 forKeyedSubscript:hostCopy];
      [(NSUserDefaults *)self->_browserDefaults setObject:v6 forKey:@"allowedLegacyTLSHosts"];
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)allowLegacyTLSForHost:(id)host
{
  browserDefaults = self->_browserDefaults;
  hostCopy = host;
  v6 = [(NSUserDefaults *)browserDefaults dictionaryForKey:@"allowedLegacyTLSHosts"];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    dictionary = v7;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v11 = dictionary;

  date = [MEMORY[0x1E695DF00] date];
  [v11 setObject:date forKeyedSubscript:hostCopy];

  [(NSUserDefaults *)self->_browserDefaults setObject:v11 forKey:@"allowedLegacyTLSHosts"];
}

- (void)clearLegacyTLSForHostIfPresent:(id)present
{
  presentCopy = present;
  v4 = [(NSUserDefaults *)self->_browserDefaults dictionaryForKey:@"allowedLegacyTLSHosts"];
  v5 = [v4 mutableCopy];

  v6 = [v5 objectForKeyedSubscript:presentCopy];

  if (v6)
  {
    [v5 setObject:0 forKeyedSubscript:presentCopy];
    [(NSUserDefaults *)self->_browserDefaults setObject:v5 forKey:@"allowedLegacyTLSHosts"];
  }
}

- (void)clearLegacyTLSForHosts:(id)hosts
{
  hostsCopy = hosts;
  v5 = [(NSUserDefaults *)self->_browserDefaults dictionaryForKey:@"allowedLegacyTLSHosts"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__WBSAllowedLegacyTLSHostManager_clearLegacyTLSForHosts___block_invoke;
  v8[3] = &unk_1E7FB68B0;
  v9 = hostsCopy;
  v6 = hostsCopy;
  v7 = [v5 safari_mapAndFilterKeysAndObjectsUsingBlock:v8];

  [(NSUserDefaults *)self->_browserDefaults setObject:v7 forKey:@"allowedLegacyTLSHosts"];
}

id __57__WBSAllowedLegacyTLSHostManager_clearLegacyTLSForHosts___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (([*(a1 + 32) containsObject:a2] & 1) != 0 || (objc_msgSend(v5, "dateByAddingTimeInterval:", 604800.0), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E695DF00], "date"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "compare:", v7), v7, v6, v8 != 1))
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

@end