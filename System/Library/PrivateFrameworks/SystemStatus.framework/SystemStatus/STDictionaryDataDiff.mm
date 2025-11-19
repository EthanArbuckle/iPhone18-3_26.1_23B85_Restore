@interface STDictionaryDataDiff
+ (id)diffFromDictionaryData:(id)a3 toDictionaryData:(id)a4;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOrthogonalToDiff:(id)a3;
- (STDictionaryDataDiff)initWithCoder:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)dictionaryDataByApplyingToDictionaryData:(id)a3;
- (id)diffByApplyingDiff:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)applyToMutableDictionaryData:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)initWithObjectsAndKeysAdded:(void *)a3 objectsAndKeysRemoved:;
@end

@implementation STDictionaryDataDiff

+ (id)diffFromDictionaryData:(id)a3 toDictionaryData:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 objectsAndKeys];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF20] dictionary];
  }

  v9 = v8;

  v10 = [v5 objectsAndKeys];
  v11 = v10;
  v39 = v5;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x1E695DF20] dictionary];
  }

  v13 = v12;

  v14 = [v13 mutableCopy];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v15 = [v9 allKeys];
  v16 = [v15 countByEnumeratingWithState:&v44 objects:v49 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v44 + 1) + 8 * i);
        v21 = [v9 objectForKey:v20];
        v22 = [v13 objectForKey:v20];
        if ([v21 isEqual:v22])
        {
          [v14 removeObjectForKey:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v17);
  }

  v38 = v14;

  v23 = [v9 mutableCopy];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v24 = [v13 allKeys];
  v25 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
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
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v40 + 1) + 8 * j);
        v30 = [v9 objectForKey:{v29, v38, v39}];
        v31 = [v13 objectForKey:v29];
        if ([v31 isEqual:v30])
        {
          [v23 removeObjectForKey:v29];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
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

- (void)initWithObjectsAndKeysAdded:(void *)a3 objectsAndKeysRemoved:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = STDictionaryDataDiff;
    a1 = objc_msgSendSuper2(&v12, sel_init);
    if (a1)
    {
      v7 = [v5 copy];
      v8 = a1[1];
      a1[1] = v7;

      v9 = [v6 copy];
      v10 = a1[2];
      a1[2] = v9;
    }
  }

  return a1;
}

- (id)dictionaryDataByApplyingToDictionaryData:(id)a3
{
  v4 = [a3 mutableCopy];
  [(STDictionaryDataDiff *)self applyToMutableDictionaryData:v4];

  return v4;
}

- (void)applyToMutableDictionaryData:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self)
  {
    objectsAndKeysAdded = self->_objectsAndKeysAdded;
  }

  else
  {
    objectsAndKeysAdded = 0;
  }

  v6 = [(STDictionaryData *)objectsAndKeysAdded objectsAndKeys];
  v7 = [v4 objectsAndKeys];
  v8 = [v7 mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
  }

  v11 = v10;

  [v11 addEntriesFromDictionary:v6];
  v23 = v6;
  if (self)
  {
    objectsAndKeysRemoved = self->_objectsAndKeysRemoved;
  }

  else
  {
    objectsAndKeysRemoved = 0;
  }

  v13 = [(STDictionaryData *)objectsAndKeysRemoved objectsAndKeys];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [v13 allKeys];
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        v20 = [v11 objectForKey:v19];
        v21 = [v13 objectForKey:v19];
        if ([v20 isEqual:v21])
        {
          [v11 removeObjectForKey:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  [v4 setObjectsAndKeys:v11];
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

- (id)diffByApplyingDiff:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v43 = v4;
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
    v18 = [v41 objectsAndKeys];
    v19 = [v18 mutableCopy];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v46 = v19;
    v20 = [v19 allKeys];
    v21 = [v20 countByEnumeratingWithState:&v51 objects:v56 count:16];
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
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v51 + 1) + 8 * i);
          v26 = [(STDictionaryData *)v11 objectsAndKeys];
          v27 = [v26 objectForKey:v25];
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

        v22 = [v20 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v22);
    }

    v29 = [v44 objectsAndKeys];
    v30 = [v29 mutableCopy];

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
          v36 = [(STDictionaryData *)v16 objectsAndKeys];
          v37 = [v36 objectForKey:v35];
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

    v4 = v43;
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

- (BOOL)isOrthogonalToDiff:(id)a3
{
  v4 = a3;
  if ([(STDictionaryDataDiff *)self isEmpty])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEmpty];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = v4;
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = v3;
  if (self)
  {
    v5 = [v3 appendObject:self->_objectsAndKeysAdded];
    objectsAndKeysRemoved = self->_objectsAndKeysRemoved;
  }

  else
  {
    v10 = [v3 appendObject:0];
    objectsAndKeysRemoved = 0;
  }

  v7 = [v4 appendObject:objectsAndKeysRemoved];
  v8 = [v4 hash];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  if (self)
  {
    [a3 encodeObject:self->_objectsAndKeysAdded forKey:@"objectsAndKeysAdded"];
    objectsAndKeysRemoved = self->_objectsAndKeysRemoved;
  }

  else
  {
    [a3 encodeObject:0 forKey:@"objectsAndKeysAdded"];
    objectsAndKeysRemoved = 0;
  }

  [a3 encodeObject:objectsAndKeysRemoved forKey:@"objectsAndKeysRemoved"];
}

- (STDictionaryDataDiff)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectsAndKeysAdded"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectsAndKeysRemoved"];
  v7 = [v4 error];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    self = [(STDictionaryDataDiff *)self initWithObjectsAndKeysAdded:v5 objectsAndKeysRemoved:v6];
    v8 = self;
  }

  return v8;
}

- (id)succinctDescription
{
  v2 = [(STDictionaryDataDiff *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STDictionaryDataDiff *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v3 = self;
  if (self)
  {
    v4 = a3;
    v5 = [(STDictionaryDataDiff *)v3 succinctDescriptionBuilder];
    [v5 setUseDebugDescription:0];
    [v5 setActiveMultilinePrefix:v4];

    v6 = [v5 activeMultilinePrefix];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__STDictionaryDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v9[3] = &unk_1E85DDD00;
    v7 = v5;
    v10 = v7;
    v11 = v3;
    [v7 appendBodySectionWithName:0 multilinePrefix:v6 block:v9];

    v3 = v7;
  }

  return v3;
}

@end