@interface ExchangeManager
+ (id)sharedManager;
- (BOOL)containsExchange:(id)a3;
- (ExchangeManager)init;
- (id)exchangeWithName:(id)a3 createIfNotFound:(BOOL)a4;
- (void)_addExchange:(id)a3;
- (void)_loadExchangesFromDefaults;
- (void)addExchange:(id)a3;
- (void)reloadExchangesFromDefaults;
- (void)removeExchange:(id)a3;
- (void)saveChanges;
@end

@implementation ExchangeManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[ExchangeManager sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

uint64_t __32__ExchangeManager_sharedManager__block_invoke()
{
  sharedManager_sharedManager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (ExchangeManager)init
{
  v6.receiver = self;
  v6.super_class = ExchangeManager;
  v2 = [(ExchangeManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    exchangesByName = v2->_exchangesByName;
    v2->_exchangesByName = v3;

    [(ExchangeManager *)v2 _loadExchangesFromDefaults];
  }

  return v2;
}

- (id)exchangeWithName:(id)a3 createIfNotFound:(BOOL)a4
{
  v4 = a4;
  v6 = [Exchange formattedExchangeNameForName:a3];
  v7 = [(NSMutableDictionary *)self->_exchangesByName objectForKeyedSubscript:v6];
  if (!v7)
  {
    if (v6)
    {
      v8 = !v4;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v9 = StocksLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [ExchangeManager exchangeWithName:createIfNotFound:];
      }

      v7 = [[Exchange alloc] initWithName:v6];
      [(ExchangeManager *)self addExchange:v7];
    }
  }

  return v7;
}

- (BOOL)containsExchange:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 name];
  v5 = [(ExchangeManager *)self exchangeWithName:v4];
  v6 = v5 != 0;

  return v6;
}

- (void)addExchange:(id)a3
{
  v4 = a3;
  v5 = StocksLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ExchangeManager addExchange:];
  }

  [(ExchangeManager *)self _addExchange:v4];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"ExchangeWasAddedNotification" object:v4];
}

- (void)_addExchange:(id)a3
{
  if (a3)
  {
    exchangesByName = self->_exchangesByName;
    v4 = a3;
    v5 = [v4 name];
    [(NSMutableDictionary *)exchangesByName setObject:v4 forKeyedSubscript:v5];
  }
}

- (void)removeExchange:(id)a3
{
  v4 = a3;
  v5 = StocksLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ExchangeManager removeExchange:];
  }

  if (v4)
  {
    exchangesByName = self->_exchangesByName;
    v7 = [v4 name];
    v8 = [(NSMutableDictionary *)exchangesByName objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      [v9 postNotificationName:@"ExchangeWillBeRemovedNotification" object:v4];

      v10 = self->_exchangesByName;
      v11 = [v4 name];
      [(NSMutableDictionary *)v10 removeObjectForKey:v11];
    }
  }
}

- (void)_loadExchangesFromDefaults
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = +[StocksPreferences sharedPreferences];
  [v3 synchronize];
  v4 = StocksLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ExchangeManager _loadExchangesFromDefaults];
  }

  v5 = [v3 objectForKeyedSubscript:@"exchanges"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [Exchange alloc];
            v13 = [(Exchange *)v12 initWithDictionary:v11, v16];
            if (v13)
            {
              [(ExchangeManager *)self _addExchange:v13];
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v8);
    }
  }

  v14 = StocksLogForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(ExchangeManager *)self exchangeList];
    *buf = 138412290;
    v21 = v15;
    _os_log_impl(&dword_26BAAD000, v14, OS_LOG_TYPE_DEFAULT, "#ExchangeManager Loaded exchanges %@", buf, 0xCu);
  }
}

- (void)reloadExchangesFromDefaults
{
  v3 = StocksLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [ExchangeManager reloadExchangesFromDefaults];
  }

  [(NSMutableDictionary *)self->_exchangesByName removeAllObjects];
  [(ExchangeManager *)self _loadExchangesFromDefaults];
}

- (void)saveChanges
{
  v3 = StocksLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [ExchangeManager saveChanges];
  }

  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_exchangesByName, "count")}];
  exchangesByName = self->_exchangesByName;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __30__ExchangeManager_saveChanges__block_invoke;
  v8[3] = &unk_279D15C50;
  v9 = v4;
  v6 = v4;
  [(NSMutableDictionary *)exchangesByName enumerateKeysAndObjectsUsingBlock:v8];
  v7 = +[StocksPreferences sharedPreferences];
  [v7 setObject:v6 forKeyedSubscript:@"exchanges"];
  [v7 synchronize];
}

void __30__ExchangeManager_saveChanges__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 archiveDictionary];
  [v3 addObject:v4];
}

@end