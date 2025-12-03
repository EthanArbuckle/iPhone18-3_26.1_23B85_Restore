@interface PLGraphNodeValue
+ (id)fetchGraphNodeValuesWithCode:(int)code andValues:(id)values forValueType:(id)type inContext:(id)context prefetchNode:(BOOL)node;
+ (void)_debug_assertAllValuesAreOfType:(id)type inCollection:(id)collection;
- (BOOL)isInsertedDeletedOrChanged;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (BOOL)valueDidChange;
- (int64_t)integerValue;
- (void)setIntegerValue:(int64_t)value;
@end

@implementation PLGraphNodeValue

- (BOOL)isInsertedDeletedOrChanged
{
  if (([(PLGraphNodeValue *)self isInserted]& 1) != 0 || ([(PLGraphNodeValue *)self isDeleted]& 1) != 0)
  {
    return 1;
  }

  return [(PLGraphNodeValue *)self valueDidChange];
}

- (BOOL)valueDidChange
{
  changedValues = [(PLGraphNodeValue *)self changedValues];
  v4 = [changedValues objectForKeyedSubscript:@"stringValue"];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    changedValues2 = [(PLGraphNodeValue *)self changedValues];
    v7 = [changedValues2 objectForKeyedSubscript:@"dateValue"];
    if (v7)
    {
      v5 = 1;
    }

    else
    {
      changedValues3 = [(PLGraphNodeValue *)self changedValues];
      v9 = [changedValues3 objectForKeyedSubscript:@"BOOLValue"];
      if (v9)
      {
        v5 = 1;
      }

      else
      {
        changedValues4 = [(PLGraphNodeValue *)self changedValues];
        v11 = [changedValues4 objectForKeyedSubscript:@"integerValue"];
        if (v11)
        {
          v5 = 1;
        }

        else
        {
          changedValues5 = [(PLGraphNodeValue *)self changedValues];
          v13 = [changedValues5 objectForKeyedSubscript:@"doubleValue"];
          v5 = v13 != 0;
        }
      }
    }
  }

  return v5;
}

- (void)setIntegerValue:(int64_t)value
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:value];
  [(PLManagedObject *)self pl_setValue:v4 forKey:@"integerValue" valueDidChangeHandler:0];
}

- (int64_t)integerValue
{
  [(PLGraphNodeValue *)self willAccessValueForKey:@"integerValue"];
  v3 = [(PLGraphNodeValue *)self primitiveValueForKey:@"integerValue"];
  [(PLGraphNodeValue *)self didAccessValueForKey:@"integerValue"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)validateForInsert:(id *)insert
{
  v7.receiver = self;
  v7.super_class = PLGraphNodeValue;
  v5 = [(PLGraphNodeValue *)&v7 validateForInsert:?];
  if (v5)
  {
    LOBYTE(v5) = [(PLGraphNodeValue *)self validateForUpdate:insert];
  }

  return v5;
}

- (BOOL)validateForUpdate:(id *)update
{
  v9.receiver = self;
  v9.super_class = PLGraphNodeValue;
  v5 = [(PLGraphNodeValue *)&v9 validateForUpdate:?];
  if (v5)
  {
    node = [(PLGraphNodeValue *)self node];

    if (node && [(PLGraphNodeValue *)self nameCode])
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v7 = PLErrorCreate();
      if (update)
      {
        v7 = v7;
        *update = v7;
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

+ (void)_debug_assertAllValuesAreOfType:(id)type inCollection:(id)collection
{
  v24 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  collectionCopy = collection;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [collectionCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(collectionCopy);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        if ([typeCopy isEqualToString:@"stringValue"])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_13;
          }

          v12 = 139;
          goto LABEL_19;
        }

        if (([typeCopy isEqualToString:@"integerValue"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"doubleValue") & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"BOOLValue"))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_13;
          }

          v12 = 141;
          goto LABEL_19;
        }

        if ([typeCopy isEqualToString:@"dateValue"])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v12 = 143;
LABEL_19:
            v16 = v12;
            [MEMORY[0x1E696AAA8] currentHandler];
            v13 = v15 = v11;
            [v13 handleFailureInMethod:a2 object:self file:@"PLGraphNodeValue.m" lineNumber:v16 description:{@"%@ is not of the type %@", v15, typeCopy}];
          }
        }

LABEL_13:
        ++v10;
      }

      while (v8 != v10);
      v14 = [collectionCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
      v8 = v14;
    }

    while (v14);
  }
}

+ (id)fetchGraphNodeValuesWithCode:(int)code andValues:(id)values forValueType:(id)type inContext:(id)context prefetchNode:(BOOL)node
{
  nodeCopy = node;
  v10 = *&code;
  v37[2] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  contextCopy = context;
  v13 = MEMORY[0x1E695D5E0];
  valuesCopy = values;
  v15 = +[PLGraphNodeValue entityName];
  v16 = [v13 fetchRequestWithEntityName:v15];

  v17 = MEMORY[0x1E696AB28];
  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"nameCode", v10];
  v37[0] = v18;
  valuesCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", typeCopy, valuesCopy];

  v37[1] = valuesCopy;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v21 = [v17 andPredicateWithSubpredicates:v20];
  [v16 setPredicate:v21];

  v36[0] = @"nameCode";
  v36[1] = typeCopy;
  v36[2] = @"node";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
  [v16 setPropertiesToFetch:v22];

  if (nodeCopy)
  {
    v35[0] = @"nameCode";
    v35[1] = typeCopy;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    [v16 setPropertiesToFetch:v23];

    v34 = @"node";
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    [v16 setRelationshipKeyPathsForPrefetching:v24];
  }

  v29 = 0;
  v25 = [contextCopy executeFetchRequest:v16 error:&v29];
  v26 = v29;
  if (!v25)
  {
    v27 = PLBackendGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v31 = contextCopy;
      v32 = 2112;
      v33 = v26;
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Failed to fetch graph node values for context %@ (ERROR: %@)", buf, 0x16u);
    }
  }

  return v25;
}

@end