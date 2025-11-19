@interface PLGraphNodeValue
+ (id)fetchGraphNodeValuesWithCode:(int)a3 andValues:(id)a4 forValueType:(id)a5 inContext:(id)a6 prefetchNode:(BOOL)a7;
+ (void)_debug_assertAllValuesAreOfType:(id)a3 inCollection:(id)a4;
- (BOOL)isInsertedDeletedOrChanged;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (BOOL)valueDidChange;
- (int64_t)integerValue;
- (void)setIntegerValue:(int64_t)a3;
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
  v3 = [(PLGraphNodeValue *)self changedValues];
  v4 = [v3 objectForKeyedSubscript:@"stringValue"];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PLGraphNodeValue *)self changedValues];
    v7 = [v6 objectForKeyedSubscript:@"dateValue"];
    if (v7)
    {
      v5 = 1;
    }

    else
    {
      v8 = [(PLGraphNodeValue *)self changedValues];
      v9 = [v8 objectForKeyedSubscript:@"BOOLValue"];
      if (v9)
      {
        v5 = 1;
      }

      else
      {
        v10 = [(PLGraphNodeValue *)self changedValues];
        v11 = [v10 objectForKeyedSubscript:@"integerValue"];
        if (v11)
        {
          v5 = 1;
        }

        else
        {
          v12 = [(PLGraphNodeValue *)self changedValues];
          v13 = [v12 objectForKeyedSubscript:@"doubleValue"];
          v5 = v13 != 0;
        }
      }
    }
  }

  return v5;
}

- (void)setIntegerValue:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(PLManagedObject *)self pl_setValue:v4 forKey:@"integerValue" valueDidChangeHandler:0];
}

- (int64_t)integerValue
{
  [(PLGraphNodeValue *)self willAccessValueForKey:@"integerValue"];
  v3 = [(PLGraphNodeValue *)self primitiveValueForKey:@"integerValue"];
  [(PLGraphNodeValue *)self didAccessValueForKey:@"integerValue"];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)validateForInsert:(id *)a3
{
  v7.receiver = self;
  v7.super_class = PLGraphNodeValue;
  v5 = [(PLGraphNodeValue *)&v7 validateForInsert:?];
  if (v5)
  {
    LOBYTE(v5) = [(PLGraphNodeValue *)self validateForUpdate:a3];
  }

  return v5;
}

- (BOOL)validateForUpdate:(id *)a3
{
  v9.receiver = self;
  v9.super_class = PLGraphNodeValue;
  v5 = [(PLGraphNodeValue *)&v9 validateForUpdate:?];
  if (v5)
  {
    v6 = [(PLGraphNodeValue *)self node];

    if (v6 && [(PLGraphNodeValue *)self nameCode])
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v7 = PLErrorCreate();
      if (a3)
      {
        v7 = v7;
        *a3 = v7;
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

+ (void)_debug_assertAllValuesAreOfType:(id)a3 inCollection:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        if ([v5 isEqualToString:@"stringValue"])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_13;
          }

          v12 = 139;
          goto LABEL_19;
        }

        if (([v5 isEqualToString:@"integerValue"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"doubleValue") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"BOOLValue"))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_13;
          }

          v12 = 141;
          goto LABEL_19;
        }

        if ([v5 isEqualToString:@"dateValue"])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v12 = 143;
LABEL_19:
            v16 = v12;
            [MEMORY[0x1E696AAA8] currentHandler];
            v13 = v15 = v11;
            [v13 handleFailureInMethod:a2 object:a1 file:@"PLGraphNodeValue.m" lineNumber:v16 description:{@"%@ is not of the type %@", v15, v5}];
          }
        }

LABEL_13:
        ++v10;
      }

      while (v8 != v10);
      v14 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v8 = v14;
    }

    while (v14);
  }
}

+ (id)fetchGraphNodeValuesWithCode:(int)a3 andValues:(id)a4 forValueType:(id)a5 inContext:(id)a6 prefetchNode:(BOOL)a7
{
  v7 = a7;
  v10 = *&a3;
  v37[2] = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x1E695D5E0];
  v14 = a4;
  v15 = +[PLGraphNodeValue entityName];
  v16 = [v13 fetchRequestWithEntityName:v15];

  v17 = MEMORY[0x1E696AB28];
  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"nameCode", v10];
  v37[0] = v18;
  v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", v11, v14];

  v37[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v21 = [v17 andPredicateWithSubpredicates:v20];
  [v16 setPredicate:v21];

  v36[0] = @"nameCode";
  v36[1] = v11;
  v36[2] = @"node";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
  [v16 setPropertiesToFetch:v22];

  if (v7)
  {
    v35[0] = @"nameCode";
    v35[1] = v11;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    [v16 setPropertiesToFetch:v23];

    v34 = @"node";
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    [v16 setRelationshipKeyPathsForPrefetching:v24];
  }

  v29 = 0;
  v25 = [v12 executeFetchRequest:v16 error:&v29];
  v26 = v29;
  if (!v25)
  {
    v27 = PLBackendGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v31 = v12;
      v32 = 2112;
      v33 = v26;
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Failed to fetch graph node values for context %@ (ERROR: %@)", buf, 0x16u);
    }
  }

  return v25;
}

@end