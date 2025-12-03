@interface STDictionaryDataDiff
+ (id)diffFromDictionaryData:(id)data toDictionaryData:(id)dictionaryData;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOrthogonalToDiff:(id)diff;
- (STDictionaryDataDiff)initWithCoder:(id)coder;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)dictionaryDataByApplyingToDictionaryData:(id)data;
- (id)diffByApplyingDiff:(id)diff;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)applyToMutableDictionaryData:(id)data;
- (void)encodeWithCoder:(id)coder;
- (void)initWithObjectsAndKeysAdded:(void *)added objectsAndKeysRemoved:;
@end

@implementation STDictionaryDataDiff

+ (id)diffFromDictionaryData:(id)data toDictionaryData:(id)dictionaryData
{
  v50 = *MEMORY[0x1E69E9840];
  dictionaryDataCopy = dictionaryData;
  objectsAndKeys = [data objectsAndKeys];
  v7 = objectsAndKeys;
  if (objectsAndKeys)
  {
    dictionary = objectsAndKeys;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF20] dictionary];
  }

  v9 = dictionary;

  objectsAndKeys2 = [dictionaryDataCopy objectsAndKeys];
  v11 = objectsAndKeys2;
  v39 = dictionaryDataCopy;
  if (objectsAndKeys2)
  {
    dictionary2 = objectsAndKeys2;
  }

  else
  {
    dictionary2 = [MEMORY[0x1E695DF20] dictionary];
  }

  v13 = dictionary2;

  v14 = [v13 mutableCopy];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  allKeys = [v9 allKeys];
  v16 = [allKeys countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v45;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(allKeys);
        }

        v20 = *(*(&v44 + 1) + 8 * i);
        v21 = [v9 objectForKey:v20];
        v22 = [v13 objectForKey:v20];
        if ([v21 isEqual:v22])
        {
          [v14 removeObjectForKey:v20];
        }
      }

      v17 = [allKeys countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v17);
  }

  v38 = v14;

  v23 = [v9 mutableCopy];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  allKeys2 = [v13 allKeys];
  v25 = [allKeys2 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v41;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(allKeys2);
        }

        v29 = *(*(&v40 + 1) + 8 * j);
        v30 = [v9 objectForKey:{v29, v38, v39}];
        v31 = [v13 objectForKey:v29];
        if ([v31 isEqual:v30])
        {
          [v23 removeObjectForKey:v29];
        }
      }

      v26 = [allKeys2 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v26);
  }

  v32 = v38;
  if ([v38 count])
  {
    v33 = [[STDictionaryData alloc] initWithObjectsAndKeys:v38];
  }

  else
  {
    v33 = 0;
  }

  if ([v23 count])
  {
    v34 = [[STDictionaryData alloc] initWithObjectsAndKeys:v23];
  }

  else
  {
    v34 = 0;
  }

  v35 = [[STDictionaryDataDiff alloc] initWithObjectsAndKeysAdded:v33 objectsAndKeysRemoved:v34];

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

- (void)initWithObjectsAndKeysAdded:(void *)added objectsAndKeysRemoved:
{
  v5 = a2;
  addedCopy = added;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = STDictionaryDataDiff;
    self = objc_msgSendSuper2(&v12, sel_init);
    if (self)
    {
      v7 = [v5 copy];
      v8 = self[1];
      self[1] = v7;

      v9 = [addedCopy copy];
      v10 = self[2];
      self[2] = v9;
    }
  }

  return self;
}

- (id)dictionaryDataByApplyingToDictionaryData:(id)data
{
  v4 = [data mutableCopy];
  [(STDictionaryDataDiff *)self applyToMutableDictionaryData:v4];

  return v4;
}

