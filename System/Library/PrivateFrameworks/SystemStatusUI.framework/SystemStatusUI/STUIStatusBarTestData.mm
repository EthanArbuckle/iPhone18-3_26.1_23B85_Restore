@interface STUIStatusBarTestData
+ (id)dependentDataKeyForDisplayItemIdentifier:(id)identifier;
+ (id)dependentDataKeyForItemIdentifier:(id)identifier;
+ (id)emptyTestData;
+ (id)testDataWithUpdatedKeys:(id)keys enabledKeys:(id)enabledKeys;
- (BOOL)isEmpty;
- (STUIStatusBarTestData)init;
- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug;
- (id)copyWithZone:(_NSZone *)zone;
- (id)existingEntryKeys;
- (id)valueForKey:(id)key;
- (void)applyUpdate:(id)update;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation STUIStatusBarTestData

+ (id)testDataWithUpdatedKeys:(id)keys enabledKeys:(id)enabledKeys
{
  keysCopy = keys;
  enabledKeysCopy = enabledKeys;
  v8 = objc_alloc_init(self);
  v9 = v8;
  if (keysCopy)
  {
    v10 = [MEMORY[0x277CBEB98] setWithArray:keysCopy];
    [v9 setUpdatedKeys:v10];

    if (enabledKeysCopy)
    {
LABEL_3:
      v11 = [MEMORY[0x277CBEB98] setWithArray:enabledKeysCopy];
      [v9 setEnabledKeys:v11];

      goto LABEL_6;
    }
  }

  else
  {
    [v8 setUpdatedKeys:0];
    if (enabledKeysCopy)
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
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)dependentDataKeyForItemIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCACA8];
  identifierCopy = identifier;
  v5 = NSStringFromClass([identifierCopy object]);
  string = [identifierCopy string];

  v7 = [v3 stringWithFormat:@"%@/%@", v5, string];

  return v7;
}

+ (id)dependentDataKeyForDisplayItemIdentifier:(id)identifier
{
  v4 = [STUIStatusBarItem itemIdentifierForDisplayItemIdentifier:identifier];
  v5 = [self dependentDataKeyForItemIdentifier:v4];

  return v5;
}

- (STUIStatusBarTestData)init
{
  v7.receiver = self;
  v7.super_class = STUIStatusBarTestData;
  v2 = [(STUIStatusBarTestData *)&v7 init];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(STUIStatusBarTestData *)v2 setTestEntries:dictionary];

  v4 = [MEMORY[0x277CBEB98] set];
  [(STUIStatusBarTestData *)v2 setUpdatedKeys:v4];

  v5 = [MEMORY[0x277CBEB98] set];
  [(STUIStatusBarTestData *)v2 setEnabledKeys:v5];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = STUIStatusBarTestData;
  v4 = [(STStatusBarData *)&v9 copyWithZone:zone];
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

- (id)valueForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_testEntries objectForKey:keyCopy];
  if (!v5)
  {
    updatedKeys = self->_updatedKeys;
    if (updatedKeys && ![(NSSet *)updatedKeys containsObject:keyCopy])
    {
      v5 = 0;
    }

    else
    {
      enabledKeys = self->_enabledKeys;
      if (enabledKeys && ![(NSSet *)enabledKeys containsObject:keyCopy])
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

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  if (value)
  {
    keyCopy = key;
    [(STUIStatusBarTestData *)self setDataEntry:value forKey:keyCopy];
    updatedKeys = keyCopy;
  }

  else
  {
    testEntries = self->_testEntries;
    keyCopy2 = key;
    [(NSMutableDictionary *)testEntries removeObjectForKey:keyCopy2];
    v9 = [(NSSet *)self->_updatedKeys mutableCopy];
    [(NSSet *)v9 removeObject:keyCopy2];

    updatedKeys = self->_updatedKeys;
    self->_updatedKeys = v9;
  }
}

- (id)existingEntryKeys
{
  v3 = [MEMORY[0x277CBEB58] set];
  allKeys = [(NSMutableDictionary *)self->_testEntries allKeys];
  [v3 addObjectsFromArray:allKeys];

  if (self->_updatedKeys)
  {
    [v3 unionSet:?];
  }

  return v3;
}

- (void)applyUpdate:(id)update
{
  v25 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v23.receiver = self;
  v23.super_class = STUIStatusBarTestData;
  [(STUIStatusBarTestData *)&v23 applyUpdate:updateCopy];
  v5 = updateCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    testEntries = [v5 testEntries];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __37__STUIStatusBarTestData_applyUpdate___block_invoke;
    v22[3] = &unk_279D381C8;
    v22[4] = self;
    [testEntries enumerateKeysAndObjectsUsingBlock:v22];

    allKeys = [(NSMutableDictionary *)self->_testEntries allKeys];
    v8 = [allKeys copy];

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

    updatedKeys = [v5 updatedKeys];
    [(STUIStatusBarTestData *)self setUpdatedKeys:updatedKeys];

    enabledKeys = [v5 enabledKeys];
    [(STUIStatusBarTestData *)self setEnabledKeys:enabledKeys];
  }
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug
{
  v13.receiver = self;
  v13.super_class = STUIStatusBarTestData;
  v5 = [(STStatusBarData *)&v13 _descriptionBuilderWithMultilinePrefix:prefix forDebug:debug];
  activeMultilinePrefix = [v5 activeMultilinePrefix];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__STUIStatusBarTestData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
  v10[3] = &unk_279D38150;
  v7 = v5;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:@"testing" multilinePrefix:activeMultilinePrefix block:v10];

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