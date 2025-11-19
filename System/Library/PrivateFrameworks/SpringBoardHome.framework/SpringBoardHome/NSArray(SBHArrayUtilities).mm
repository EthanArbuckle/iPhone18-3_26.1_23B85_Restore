@interface NSArray(SBHArrayUtilities)
- (BOOL)sbh_containsObjectInArray:()SBHArrayUtilities;
- (id)sbh_arrayByRemovingObject:()SBHArrayUtilities;
- (id)sbh_arrayByRemovingObjectsFromArray:()SBHArrayUtilities;
- (uint64_t)sbh_containsAllObjectsInArray:()SBHArrayUtilities;
@end

@implementation NSArray(SBHArrayUtilities)

- (BOOL)sbh_containsObjectInArray:()SBHArrayUtilities
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__NSArray_SBHArrayUtilities__sbh_containsObjectInArray___block_invoke;
  v4[3] = &unk_1E808A8A8;
  v4[4] = a1;
  return [a3 indexOfObjectPassingTest:v4] != 0x7FFFFFFFFFFFFFFFLL;
}

- (uint64_t)sbh_containsAllObjectsInArray:()SBHArrayUtilities
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 count];
  if (v5 >= [v4 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if (![a1 containsObject:{*(*(&v13 + 1) + 8 * v11), v13}])
          {
            v6 = 0;
            goto LABEL_13;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 1;
LABEL_13:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)sbh_arrayByRemovingObject:()SBHArrayUtilities
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 removeObject:v4];

  return v5;
}

- (id)sbh_arrayByRemovingObjectsFromArray:()SBHArrayUtilities
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 removeObjectsInArray:v4];

  return v5;
}

@end