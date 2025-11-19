@interface PEEditActionEventBuilder
- (PEEditActionEventBuilder)initWithActionDescription:(id)a3 assets:(id)a4;
- (PEEditActionEventBuilder)initWithBaseAction:(id)a3 assets:(id)a4;
- (id)buildEvents;
- (void)registerAction:(id)a3 forAssets:(id)a4;
- (void)registerActionType:(id)a3 forAssets:(id)a4;
@end

@implementation PEEditActionEventBuilder

- (id)buildEvents
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = [(NSDictionary *)self->_assetsMap allKeys];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  assetsMap = self->_assetsMap;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__PEEditActionEventBuilder_buildEvents__block_invoke;
  v15[3] = &unk_279A307C8;
  v16 = v6;
  v8 = v6;
  [(NSDictionary *)assetsMap enumerateKeysAndObjectsUsingBlock:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__PEEditActionEventBuilder_buildEvents__block_invoke_2;
  v13[3] = &unk_279A307F0;
  v13[4] = self;
  v9 = v5;
  v14 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:v13];
  v10 = v14;
  v11 = v9;

  return v9;
}

void __39__PEEditActionEventBuilder_buildEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) allKeys];
  v7 = [v6 containsObject:v5];

  if ((v7 & 1) == 0)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v5];
  }

  v9 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (([v9 containsObject:v10] & 1) == 0)
  {
    [v9 addObject:v10];
  }
}

void __39__PEEditActionEventBuilder_buildEvents__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a3;
  v7 = a2;
  v12 = objc_alloc_init(v5);
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "hasError")}];
  [v12 setObject:v8 forKeyedSubscript:@"hasError"];

  [v12 setObject:v7 forKeyedSubscript:@"actionType"];
  v9 = *(a1 + 32);
  v10 = *(v9 + 8);
  if (v10)
  {
    v11 = [v10 analyticsPayload];
    [v12 addEntriesFromDictionary:v11];

    v9 = *(a1 + 32);
  }

  [v12 setObject:*(v9 + 16) forKeyedSubscript:@"actionDescription"];
  [v12 setObject:v6 forKeyedSubscript:*MEMORY[0x277CF6E18]];

  [*(a1 + 40) addObject:v12];
}

- (void)registerActionType:(id)a3 forAssets:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  assetsMap = self->_assetsMap;
  if (!assetsMap)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    v10 = self->_assetsMap;
    self->_assetsMap = v9;

    assetsMap = self->_assetsMap;
  }

  v11 = [(NSDictionary *)assetsMap mutableCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v11 setObject:v6 forKey:{*(*(&v19 + 1) + 8 * v16++), v19}];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  v17 = [v11 copy];
  v18 = self->_assetsMap;
  self->_assetsMap = v17;
}

- (void)registerAction:(id)a3 forAssets:(id)a4
{
  v6 = a4;
  v7 = [a3 actionType];
  if ((v7 - 1) > 7)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_279A30810[v7 - 1];
  }

  v9 = v8;
  [(PEEditActionEventBuilder *)self registerActionType:v9 forAssets:v6];
}

- (PEEditActionEventBuilder)initWithActionDescription:(id)a3 assets:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PEEditActionEventBuilder;
  v9 = [(PEEditActionEventBuilder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actionDescription, a3);
    [(PEEditActionEventBuilder *)v10 registerActionType:v7 forAssets:v8];
  }

  return v10;
}

- (PEEditActionEventBuilder)initWithBaseAction:(id)a3 assets:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PEEditActionEventBuilder;
  v9 = [(PEEditActionEventBuilder *)&v12 init];
  v10 = v9;
  if (v7 && v9)
  {
    objc_storeStrong(&v9->_baseAction, a3);
    [(PEEditActionEventBuilder *)v10 registerAction:v10->_baseAction forAssets:v8];
  }

  return v10;
}

@end