- (void)applyToMutableDictionaryData:(id)data
{
  v29 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (self)
  {
    objectsAndKeysAdded = self->_objectsAndKeysAdded;
  }

  else
  {
    objectsAndKeysAdded = 0;
  }

  objectsAndKeys = [(STDictionaryData *)objectsAndKeysAdded objectsAndKeys];
  objectsAndKeys2 = [dataCopy objectsAndKeys];
  v8 = [objectsAndKeys2 mutableCopy];
  v9 = v8;
  if (v8)
  {
    dictionary = v8;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v11 = dictionary;

  [v11 addEntriesFromDictionary:objectsAndKeys];
  v23 = objectsAndKeys;
  if (self)
  {
    objectsAndKeysRemoved = self->_objectsAndKeysRemoved;
  }

  else
  {
    objectsAndKeysRemoved = 0;
  }

  objectsAndKeys3 = [(STDictionaryData *)objectsAndKeysRemoved objectsAndKeys];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  allKeys = [objectsAndKeys3 allKeys];
  v15 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(allKeys);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        v20 = [v11 objectForKey:v19];
        v21 = [objectsAndKeys3 objectForKey:v19];
        if ([v20 isEqual:v21])
        {
          [v11 removeObjectForKey:v19];
        }
      }

      v16 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  [dataCopy setObjectsAndKeys:v11];
  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEmpty
{
  if (self)
  {
    objectsAndKeysAdded = self->_objectsAndKeysAdded;
  }

  else
  {
    objectsAndKeysAdded = 0;
  }

  v4 = objectsAndKeysAdded;
  if ([(STDictionaryData *)v4 count])
  {
    v5 = 0;
  }

  else
  {
    if (self)
    {
      objectsAndKeysRemoved = self->_objectsAndKeysRemoved;
    }

    else
    {
      objectsAndKeysRemoved = 0;
    }

    v5 = [(STDictionaryData *)objectsAndKeysRemoved count]== 0;
  }

  return v5;
}

- (id)diffByApplyingDiff:(id)diff
{
  v57 = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = diffCopy;
    v43 = diffCopy;
    if (self)
    {
      objectsAndKeysAdded = self->_objectsAndKeysAdded;
    }

    else
    {
      objectsAndKeysAdded = 0;
    }

    v7 = [(STDictionaryData *)objectsAndKeysAdded mutableCopy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_alloc_init(STMutableDictionaryData);
    }

    v11 = v9;

    if (self)
    {
      objectsAndKeysRemoved = self->_objectsAndKeysRemoved;
    }

    else
    {
      objectsAndKeysRemoved = 0;
    }

    v13 = [(STDictionaryData *)objectsAndKeysRemoved mutableCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = objc_alloc_init(STMutableDictionaryData);
    }

    v16 = v15;

    v42 = v5;
    if (v5)
    {
      v44 = v5[1];
      v17 = v5[2];
    }

    else
    {
      v44 = 0;
      v17 = 0;
    }

    v41 = v17;
    objectsAndKeys = [v41 objectsAndKeys];
    v19 = [objectsAndKeys mutableCopy];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v46 = v19;
    allKeys = [v19 allKeys];
    v21 = [allKeys countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v52;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v52 != v23)
          {
            objc_enumerationMutation(allKeys);
          }

          v25 = *(*(&v51 + 1) + 8 * i);
          objectsAndKeys2 = [(STDictionaryData *)v11 objectsAndKeys];
          v27 = [objectsAndKeys2 objectForKey:v25];
          v28 = [v46 objectForKey:v25];
          if ([v28 isEqual:v27])
          {
            [(STMutableDictionaryData *)v11 removeObjectForKey:v25];
          }

          else
          {
            [(STMutableDictionaryData *)v16 setObject:v28 forKey:v25];
          }
        }

        v22 = [allKeys countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v22);
    }

    objectsAndKeys3 = [v44 objectsAndKeys];
    v30 = [objectsAndKeys3 mutableCopy];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = [v30 allKeys];
    v31 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v48;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v48 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v47 + 1) + 8 * j);
          objectsAndKeys4 = [(STDictionaryData *)v16 objectsAndKeys];
          v37 = [objectsAndKeys4 objectForKey:v35];
          v38 = [v30 objectForKey:v35];
          if ([v38 isEqual:v37])
          {
            [(STMutableDictionaryData *)v16 removeObjectForKey:v35];
          }

          else
          {
            [(STMutableDictionaryData *)v11 setObject:v38 forKey:v35];
          }
        }

        v32 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v32);
    }

    if (![(STDictionaryData *)v11 count])
    {

      v11 = 0;
    }

    diffCopy = v43;
    if (![(STDictionaryData *)v16 count])
    {

      v16 = 0;
    }

    v10 = [[STDictionaryDataDiff alloc] initWithObjectsAndKeysAdded:v11 objectsAndKeysRemoved:v16];
  }

  else
  {
    v10 = 0;
  }

  v39 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)isOrthogonalToDiff:(id)diff
{
  diffCopy = diff;
  if ([(STDictionaryDataDiff *)self isEmpty])
  {
    isEmpty = 1;
  }

  else
  {
    isEmpty = [diffCopy isEmpty];
  }

  return isEmpty;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = equalCopy;
  if (self)
  {
    objectsAndKeysAdded = self->_objectsAndKeysAdded;
  }

  else
  {
    objectsAndKeysAdded = 0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __32__STDictionaryDataDiff_isEqual___block_invoke;
  v19[3] = &unk_1E85DDCD8;
  v8 = v6;
  v20 = v8;
  v9 = [v5 appendObject:objectsAndKeysAdded counterpart:v19];
  if (self)
  {
    self = self->_objectsAndKeysRemoved;
  }

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __32__STDictionaryDataDiff_isEqual___block_invoke_2;
  v17 = &unk_1E85DDCD8;
  v18 = v8;
  v10 = v8;
  v11 = [v5 appendObject:self counterpart:&v14];
  v12 = [v5 isEqual];

  return v12;
}

id __32__STDictionaryDataDiff_isEqual___block_invoke(uint64_t a1)
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

id __32__STDictionaryDataDiff_isEqual___block_invoke_2(uint64_t a1)
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
    v5 = [builder appendObject:self->_objectsAndKeysAdded];
    objectsAndKeysRemoved = self->_objectsAndKeysRemoved;
  }

  else
  {
    v10 = [builder appendObject:0];
    objectsAndKeysRemoved = 0;
  }

  v7 = [v4 appendObject:objectsAndKeysRemoved];
  v8 = [v4 hash];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    [coder encodeObject:self->_objectsAndKeysAdded forKey:@"objectsAndKeysAdded"];
    objectsAndKeysRemoved = self->_objectsAndKeysRemoved;
  }

  else
  {
    [coder encodeObject:0 forKey:@"objectsAndKeysAdded"];
    objectsAndKeysRemoved = 0;
  }

  [coder encodeObject:objectsAndKeysRemoved forKey:@"objectsAndKeysRemoved"];
}

- (STDictionaryDataDiff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectsAndKeysAdded"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectsAndKeysRemoved"];
  error = [coderCopy error];

  if (error)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STDictionaryDataDiff *)self initWithObjectsAndKeysAdded:v5 objectsAndKeysRemoved:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STDictionaryDataDiff *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STDictionaryDataDiff *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  selfCopy = self;
  if (self)
  {
    prefixCopy = prefix;
    succinctDescriptionBuilder = [(STDictionaryDataDiff *)selfCopy succinctDescriptionBuilder];
    [succinctDescriptionBuilder setUseDebugDescription:0];
    [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];

    activeMultilinePrefix = [succinctDescriptionBuilder activeMultilinePrefix];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__STDictionaryDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v9[3] = &unk_1E85DDD00;
    v7 = succinctDescriptionBuilder;
    v10 = v7;
    v11 = selfCopy;
    [v7 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v9];

    selfCopy = v7;
  }

  return selfCopy;
}

@end