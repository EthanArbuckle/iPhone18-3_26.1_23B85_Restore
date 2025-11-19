@interface STUIStatusBarTestData
+ (id)dependentDataKeyForDisplayItemIdentifier:(id)a3;
+ (id)dependentDataKeyForItemIdentifier:(id)a3;
+ (id)emptyTestData;
+ (id)testDataWithUpdatedKeys:(id)a3 enabledKeys:(id)a4;
- (BOOL)isEmpty;
- (STUIStatusBarTestData)init;
- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)existingEntryKeys;
- (id)valueForKey:(id)a3;
- (void)applyUpdate:(id)a3;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation STUIStatusBarTestData

+ (id)testDataWithUpdatedKeys:(id)a3 enabledKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(a1);
  v9 = v8;
  if (v6)
  {
    v10 = [MEMORY[0x277CBEB98] setWithArray:v6];
    [v9 setUpdatedKeys:v10];

    if (v7)
    {
LABEL_3:
      v11 = [MEMORY[0x277CBEB98] setWithArray:v7];
      [v9 setEnabledKeys:v11];

      goto LABEL_6;
    }
  }

  else
  {
    [v8 setUpdatedKeys:0];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  [v9 setEnabledKeys:0];
LABEL_6:

  return v9;
}

+ (id)emptyTestData
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)dependentDataKeyForItemIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = NSStringFromClass([v4 object]);
  v6 = [v4 string];

  v7 = [v3 stringWithFormat:@"%@/%@", v5, v6];

  return v7;
}

+ (id)dependentDataKeyForDisplayItemIdentifier:(id)a3
{
  v4 = [STUIStatusBarItem itemIdentifierForDisplayItemIdentifier:a3];
  v5 = [a1 dependentDataKeyForItemIdentifier:v4];

  return v5;
}

- (STUIStatusBarTestData)init
{
  v7.receiver = self;
  v7.super_class = STUIStatusBarTestData;
  v2 = [(STUIStatusBarTestData *)&v7 init];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [(STUIStatusBarTestData *)v2 setTestEntries:v3];

  v4 = [MEMORY[0x277CBEB98] set];
  [(STUIStatusBarTestData *)v2 setUpdatedKeys:v4];

  v5 = [MEMORY[0x277CBEB98] set];
  [(STUIStatusBarTestData *)v2 setEnabledKeys:v5];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = STUIStatusBarTestData;
  v4 = [(STStatusBarData *)&v9 copyWithZone:a3];
  v5 = [(NSSet *)self->_updatedKeys copy];
  [v4 setUpdatedKeys:v5];

  v6 = [(NSSet *)self->_enabledKeys copy];
  [v4 setEnabledKeys:v6];

  v7 = [(NSMutableDictionary *)self->_testEntries mutableCopy];
  [v4 setTestEntries:v7];

  return v4;
}

- (BOOL)isEmpty
{
  if ([(NSMutableDictionary *)self->_testEntries count])
  {
    LOBYTE(updatedKeys) = 0;
  }

  else
  {
    updatedKeys = self->_updatedKeys;
    if (updatedKeys)
    {
      LOBYTE(updatedKeys) = [(NSSet *)updatedKeys count]== 0;
    }
  }

  return updatedKeys;
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_testEntries objectForKey:v4];
  if (!v5)
  {
    updatedKeys = self->_updatedKeys;
    if (updatedKeys && ![(NSSet *)updatedKeys containsObject:v4])
    {
      v5 = 0;
    }

    else
    {
      enabledKeys = self->_enabledKeys;
      if (enabledKeys && ![(NSSet *)enabledKeys containsObject:v4])
      {
        v8 = +[STStatusBarDataTestEntry disabledEntry];
      }

      else
      {
        v8 = objc_alloc_init(STStatusBarDataTestEntry);
      }

      v5 = v8;
    }
  }

  return v5;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  if (a3)
  {
    v10 = a4;
    [(STUIStatusBarTestData *)self setDataEntry:a3 forKey:v10];
    updatedKeys = v10;
  }

  else
  {
    testEntries = self->_testEntries;
    v8 = a4;
    [(NSMutableDictionary *)testEntries removeObjectForKey:v8];
    v9 = [(NSSet *)self->_updatedKeys mutableCopy];
    [(NSSet *)v9 removeObject:v8];

    updatedKeys = self->_updatedKeys;
    self->_updatedKeys = v9;
  }
}

- (id)existingEntryKeys
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(NSMutableDictionary *)self->_testEntries allKeys];
  [v3 addObjectsFromArray:v4];

  if (self->_updatedKeys)
  {
    [v3 unionSet:?];
  }

  return v3;
}

- (void)applyUpdate:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = STUIStatusBarTestData;
  [(STUIStatusBarTestData *)&v23 applyUpdate:v4];
  v5 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 testEntries];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __37__STUIStatusBarTestData_applyUpdate___block_invoke;
    v22[3] = &unk_279D381C8;
    v22[4] = self;
    [v6 enumerateKeysAndObjectsUsingBlock:v22];

    v7 = [(NSMutableDictionary *)self->_testEntries allKeys];
    v8 = [v7 copy];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = [v5 valueForKey:{v14, v18}];
          if (v15)
          {
            [(NSMutableDictionary *)self->_testEntries setObject:v15 forKeyedSubscript:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v11);
    }

    v16 = [v5 updatedKeys];
    [(STUIStatusBarTestData *)self setUpdatedKeys:v16];

    v17 = [v5 enabledKeys];
    [(STUIStatusBarTestData *)self setEnabledKeys:v17];
  }
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4
{
  v13.receiver = self;
  v13.super_class = STUIStatusBarTestData;
  v5 = [(STStatusBarData *)&v13 _descriptionBuilderWithMultilinePrefix:a3 forDebug:a4];
  v6 = [v5 activeMultilinePrefix];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__STUIStatusBarTestData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
  v10[3] = &unk_279D38150;
  v7 = v5;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:@"testing" multilinePrefix:v6 block:v10];

  v8 = v7;
  return v7;
}

void __73__STUIStatusBarTestData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) updatedKeys];
  v4 = [v3 allObjects];
  [v2 appendArraySection:v4 withName:@"updatedKeys" skipIfEmpty:1];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) enabledKeys];
  v7 = [v6 allObjects];
  [v5 appendArraySection:v7 withName:@"enabledKeys" skipIfEmpty:1];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) testEntries];
  [v8 appendDictionarySection:v9 withName:@"testEntries" skipIfEmpty:1];
}

@end