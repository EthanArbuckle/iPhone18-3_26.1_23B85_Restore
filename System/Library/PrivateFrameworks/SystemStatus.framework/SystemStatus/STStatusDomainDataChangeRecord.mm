@interface STStatusDomainDataChangeRecord
- (BOOL)isEqual:(id)equal;
- (BSIntegerSet)domainsWithData;
- (BSIntegerSet)domainsWithSignificantData;
- (STStatusDomainDataChangeRecord)init;
- (STStatusDomainDataChangeRecord)initWithCoder:(id)coder;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)_initWithFallbackDataByClientKeyByDomain:(void *)domain entriesByDomain:;
- (id)currentDataForDomain:(unint64_t)domain;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)fallbackDataForClientKey:(id)key domain:(unint64_t)domain;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)_combineTrailingDiffEntriesIfPossible:(uint64_t)possible;
- (void)addDiff:(id)diff forClientKey:(id)key domain:(unint64_t)domain;
- (void)addEntriesFromDataChangeRecord:(id)record forDomain:(unint64_t)domain replacingClientKeysWithKey:(id)key;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateEntriesByDomainUsingBlock:(id)block;
- (void)removeAllEntriesForClientKey:(id)key domain:(unint64_t)domain;
- (void)setData:(id)data forClientKey:(id)key domain:(unint64_t)domain;
- (void)setFallbackData:(id)data forClientKey:(id)key domain:(unint64_t)domain;
@end

@implementation STStatusDomainDataChangeRecord

- (BSIntegerSet)domainsWithSignificantData
{
  v3 = objc_alloc_init(MEMORY[0x1E698E6E8]);
  if (self)
  {
    cachedCurrentDataByDomain = self->_cachedCurrentDataByDomain;
  }

  else
  {
    cachedCurrentDataByDomain = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__STStatusDomainDataChangeRecord_domainsWithSignificantData__block_invoke;
  v9[3] = &unk_1E85DF3B0;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(NSMutableDictionary *)cachedCurrentDataByDomain enumerateKeysAndObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __60__STStatusDomainDataChangeRecord_domainsWithSignificantData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  if (!v5)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = objc_alloc_init(objc_opt_class());
      v13 = [v6 isEqual:v12];

      if (v13)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

LABEL_6:

    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v7 activeDisplayModes];
  v9 = [v7 attributions];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__STStatusDomainDataChangeRecord__isDataSignificant___block_invoke;
  v15[3] = &__block_descriptor_40_e51_B16__0__STLocationStatusDomainLocationAttribution_8l;
  v15[4] = v8;
  v10 = [v9 bs_filter:v15];

  v11 = [v10 count];
  if (v11)
  {
LABEL_8:
    [*(a1 + 40) addValue:{objc_msgSend(v14, "integerValue", v14)}];
  }

LABEL_9:
}

- (STStatusDomainDataChangeRecord)init
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [(STStatusDomainDataChangeRecord *)&self->super.isa _initWithFallbackDataByClientKeyByDomain:v3 entriesByDomain:v4];

  return v5;
}

- (id)_initWithFallbackDataByClientKeyByDomain:(void *)domain entriesByDomain:
{
  v6 = a2;
  domainCopy = domain;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = STStatusDomainDataChangeRecord;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(self + 2, domain);
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = self[3];
      self[3] = v9;
    }
  }

  return self;
}

- (BSIntegerSet)domainsWithData
{
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_entriesByDomain;
  }

  allKeys = [(STStatusDomainDataChangeRecord *)self allKeys];
  v3 = [objc_alloc(MEMORY[0x1E698E6E8]) initWithCapacity:{objc_msgSend(allKeys, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = allKeys;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addValue:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "integerValue", v12)}];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [v3 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)fallbackDataForClientKey:(id)key domain:(unint64_t)domain
{
  if (self)
  {
    fallbackDataByClientKeyByDomain = self->_fallbackDataByClientKeyByDomain;
  }

  else
  {
    fallbackDataByClientKeyByDomain = 0;
  }

  v7 = MEMORY[0x1E696AD98];
  v8 = fallbackDataByClientKeyByDomain;
  keyCopy = key;
  v10 = [v7 numberWithUnsignedInteger:domain];
  v11 = [(NSMutableDictionary *)v8 objectForKey:v10];

  v12 = [v11 objectForKey:keyCopy];

  return v12;
}

