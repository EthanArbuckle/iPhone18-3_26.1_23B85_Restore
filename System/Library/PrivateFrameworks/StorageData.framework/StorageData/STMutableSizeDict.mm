@interface STMutableSizeDict
- (BOOL)hasKey:(id)key;
- (STMutableSizeDict)init;
- (STMutableSizeDict)initWithDictionary:(id)dictionary;
- (void)addSize:(id)size toKey:(id)key;
- (void)plusEquals:(id)equals;
- (void)removeSmallerThan:(int64_t)than;
- (void)setSize:(id)size forKey:(id)key;
@end

@implementation STMutableSizeDict

- (STMutableSizeDict)init
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(STMutableSizeDict *)self initWithDictionary:dictionary];

  return v4;
}

- (STMutableSizeDict)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = STMutableSizeDict;
  v6 = [(STSizeDict *)&v9 initWithDictionary:dictionaryCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mutableDictionary, dictionary);
  }

  return v7;
}

- (void)plusEquals:(id)equals
{
  if (equals)
  {
    dictionary = [equals dictionary];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __32__STMutableSizeDict_plusEquals___block_invoke;
    v5[3] = &unk_279D1D210;
    v5[4] = self;
    [dictionary enumerateKeysAndObjectsUsingBlock:v5];
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

- (void)addSize:(id)size toKey:(id)key
{
  sizeCopy = size;
  keyCopy = key;
  if (([sizeCopy isZero] & 1) == 0)
  {
    v7 = [(NSMutableDictionary *)self->_mutableDictionary objectForKeyedSubscript:keyCopy];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 plus:sizeCopy];
      [(NSMutableDictionary *)self->_mutableDictionary setObject:v9 forKeyedSubscript:keyCopy];
    }

    else
    {
      [(NSMutableDictionary *)self->_mutableDictionary setObject:sizeCopy forKeyedSubscript:keyCopy];
    }
  }
}

- (void)setSize:(id)size forKey:(id)key
{
  mutableDictionary = self->_mutableDictionary;
  if (size)
  {
    [(NSMutableDictionary *)mutableDictionary setObject:size forKeyedSubscript:key];
  }

  else
  {
    [(NSMutableDictionary *)mutableDictionary removeObjectForKey:key];
  }
}

- (void)removeSmallerThan:(int64_t)than
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [(NSMutableDictionary *)self->_mutableDictionary allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_mutableDictionary objectForKeyedSubscript:v10];
        if ([v11 userTotal] < than)
        {
          [(NSMutableDictionary *)self->_mutableDictionary removeObjectForKey:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_mutableDictionary objectForKey:key];
  v4 = v3 != 0;

  return v4;
}

@end