@interface ExchangeManager
+ (id)sharedManager;
- (BOOL)containsExchange:(id)exchange;
- (ExchangeManager)init;
- (id)exchangeWithName:(id)name createIfNotFound:(BOOL)found;
- (void)_addExchange:(id)exchange;
- (void)_loadExchangesFromDefaults;
- (void)addExchange:(id)exchange;
- (void)reloadExchangesFromDefaults;
- (void)removeExchange:(id)exchange;
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

- (id)exchangeWithName:(id)name createIfNotFound:(BOOL)found
{
  foundCopy = found;
  v6 = [Exchange formattedExchangeNameForName:name];
  v7 = [(NSMutableDictionary *)self->_exchangesByName objectForKeyedSubscript:v6];
  if (!v7)
  {
    if (v6)
    {
      v8 = !foundCopy;
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

- (BOOL)containsExchange:(id)exchange
{
  if (!exchange)
  {
    return 0;
  }

  name = [exchange name];
  v5 = [(ExchangeManager *)self exchangeWithName:name];
  v6 = v5 != 0;

  return v6;
}

- (void)addExchange:(id)exchange
{
  exchangeCopy = exchange;
  v5 = StocksLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ExchangeManager addExchange:];
  }

  [(ExchangeManager *)self _addExchange:exchangeCopy];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ExchangeWasAddedNotification" object:exchangeCopy];
}

- (void)_addExchange:(id)exchange
{
  if (exchange)
  {
    exchangesByName = self->_exchangesByName;
    exchangeCopy = exchange;
    name = [exchangeCopy name];
    [(NSMutableDictionary *)exchangesByName setObject:exchangeCopy forKeyedSubscript:name];
  }
}

- (void)removeExchange:(id)exchange
{
  exchangeCopy = exchange;
  v5 = StocksLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ExchangeManager removeExchange:];
  }

  if (exchangeCopy)
  {
    exchangesByName = self->_exchangesByName;
    name = [exchangeCopy name];
    v8 = [(NSMutableDictionary *)exchangesByName objectForKeyedSubscript:name];

    if (v8)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"ExchangeWillBeRemovedNotification" object:exchangeCopy];

      v10 = self->_exchangesByName;
      name2 = [exchangeCopy name];
      [(NSMutableDictionary *)v10 removeObjectForKey:name2];
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
    exchangeList = [(ExchangeManager *)self exchangeList];
    *buf = 138412290;
    v21 = exchangeList;
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