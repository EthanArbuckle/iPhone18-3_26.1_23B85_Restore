@interface NSManagedObjectContext(MTAdditions)
- (BOOL)hasAnyObjectsInEntity:()MTAdditions satisfyingPredicate:;
- (id)_objectsInEntity:()MTAdditions predicate:sortDescriptors:resultType:returnsObjectsAsFaults:limit:propertiesToFetch:batchSize:;
- (id)executeFetchRequest:()MTAdditions;
- (id)objectDictionariesInEntity:()MTAdditions predicate:sortDescriptors:propertiesToFetch:includeObjectId:limit:distinct:groupBy:;
- (id)objectDictionaryForUuid:()MTAdditions entityName:byAddingComputedProperties:toFetchedObjectDictionary:;
- (id)objectDictionaryForUuid:()MTAdditions propertiesToFetch:entityName:;
- (id)objectForUuid:()MTAdditions entityName:returnsObjectAsFault:;
- (id)objectInEntity:()MTAdditions predicate:;
- (id)titlesOfObjectsInEntity:()MTAdditions predicate:;
- (id)valueForProperty:()MTAdditions objectUuid:entityName:;
- (uint64_t)countOfObjectsInEntity:()MTAdditions predicate:;
- (uint64_t)saveInCurrentBlock;
- (void)batchDeleteObjectsInEntity:()MTAdditions predicate:;
- (void)performBlockAndWaitWithSave:()MTAdditions;
@end

@implementation NSManagedObjectContext(MTAdditions)

- (uint64_t)saveInCurrentBlock
{
  if (![a1 hasChanges])
  {
    v4 = 0;
    goto LABEL_5;
  }

  v7 = 0;
  v2 = [a1 save:&v7];
  v3 = v7;
  v4 = v3;
  if (v2)
  {
LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  [v3 logAndThrow:1 printStackTrace:1];
  v5 = 0;
LABEL_6:

  return v5;
}

- (void)performBlockAndWaitWithSave:()MTAdditions
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__NSManagedObjectContext_MTAdditions__performBlockAndWaitWithSave___block_invoke;
  v6[3] = &unk_1E8569228;
  v6[4] = a1;
  v7 = v4;
  v5 = v4;
  [a1 performBlockAndWait:v6];
}

- (id)executeFetchRequest:()MTAdditions
{
  v7 = 0;
  v3 = [a1 executeFetchRequest:a3 error:&v7];
  v4 = v7;
  v5 = v4;
  if (v4)
  {
    [v4 logAndThrow:1];
  }

  return v3;
}

- (id)objectInEntity:()MTAdditions predicate:
{
  v4 = [a1 _objectsInEntity:a3 predicate:a4 sortDescriptors:MEMORY[0x1E695E0F0] resultType:0 returnsObjectsAsFaults:0 limit:1];
  v5 = [v4 firstObject];

  return v5;
}

- (id)objectForUuid:()MTAdditions entityName:returnsObjectAsFault:
{
  v8 = MEMORY[0x1E695D5E0];
  v9 = a3;
  v10 = [v8 fetchRequestWithEntityName:a4];
  v11 = [a1 _predicateForUuid:v9];

  [v10 setPredicate:v11];
  [v10 setReturnsObjectsAsFaults:a5];
  [v10 setFetchLimit:1];
  v16 = 0;
  v12 = [a1 executeFetchRequest:v10 error:&v16];
  v13 = v16;
  v14 = [v12 firstObject];

  [v13 logAndThrow:0];

  return v14;
}

- (id)_objectsInEntity:()MTAdditions predicate:sortDescriptors:resultType:returnsObjectsAsFaults:limit:propertiesToFetch:batchSize:
{
  v15 = a5;
  v16 = a9;
  v17 = MEMORY[0x1E695D5E0];
  v18 = a4;
  v19 = a3;
  v20 = [[v17 alloc] initWithEntityName:v19];

  [v20 setPredicate:v18];
  [v20 setResultType:a6];
  if (v15)
  {
    [v20 setSortDescriptors:v15];
  }

  else
  {
    v21 = [MEMORY[0x1E695DEC8] array];
    [v20 setSortDescriptors:v21];
  }

  [v20 setFetchLimit:a8];
  [v20 setFetchBatchSize:a10];
  if ([v16 count])
  {
    [v20 setPropertiesToFetch:v16];
  }

  if (!a6)
  {
    [v20 setReturnsObjectsAsFaults:a7];
  }

  v27 = 0;
  v22 = [a1 executeFetchRequest:v20 error:&v27];
  v23 = v27;
  v24 = v23;
  if (!v22)
  {
    [v23 logAndThrow:1];
  }

  return v22;
}