- (id)currentDataForDomain:(unint64_t)domain
{
  v33 = *MEMORY[0x1E69E9840];
  if (self)
  {
    cachedCurrentDataByDomain = self->_cachedCurrentDataByDomain;
  }

  else
  {
    cachedCurrentDataByDomain = 0;
  }

  v6 = cachedCurrentDataByDomain;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:domain];
  v8 = [(NSMutableDictionary *)v6 objectForKey:v7];

  if (!v8)
  {
    if (self)
    {
      entriesByDomain = self->_entriesByDomain;
    }

    else
    {
      entriesByDomain = 0;
    }

    v10 = MEMORY[0x1E696AD98];
    v11 = entriesByDomain;
    v12 = [v10 numberWithUnsignedInteger:domain];
    v13 = [(NSMutableDictionary *)v11 objectForKey:v12];

    if ([v13 count])
    {
      firstObject = [v13 firstObject];
      v27 = firstObject;
      if ([firstObject entryType])
      {
        clientKey = [firstObject clientKey];
        v8 = [(STStatusDomainDataChangeRecord *)self fallbackDataForClientKey:clientKey domain:domain];
      }

      else
      {
        v8 = 0;
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v16 = v13;
      v17 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v29;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v29 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v28 + 1) + 8 * i);
            if ([v21 entryType])
            {
              diff = [v21 diff];
              v23 = [v8 dataByApplyingDiff:diff];

              v8 = v23;
            }

            else
            {
              [v21 data];
              v8 = diff = v8;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v18);
      }

      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:domain];
      [(NSMutableDictionary *)v6 setObject:v8 forKey:v24];
    }

    else
    {

      v8 = 0;
    }
  }

  v25 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)setFallbackData:(id)data forClientKey:(id)key domain:(unint64_t)domain
{
  dataCopy = data;
  keyCopy = key;
  if (self)
  {
    fallbackDataByClientKeyByDomain = self->_fallbackDataByClientKeyByDomain;
  }

  else
  {
    fallbackDataByClientKeyByDomain = 0;
  }

  v10 = fallbackDataByClientKeyByDomain;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:domain];
  dictionary = [(NSMutableDictionary *)v10 objectForKey:v11];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:domain];
    [(NSMutableDictionary *)v10 setObject:dictionary forKey:v13];
  }

  [dictionary setObject:dataCopy forKey:keyCopy];
}

- (void)setData:(id)data forClientKey:(id)key domain:(unint64_t)domain
{
  dataCopy = data;
  keyCopy = key;
  if (dataCopy)
  {
    v9 = [[STStatusDomainDataChangeRecordDataEntry alloc] initWithData:dataCopy clientKey:keyCopy];
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v9, 0}];
    if (self)
    {
      entriesByDomain = self->_entriesByDomain;
    }

    else
    {
      entriesByDomain = 0;
    }

    v12 = MEMORY[0x1E696AD98];
    v13 = entriesByDomain;
    v14 = [v12 numberWithUnsignedInteger:domain];
    [(NSMutableDictionary *)v13 setObject:v10 forKey:v14];
  }

  else
  {
    if (self)
    {
      v15 = self->_entriesByDomain;
    }

    else
    {
      v15 = 0;
    }

    v16 = MEMORY[0x1E696AD98];
    v10 = v15;
    v9 = [v16 numberWithUnsignedInteger:domain];
    [(NSMutableDictionary *)v10 removeObjectForKey:v9];
  }

  if (self)
  {
    cachedCurrentDataByDomain = self->_cachedCurrentDataByDomain;
  }

  else
  {
    cachedCurrentDataByDomain = 0;
  }

  v18 = MEMORY[0x1E696AD98];
  v19 = cachedCurrentDataByDomain;
  v20 = [v18 numberWithUnsignedInteger:domain];
  [(NSMutableDictionary *)v19 removeObjectForKey:v20];
}

