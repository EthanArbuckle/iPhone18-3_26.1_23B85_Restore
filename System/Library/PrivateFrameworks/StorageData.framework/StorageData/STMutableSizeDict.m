@interface STMutableSizeDict
- (BOOL)hasKey:(id)a3;
- (STMutableSizeDict)init;
- (STMutableSizeDict)initWithDictionary:(id)a3;
- (void)addSize:(id)a3 toKey:(id)a4;
- (void)plusEquals:(id)a3;
- (void)removeSmallerThan:(int64_t)a3;
- (void)setSize:(id)a3 forKey:(id)a4;
@end

@implementation STMutableSizeDict

- (STMutableSizeDict)init
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(STMutableSizeDict *)self initWithDictionary:v3];

  return v4;
}

- (STMutableSizeDict)initWithDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = STMutableSizeDict;
  v6 = [(STSizeDict *)&v9 initWithDictionary:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mutableDictionary, a3);
  }

  return v7;
}

- (void)plusEquals:(id)a3
{
  if (a3)
  {
    v4 = [a3 dictionary];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __32__STMutableSizeDict_plusEquals___block_invoke;
    v5[3] = &unk_279D1D210;
    v5[4] = self;
    [v4 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void __32__STMutableSizeDict_plusEquals___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 16);
  v6 = a3;
  v7 = a2;
  v9 = [v5 objectForKeyedSubscript:v7];
  v8 = [v6 plus:v9];

  [*(*(a1 + 32) + 16) setObject:v8 forKeyedSubscript:v7];
}

- (void)addSize:(id)a3 toKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (([v10 isZero] & 1) == 0)
  {
    v7 = [(NSMutableDictionary *)self->_mutableDictionary objectForKeyedSubscript:v6];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 plus:v10];
      [(NSMutableDictionary *)self->_mutableDictionary setObject:v9 forKeyedSubscript:v6];
    }

    else
    {
      [(NSMutableDictionary *)self->_mutableDictionary setObject:v10 forKeyedSubscript:v6];
    }
  }
}

- (void)setSize:(id)a3 forKey:(id)a4
{
  mutableDictionary = self->_mutableDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)mutableDictionary setObject:a3 forKeyedSubscript:a4];
  }

  else
  {
    [(NSMutableDictionary *)mutableDictionary removeObjectForKey:a4];
  }
}

- (void)removeSmallerThan:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableDictionary *)self->_mutableDictionary allKeys];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_mutableDictionary objectForKeyedSubscript:v10];
        if ([v11 userTotal] < a3)
        {
          [(NSMutableDictionary *)self->_mutableDictionary removeObjectForKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_mutableDictionary objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

@end