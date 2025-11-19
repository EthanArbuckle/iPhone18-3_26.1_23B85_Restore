@interface REKeyMultiValueMap
- (REKeyMultiValueMap)initWithValuePointFunctionOptions:(unint64_t)a3;
- (void)addKey:(id)a3 withValues:(id)a4;
- (void)enumerateValuesForKey:(id)a3 usingBlock:(id)a4;
- (void)insertValue:(id)a3 forKey:(id)a4;
- (void)removeKey:(id)a3;
- (void)removeValue:(id)a3 forKey:(id)a4;
@end

@implementation REKeyMultiValueMap

- (REKeyMultiValueMap)initWithValuePointFunctionOptions:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = REKeyMultiValueMap;
  v4 = [(REKeyMultiValueMap *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:a3];
    keyMap = v4->_keyMap;
    v4->_keyMap = v5;

    v7 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:a3 valueOptions:0];
    valueMap = v4->_valueMap;
    v4->_valueMap = v7;
  }

  return v4;
}

- (void)addKey:(id)a3 withValues:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(NSMapTable *)self->_keyMap setObject:v7 forKey:v6];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(NSMapTable *)self->_valueMap setObject:v6 forKey:*(*(&v14 + 1) + 8 * v12++), v14];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeKey:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSMapTable *)self->_keyMap objectForKey:v4, 0];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NSMapTable *)self->_valueMap removeObjectForKey:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(NSMapTable *)self->_keyMap removeObjectForKey:v4];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)insertValue:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(REKeyMultiValueMap *)self valuesForKey:v6];
  v8 = [v7 mutableCopy];

  [(REKeyMultiValueMap *)self removeKey:v6];
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB18] array];
  }

  [v8 addObject:v10];
  v9 = [v8 copy];
  [(REKeyMultiValueMap *)self addKey:v6 withValues:v9];
}

- (void)removeValue:(id)a3 forKey:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [(REKeyMultiValueMap *)self valuesForKey:v10];
  v8 = [v7 mutableCopy];

  [(REKeyMultiValueMap *)self removeKey:v10];
  [v8 removeObject:v6];

  if ([v8 count])
  {
    v9 = [v8 copy];
    [(REKeyMultiValueMap *)self addKey:v10 withValues:v9];
  }
}

- (void)enumerateValuesForKey:(id)a3 usingBlock:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(REKeyMultiValueMap *)self valuesForKey:a3, 0];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v6[2](v6, *(*(&v13 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end