- (void)addDiff:(id)diff forClientKey:(id)key domain:(unint64_t)domain
{
  if (self)
  {
    entriesByDomain = self->_entriesByDomain;
  }

  else
  {
    entriesByDomain = 0;
  }

  v21 = entriesByDomain;
  v10 = MEMORY[0x1E696AD98];
  keyCopy = key;
  diffCopy = diff;
  v13 = [v10 numberWithUnsignedInteger:domain];
  array = [(NSMutableDictionary *)v21 objectForKey:v13];

  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:domain];
    [(NSMutableDictionary *)v21 setObject:array forKey:v15];
  }

  v16 = [[STStatusDomainDataChangeRecordDiffEntry alloc] initWithDiff:diffCopy clientKey:keyCopy];

  [array addObject:v16];
  [(STStatusDomainDataChangeRecord *)self _combineTrailingDiffEntriesIfPossible:array];
  if (self)
  {
    cachedCurrentDataByDomain = self->_cachedCurrentDataByDomain;
  }

  else
  {
    cachedCurrentDataByDomain = 0;
  }

  v18 = MEMORY[0x1E696AD98];
  v19 = cachedCurrentDataByDomain;
  v20 = [v18 numberWithUnsignedInteger:domain];
  [(NSMutableDictionary *)v19 removeObjectForKey:v20];
}

- (void)_combineTrailingDiffEntriesIfPossible:(uint64_t)possible
{
  v3 = a2;
  v4 = v3;
  if (possible)
  {
    lastObject = [v3 lastObject];
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (lastObject)
    {
      while ([lastObject entryType] == 1)
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __72__STStatusDomainDataChangeRecord__combineTrailingDiffEntriesIfPossible___block_invoke;
        v21[3] = &unk_1E85DF450;
        v8 = lastObject;
        v22 = v8;
        v9 = dictionary;
        v23 = v9;
        if ([orderedSet bs_containsObjectPassingTest:v21])
        {

          lastObject = 0;
          break;
        }

        clientKey = [v8 clientKey];
        diff = [v8 diff];
        v12 = [v9 valueForKey:clientKey];
        diff2 = [v12 diff];

        if (diff2)
        {
          v14 = [diff diffByApplyingDiff:diff2];
        }

        else
        {
          v14 = diff;
        }

        v15 = v14;
        v16 = [[STStatusDomainDataChangeRecordDiffEntry alloc] initWithDiff:v14 clientKey:clientKey];
        [v9 setObject:v16 forKey:clientKey];
        [orderedSet addObject:clientKey];
        [v4 removeLastObject];
        lastObject = [v4 lastObject];

        if (!lastObject)
        {
          break;
        }
      }
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__STStatusDomainDataChangeRecord__combineTrailingDiffEntriesIfPossible___block_invoke_2;
    v18[3] = &unk_1E85DF478;
    v19 = dictionary;
    v20 = v4;
    v17 = dictionary;
    [orderedSet enumerateObjectsWithOptions:2 usingBlock:v18];
  }
}