- (id)objectDictionariesInEntity:()MTAdditions predicate:sortDescriptors:propertiesToFetch:includeObjectId:limit:distinct:groupBy:
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a10;
  if (a7)
  {
    v21 = objc_opt_new();
    [v21 setName:@"objectID"];
    v22 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
    [v21 setExpression:v22];

    [v21 setExpressionResultType:2000];
    v23 = [v19 arrayByAddingObject:v21];

    v19 = v23;
  }

  v24 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:v16];
  [v24 setPredicate:v17];
  if (v18)
  {
    v25 = v18;
  }

  else
  {
    v25 = MEMORY[0x1E695E0F0];
  }

  [v24 setSortDescriptors:v25];
  [v24 setPropertiesToFetch:v19];
  [v24 setFetchLimit:a8];
  [v24 setResultType:2];
  [v24 setReturnsDistinctResults:a9];
  if (v20)
  {
    [v24 setPropertiesToGroupBy:v20];
  }

  v30 = 0;
  v26 = [a1 executeFetchRequest:v24 error:&v30];
  v27 = v30;
  v28 = v27;
  if (!v26)
  {
    [v27 logAndThrow:1];
  }

  return v26;
}

- (id)objectDictionaryForUuid:()MTAdditions propertiesToFetch:entityName:
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 _predicateForUuid:a3];
  v11 = [a1 objectDictionariesInEntity:v8 predicate:v10 sortDescriptors:0 propertiesToFetch:v9 includeObjectId:0];

  v12 = [v11 lastObject];

  return v12;
}

- (id)valueForProperty:()MTAdditions objectUuid:entityName:
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 length] && objc_msgSend(v9, "length"))
  {
    v16[0] = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v12 = [a1 objectDictionaryForUuid:v9 propertiesToFetch:v11 entityName:v10];

    v13 = [v12 objectForKeyedSubscript:v8];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)objectDictionaryForUuid:()MTAdditions entityName:byAddingComputedProperties:toFetchedObjectDictionary:
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v25 = a4;
  v11 = a5;
  v27 = a6;
  if (![v10 length])
  {
    v12 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8CEC000, v12, OS_LOG_TYPE_ERROR, "Episode Uuid expected but is missing", buf, 2u);
    }
  }

  if ([v10 length] && objc_msgSend(v11, "count"))
  {
    v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v11, "count")}];
    v14 = [a1 objectForUuid:v10 entityName:v26];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v16)
    {
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          v20 = [v14 valueForKeyPath:v19];
          if (v20)
          {
            [v13 setObject:v20 forKey:v19];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v16);
    }

    if ([v13 count])
    {
      v21 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v13, "count") + objc_msgSend(v27, "count")}];
      [v21 addEntriesFromDictionary:v27];
      [v21 addEntriesFromDictionary:v13];
    }

    else
    {
      v21 = v27;
    }

    v22 = v27;
  }

  else
  {
    v22 = v27;
    v21 = v27;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

- (uint64_t)countOfObjectsInEntity:()MTAdditions predicate:
{
  v6 = MEMORY[0x1E695D5E0];
  v7 = a4;
  v8 = [v6 fetchRequestWithEntityName:a3];
  [v8 setPredicate:v7];

  [v8 setReturnsDistinctResults:1];
  [v8 setPropertiesToFetch:&unk_1F54BE0A8];
  v12 = 0;
  v9 = [a1 countForFetchRequest:v8 error:&v12];
  v10 = v12;
  [v10 logAndThrow:1];

  return v9;
}

- (BOOL)hasAnyObjectsInEntity:()MTAdditions satisfyingPredicate:
{
  v6 = MEMORY[0x1E695D5E0];
  v7 = a4;
  v8 = [v6 fetchRequestWithEntityName:a3];
  [v8 setIncludesPropertyValues:0];
  [v8 setIncludesSubentities:0];
  [v8 setFetchLimit:1];
  [v8 setPredicate:v7];

  v12 = 0;
  v9 = [a1 countForFetchRequest:v8 error:&v12];
  v10 = v12;
  [v10 logAndThrow:1];

  return v9 != 0;
}

- (id)titlesOfObjectsInEntity:()MTAdditions predicate:
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v6];
  [v8 setPredicate:v7];
  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"pubDate" ascending:0];
  v24[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  [v8 setSortDescriptors:v10];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2;
  v22 = __Block_byref_object_dispose__2;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__NSManagedObjectContext_MTAdditions__titlesOfObjectsInEntity_predicate___block_invoke;
  v15[3] = &unk_1E856A0A0;
  v17 = &v18;
  v15[4] = a1;
  v11 = v8;
  v16 = v11;
  [a1 performBlockAndWait:v15];
  v12 = v19[5];

  _Block_object_dispose(&v18, 8);
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)batchDeleteObjectsInEntity:()MTAdditions predicate:
{
  v6 = MEMORY[0x1E695D5E0];
  v7 = a4;
  v8 = a3;
  v11 = [[v6 alloc] initWithEntityName:v8];

  [v11 setPredicate:v7];
  v9 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v11];
  v10 = [a1 executeRequest:v9 error:0];
}

@end