@interface STListDataDiff
+ (id)diffFromListData:(id)data toListData:(id)listData;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOrthogonalToDiff:(id)diff;
- (STListDataDiff)initWithCoder:(id)coder;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffByApplyingDiff:(id)diff;
- (id)listDataByApplyingToListData:(id)data;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)applyToMutableListData:(id)data;
- (void)encodeWithCoder:(id)coder;
- (void)initWithObjectsAdded:(void *)added objectsRemoved:;
@end

@implementation STListDataDiff

- (BOOL)isEmpty
{
  if (self)
  {
    objectsAdded = self->_objectsAdded;
  }

  else
  {
    objectsAdded = 0;
  }

  v4 = objectsAdded;
  if ([(STListData *)v4 count])
  {
    v5 = 0;
  }

  else
  {
    if (self)
    {
      objectsRemoved = self->_objectsRemoved;
    }

    else
    {
      objectsRemoved = 0;
    }

    v5 = [(STListData *)objectsRemoved count]== 0;
  }

  return v5;
}

+ (id)diffFromListData:(id)data toListData:(id)listData
{
  listDataCopy = listData;
  objects = [data objects];
  v7 = objects;
  if (objects)
  {
    array = objects;
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  v9 = array;

  objects2 = [listDataCopy objects];

  if (objects2)
  {
    array2 = objects2;
  }

  else
  {
    array2 = [MEMORY[0x1E695DEC8] array];
  }

  v12 = array2;

  v13 = [v12 mutableCopy];
  [v13 st_subtractArray:v9];
  v14 = [v9 mutableCopy];
  [v14 st_subtractArray:v12];
  if ([v13 count])
  {
    v15 = [[STListData alloc] initWithObjects:v13];
  }

  else
  {
    v15 = 0;
  }

  if ([v14 count])
  {
    v16 = [[STListData alloc] initWithObjects:v14];
  }

  else
  {
    v16 = 0;
  }

  v17 = [[STListDataDiff alloc] initWithObjectsAdded:v15 objectsRemoved:v16];

  return v17;
}

- (void)initWithObjectsAdded:(void *)added objectsRemoved:
{
  v5 = a2;
  addedCopy = added;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = STListDataDiff;
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

- (id)listDataByApplyingToListData:(id)data
{
  v4 = [data mutableCopy];
  [(STListDataDiff *)self applyToMutableListData:v4];

  return v4;
}

- (void)applyToMutableListData:(id)data
{
  v25 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (self)
  {
    objectsAdded = self->_objectsAdded;
  }

  else
  {
    objectsAdded = 0;
  }

  objects = [(STListData *)objectsAdded objects];
  objects2 = [dataCopy objects];
  v8 = [objects2 mutableCopy];
  v9 = v8;
  if (v8)
  {
    array = v8;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
  }

  v11 = array;

  [v11 addObjectsFromArray:objects];
  if (self)
  {
    objectsRemoved = self->_objectsRemoved;
  }

  else
  {
    objectsRemoved = 0;
  }

  [(STListData *)objectsRemoved objects];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v23 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [v11 indexOfObject:{*(*(&v20 + 1) + 8 * i), v20}];
        if (v18 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v11 removeObjectAtIndex:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  [dataCopy setObjects:v11];
  v19 = *MEMORY[0x1E69E9840];
}

- (id)diffByApplyingDiff:(id)diff
{
  v53 = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = diffCopy;
    if (self)
    {
      objectsAdded = self->_objectsAdded;
    }

    else
    {
      objectsAdded = 0;
    }

    v7 = [(STListData *)objectsAdded mutableCopy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_alloc_init(STMutableListData);
    }

    v11 = v9;

    if (self)
    {
      objectsRemoved = self->_objectsRemoved;
    }

    else
    {
      objectsRemoved = 0;
    }

    v13 = [(STListData *)objectsRemoved mutableCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = objc_alloc_init(STMutableListData);
    }

    v16 = v15;

    v41 = v5;
    v42 = diffCopy;
    if (v5)
    {
      v17 = v5[1];
      v18 = v5[2];
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v39 = v18;
    objects = [v39 objects];
    v20 = [objects mutableCopy];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v48;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v48 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v47 + 1) + 8 * i);
          objects2 = [(STListData *)v11 objects];
          if ([objects2 indexOfObject:v26] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [(STMutableListData *)v16 addObject:v26];
          }

          else
          {
            [(STMutableListData *)v11 removeObject:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v23);
    }

    v40 = v17;
    objects3 = [v17 objects];
    v29 = [objects3 mutableCopy];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v30 = v29;
    v31 = [v30 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v44;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v44 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v43 + 1) + 8 * j);
          objects4 = [(STListData *)v16 objects];
          if ([objects4 indexOfObject:v35] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [(STMutableListData *)v11 addObject:v35];
          }

          else
          {
            [(STMutableListData *)v16 removeObject:v35];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v32);
    }

    if (![(STListData *)v11 count])
    {

      v11 = 0;
    }

    diffCopy = v42;
    if (![(STListData *)v16 count])
    {

      v16 = 0;
    }

    v10 = [[STListDataDiff alloc] initWithObjectsAdded:v11 objectsRemoved:v16];
  }

  else
  {
    v10 = 0;
  }

  v37 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)isOrthogonalToDiff:(id)diff
{
  diffCopy = diff;
  if ([(STListDataDiff *)self isEmpty])
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
  if (self)
  {
    objectsAdded = self->_objectsAdded;
  }

  else
  {
    objectsAdded = 0;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __26__STListDataDiff_isEqual___block_invoke;
  v18[3] = &unk_1E85DDCD8;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendObject:objectsAdded counterpart:v18];
  if (self)
  {
    self = self->_objectsRemoved;
  }

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __26__STListDataDiff_isEqual___block_invoke_2;
  v16 = &unk_1E85DDCD8;
  v17 = v7;
  v9 = v7;
  v10 = [v5 appendObject:self counterpart:&v13];
  v11 = [v5 isEqual];

  return v11;
}

id __26__STListDataDiff_isEqual___block_invoke(uint64_t a1)
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

id __26__STListDataDiff_isEqual___block_invoke_2(uint64_t a1)
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
    v5 = [builder appendObject:self->_objectsAdded];
    objectsRemoved = self->_objectsRemoved;
  }

  else
  {
    v10 = [builder appendObject:0];
    objectsRemoved = 0;
  }

  v7 = [v4 appendObject:objectsRemoved];
  v8 = [v4 hash];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    [coder encodeObject:self->_objectsAdded forKey:@"objectsAdded"];
    objectsRemoved = self->_objectsRemoved;
  }

  else
  {
    [coder encodeObject:0 forKey:@"objectsAdded"];
    objectsRemoved = 0;
  }

  [coder encodeObject:objectsRemoved forKey:@"objectsRemoved"];
}

- (STListDataDiff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectsAdded"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectsRemoved"];
  error = [coderCopy error];

  if (error)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STListDataDiff *)self initWithObjectsAdded:v5 objectsRemoved:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STListDataDiff *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STListDataDiff *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  selfCopy = self;
  if (self)
  {
    prefixCopy = prefix;
    succinctDescriptionBuilder = [(STListDataDiff *)selfCopy succinctDescriptionBuilder];
    [succinctDescriptionBuilder setUseDebugDescription:0];
    [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];

    activeMultilinePrefix = [succinctDescriptionBuilder activeMultilinePrefix];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__STListDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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