- (void)removeAllEntriesForClientKey:(id)key domain:(unint64_t)domain
{
  keyCopy = key;
  if (self)
  {
    fallbackDataByClientKeyByDomain = self->_fallbackDataByClientKeyByDomain;
  }

  else
  {
    fallbackDataByClientKeyByDomain = 0;
  }

  v8 = fallbackDataByClientKeyByDomain;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:domain];
  v10 = [(NSMutableDictionary *)v8 objectForKey:v9];

  [v10 removeObjectForKey:keyCopy];
  if (![v10 count])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:domain];
    [(NSMutableDictionary *)v8 removeObjectForKey:v11];
  }

  if (self)
  {
    entriesByDomain = self->_entriesByDomain;
  }

  else
  {
    entriesByDomain = 0;
  }

  v13 = entriesByDomain;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:domain];
  v15 = [(NSMutableDictionary *)v13 objectForKey:v14];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __70__STStatusDomainDataChangeRecord_removeAllEntriesForClientKey_domain___block_invoke;
  v23[3] = &unk_1E85DF3D8;
  v16 = keyCopy;
  v24 = v16;
  v17 = [v15 indexesOfObjectsPassingTest:v23];
  [v15 removeObjectsAtIndexes:v17];
  if (![v15 count])
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:domain];
    [(NSMutableDictionary *)v13 removeObjectForKey:v22];

    if (self)
    {
      goto LABEL_9;
    }

LABEL_12:
    cachedCurrentDataByDomain = 0;
    goto LABEL_10;
  }

  [(STStatusDomainDataChangeRecord *)self _combineTrailingDiffEntriesIfPossible:v15];
  if (!self)
  {
    goto LABEL_12;
  }

LABEL_9:
  cachedCurrentDataByDomain = self->_cachedCurrentDataByDomain;
LABEL_10:
  v19 = MEMORY[0x1E696AD98];
  v20 = cachedCurrentDataByDomain;
  v21 = [v19 numberWithUnsignedInteger:domain];
  [(NSMutableDictionary *)v20 removeObjectForKey:v21];
}

uint64_t __70__STStatusDomainDataChangeRecord_removeAllEntriesForClientKey_domain___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 clientKey];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)addEntriesFromDataChangeRecord:(id)record forDomain:(unint64_t)domain replacingClientKeysWithKey:(id)key
{
  keyCopy = key;
  if (record)
  {
    v9 = *(record + 2);
  }

  else
  {
    v9 = 0;
  }

  v10 = MEMORY[0x1E696AD98];
  v11 = v9;
  v12 = [v10 numberWithUnsignedInteger:domain];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __102__STStatusDomainDataChangeRecord_addEntriesFromDataChangeRecord_forDomain_replacingClientKeysWithKey___block_invoke;
    v26 = &unk_1E85DF400;
    selfCopy = self;
    v28 = keyCopy;
    v14 = [v13 bs_map:&v23];
    if (self)
    {
      v15 = self->_entriesByDomain;
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{domain, v23, v24, v25, v26, selfCopy}];
      array = [(NSMutableDictionary *)v15 objectForKey:v16];

      if (!array)
      {
        array = [MEMORY[0x1E695DF70] array];
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:domain];
        [(NSMutableDictionary *)v15 setObject:array forKey:v18];
      }

      [array addObjectsFromArray:v14];
      [(STStatusDomainDataChangeRecord *)self _combineTrailingDiffEntriesIfPossible:array];
      cachedCurrentDataByDomain = self->_cachedCurrentDataByDomain;
      v20 = MEMORY[0x1E696AD98];
      v21 = cachedCurrentDataByDomain;
      v22 = [v20 numberWithUnsignedInteger:domain];
      [(NSMutableDictionary *)v21 removeObjectForKey:v22];
    }
  }
}

id __102__STStatusDomainDataChangeRecord_addEntriesFromDataChangeRecord_forDomain_replacingClientKeysWithKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v2;
  if (v3)
  {
    if ([v4 entryType])
    {
      v6 = [STStatusDomainDataChangeRecordDiffEntry alloc];
      v7 = [v4 diff];
      v8 = [(STStatusDomainDataChangeRecordDiffEntry *)v6 initWithDiff:v7 clientKey:v5];
    }

    else
    {
      v9 = [STStatusDomainDataChangeRecordDataEntry alloc];
      v7 = [v4 data];
      v8 = [(STStatusDomainDataChangeRecordDataEntry *)v9 initWithData:v7 clientKey:v5];
    }

    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)enumerateEntriesByDomainUsingBlock:(id)block
{
  blockCopy = block;
  if (self)
  {
    entriesByDomain = self->_entriesByDomain;
  }

  else
  {
    entriesByDomain = 0;
  }

  v6 = entriesByDomain;
  domainsWithData = [(STStatusDomainDataChangeRecord *)self domainsWithData];
  v8 = [domainsWithData copy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__STStatusDomainDataChangeRecord_enumerateEntriesByDomainUsingBlock___block_invoke;
  v11[3] = &unk_1E85DF428;
  v12 = v6;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = v6;
  [v8 enumerateWithBlock:v11];
}

void __69__STStatusDomainDataChangeRecord_enumerateEntriesByDomainUsingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v7 = [v5 objectForKey:v6];
  v8 = [v7 copy];

  (*(*(a1 + 40) + 16))();
  *a3 = 0;
}

uint64_t __72__STStatusDomainDataChangeRecord__combineTrailingDiffEntriesIfPossible___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientKey];
  v5 = [v4 isEqual:v3];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [*(a1 + 40) valueForKey:v3];
    v8 = [v7 diff];

    v9 = [*(a1 + 32) diff];
    LODWORD(v7) = [v9 isOrthogonalToDiff:v8];

    v6 = v7 ^ 1;
  }

  return v6;
}

uint64_t __72__STStatusDomainDataChangeRecord__combineTrailingDiffEntriesIfPossible___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) valueForKey:a2];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 40) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  if (self)
  {
    fallbackDataByClientKeyByDomain = self->_fallbackDataByClientKeyByDomain;
  }

  else
  {
    fallbackDataByClientKeyByDomain = 0;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __42__STStatusDomainDataChangeRecord_isEqual___block_invoke;
  v18[3] = &unk_1E85DDCD8;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendObject:fallbackDataByClientKeyByDomain counterpart:v18];
  if (self)
  {
    self = self->_entriesByDomain;
  }

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __42__STStatusDomainDataChangeRecord_isEqual___block_invoke_2;
  v16 = &unk_1E85DDCD8;
  v17 = v7;
  v9 = v7;
  v10 = [v5 appendObject:self counterpart:&v13];
  v11 = [v5 isEqual];

  return v11;
}

id __42__STStatusDomainDataChangeRecord_isEqual___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

id __42__STStatusDomainDataChangeRecord_isEqual___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = builder;
  if (self)
  {
    v5 = [builder appendObject:self->_fallbackDataByClientKeyByDomain];
    entriesByDomain = self->_entriesByDomain;
  }

  else
  {
    v10 = [builder appendObject:0];
    entriesByDomain = 0;
  }

  v7 = [v4 appendObject:entriesByDomain];
  v8 = [v4 hash];

  return v8;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STStatusDomainDataChangeRecord *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusDomainDataChangeRecord *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusDomainDataChangeRecord *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:
{
  if (self)
  {
    v5 = a2;
    succinctDescriptionBuilder = [self succinctDescriptionBuilder];
    [succinctDescriptionBuilder setUseDebugDescription:prefix];
    [succinctDescriptionBuilder setActiveMultilinePrefix:v5];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v8 = self[2];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__STStatusDomainDataChangeRecord__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v12[3] = &unk_1E85DF4C0;
    v13 = dictionary;
    v9 = dictionary;
    [v8 enumerateKeysAndObjectsUsingBlock:v12];
    activeMultilinePrefix = [succinctDescriptionBuilder activeMultilinePrefix];
    [succinctDescriptionBuilder appendDictionarySection:v9 withName:@"entries" multilinePrefix:activeMultilinePrefix skipIfEmpty:1];
  }

  else
  {
    succinctDescriptionBuilder = 0;
  }

  return succinctDescriptionBuilder;
}

void __82__STStatusDomainDataChangeRecord__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = STSystemStatusDescriptionForDomain(v6);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %ld)", v6];
  }

  v10 = v9;

  [*(a1 + 32) setObject:v5 forKey:v10];
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    [coder encodeObject:self->_fallbackDataByClientKeyByDomain forKey:@"fallbackDataByClientKeyByDomain"];
    entriesByDomain = self->_entriesByDomain;
  }

  else
  {
    [coder encodeObject:0 forKey:@"fallbackDataByClientKeyByDomain"];
    entriesByDomain = 0;
  }

  [coder encodeObject:entriesByDomain forKey:@"entriesByDomain"];
}

- (STStatusDomainDataChangeRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc(MEMORY[0x1E695DFA8]);
  v6 = STValidStatusDomainDataTypes();
  v7 = [v5 initWithSet:v6];

  [v7 addObject:objc_opt_class()];
  [v7 addObject:objc_opt_class()];
  [v7 addObject:objc_opt_class()];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"fallbackDataByClientKeyByDomain"];
  objc_opt_self();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v11 = 0;
LABEL_10:
    selfCopy2 = 0;
    goto LABEL_17;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __89__STStatusDomainDataChangeRecord__validatedFallbackDataByClientKeyByDomainForDictionary___block_invoke;
  v28 = &unk_1E85DF510;
  v30 = &v31;
  v10 = dictionary;
  v29 = v10;
  [v8 enumerateKeysAndObjectsUsingBlock:&v25];
  if (v32[3])
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  _Block_object_dispose(&v31, 8);
  if (!v11)
  {
    goto LABEL_10;
  }

  selfCopy = self;
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = [v12 setWithObjects:{v13, v14, v15, v16, objc_opt_class(), 0}];
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"entriesByDomain"];
  objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __73__STStatusDomainDataChangeRecord__validatedEntriesByDomainForDictionary___block_invoke;
    v28 = &unk_1E85DF538;
    v30 = &v31;
    v20 = dictionary2;
    v29 = v20;
    [v18 enumerateKeysAndObjectsUsingBlock:&v25];
    self = selfCopy;
    if (v32[3])
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    _Block_object_dispose(&v31, 8);
    if (v21)
    {
      self = [(STStatusDomainDataChangeRecord *)&selfCopy->super.isa _initWithFallbackDataByClientKeyByDomain:v11 entriesByDomain:v21];
      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  else
  {

    v21 = 0;
    selfCopy2 = 0;
    self = selfCopy;
  }

LABEL_17:
  return selfCopy2;
}

void __92__STStatusDomainDataChangeRecord__validatedFallbackDataByClientKeyForDictionary_domainName___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v8 = *(a1 + 48), STIsValidDataForStatusDomain(v7)))
  {
    [*(a1 + 32) setObject:v7 forKey:v9];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __89__STStatusDomainDataChangeRecord__validatedFallbackDataByClientKeyByDomainForDictionary___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
    goto LABEL_12;
  }

  v8 = [v13 integerValue];
  v9 = v7;
  objc_opt_self();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_10:
    v12 = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
    goto LABEL_11;
  }

  v10 = [MEMORY[0x1E695DF90] dictionary];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __92__STStatusDomainDataChangeRecord__validatedFallbackDataByClientKeyForDictionary_domainName___block_invoke;
  v14[3] = &unk_1E85DF4E8;
  v16 = &v18;
  v17 = v8;
  v11 = v10;
  v15 = v11;
  [v9 enumerateKeysAndObjectsUsingBlock:v14];
  if (v19[3])
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  _Block_object_dispose(&v18, 8);
  if (!v12)
  {
    goto LABEL_10;
  }

  [*(a1 + 32) setObject:v12 forKey:v13];
LABEL_11:

LABEL_12:
}

void __73__STStatusDomainDataChangeRecord__validatedEntriesByDomainForDictionary___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = v8;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              *(*(*(a1 + 40) + 8) + 24) = 1;
              goto LABEL_14;
            }
          }

          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a4 = 1;
    }

    else
    {
      [*(a1 + 32) setObject:v9 forKey:v7];
    }

    v8 = v17;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end