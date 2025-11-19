@interface NSArray(VK)
+ (id)vk_arrayFromNonNilObject:()VK;
+ (void)heapsAlgorithm:()VK k:result:;
- (BOOL)vk_containsObjectPassingTest:()VK;
- (id)vk_arrayByAddingNonNilObject:()VK;
- (id)vk_arrayByAddingObjectsFromNonNilArray:()VK;
- (id)vk_arrayByGroupingIntoArraysWithMaxCount:()VK;
- (id)vk_arrayFromReplacingObject:()VK withObject:;
- (id)vk_compactMap:()VK;
- (id)vk_firstObjectOfClass:()VK;
- (id)vk_flatMap:()VK;
- (id)vk_generateAllPermutations;
- (id)vk_map:()VK;
- (id)vk_objectAfter:()VK wrap:;
- (id)vk_objectBefore:()VK wrap:;
- (id)vk_objectPassingTest:()VK;
- (id)vk_objectsConformingToProtocol:()VK;
- (id)vk_objectsOfClass:()VK;
- (id)vk_objectsPassingTest:()VK;
- (id)vk_randomObject;
- (id)vk_randomizedArray;
- (id)vk_safeObjectAtIndex:()VK;
- (uint64_t)vk_countOfObjectsPassingTest:()VK;
- (unint64_t)vk_indexOfSortedObject:()VK insertionIndex:usingComparator:;
@end

@implementation NSArray(VK)

+ (id)vk_arrayFromNonNilObject:()VK
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7[0] = a3;
    v3 = MEMORY[0x1E695DEC8];
    v4 = a3;
    v5 = [v3 arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)vk_randomObject
{
  v2 = [a1 count];
  if (v2)
  {
    v2 = [a1 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(a1, "count"))}];
  }

  return v2;
}

- (id)vk_randomizedArray
{
  v1 = [a1 mutableCopy];
  [v1 vk_randomize];
  v2 = [v1 copy];

  return v2;
}

- (id)vk_generateAllPermutations
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [a1 mutableCopy];
  [objc_opt_class() heapsAlgorithm:v3 k:objc_msgSend(v3 result:{"count"), v2}];
  v4 = [v2 copy];

  return v4;
}

+ (void)heapsAlgorithm:()VK k:result:
{
  v12 = a3;
  v8 = a5;
  if (a4 == 1)
  {
    v9 = [v12 copy];
    [v8 addObject:v9];
  }

  else if (a4 >= 1)
  {
    v10 = 0;
    do
    {
      [a1 heapsAlgorithm:v12 k:a4 - 1 result:v8];
      if (a4)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      [v12 exchangeObjectAtIndex:v11 withObjectAtIndex:a4 - 1];
      ++v10;
    }

    while (a4 != v10);
  }
}

- (id)vk_objectPassingTest:()VK
{
  v2 = [a1 indexOfObjectPassingTest:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [a1 objectAtIndex:v2];
  }

  return v3;
}

- (uint64_t)vk_countOfObjectsPassingTest:()VK
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v14;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v14 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v9 += v4[2](v4, *(*(&v13 + 1) + 8 * v11), v8, &v17);
      if (v17)
      {
        break;
      }

      ++v8;
      if (v7 == ++v11)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)vk_arrayFromReplacingObject:()VK withObject:
{
  v6 = a4;
  v7 = a1;
  v8 = [v7 indexOfObject:a3];
  if (v6)
  {
    v9 = v8;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [v7 mutableCopy];
      [v10 replaceObjectAtIndex:v9 withObject:v6];
      v11 = [v10 copy];

      v7 = v11;
    }
  }

  else
  {
    [VKAssert handleFailedAssertWithCondition:"newObject" functionName:"[NSArray(VK) vk_arrayFromReplacingObject:withObject:]" simulateCrash:0 showAlert:0 format:@"vk_arrayFromReplacingObject, Trying to replace an object with nil."];
  }

  return v7;
}

- (BOOL)vk_containsObjectPassingTest:()VK
{
  v1 = [a1 vk_objectPassingTest:?];
  v2 = v1 != 0;

  return v2;
}

- (id)vk_objectsPassingTest:()VK
{
  v2 = [a1 indexesOfObjectsPassingTest:?];
  v3 = [a1 objectsAtIndexes:v2];

  return v3;
}

- (id)vk_objectsOfClass:()VK
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__NSArray_VK__vk_objectsOfClass___block_invoke;
  v5[3] = &__block_descriptor_40_e15_B32__0_8Q16_B24lu32l8;
  v5[4] = a3;
  v3 = [a1 vk_objectsPassingTest:v5];

  return v3;
}

- (id)vk_firstObjectOfClass:()VK
{
  v1 = [a1 vk_objectsOfClass:?];
  v2 = [v1 firstObject];

  return v2;
}

- (id)vk_safeObjectAtIndex:()VK
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    if ([a1 count] <= a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = [a1 objectAtIndexedSubscript:a3];
    }
  }

  return v6;
}

- (id)vk_objectsConformingToProtocol:()VK
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__NSArray_VK__vk_objectsConformingToProtocol___block_invoke;
  v8[3] = &unk_1E7BE6F08;
  v9 = v4;
  v5 = v4;
  v6 = [a1 vk_objectsPassingTest:v8];

  return v6;
}

- (id)vk_arrayByGroupingIntoArraysWithMaxCount:()VK
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v9 count];
        if (!v9 || v13 >= a3)
        {
          v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:a3];

          [v5 addObject:v14];
          v9 = v14;
        }

        [v9 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v5;
}

- (unint64_t)vk_indexOfSortedObject:()VK insertionIndex:usingComparator:
{
  v8 = a3;
  v9 = a5;
  v10 = [a1 indexOfObject:v8 inSortedRange:0 options:objc_msgSend(a1 usingComparator:{"count"), 1280, v9}];

  if (a4)
  {
    *a4 = v10;
  }

  if (v10 >= [a1 count] || (objc_msgSend(a1, "objectAtIndexedSubscript:", v10), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", v8), v11, (v12 & 1) == 0))
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (id)vk_objectBefore:()VK wrap:
{
  v6 = [a1 indexOfObject:?];
  v7 = 0;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = a4;
  }

  if (v6 != 0x7FFFFFFFFFFFFFFFLL && v8)
  {
    v7 = [a1 objectAtIndexedSubscript:{(v6 + objc_msgSend(a1, "count") - 1) % objc_msgSend(a1, "count")}];
  }

  return v7;
}

- (id)vk_objectAfter:()VK wrap:
{
  v6 = [a1 indexOfObject:?];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || (v8 = v6, (a4 & 1) == 0) && v6 == [a1 count] - 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [a1 objectAtIndexedSubscript:{(v8 + 1) % objc_msgSend(a1, "count")}];
  }

  return v7;
}

- (id)vk_arrayByAddingNonNilObject:()VK
{
  v4 = a1;
  v5 = v4;
  if (a3)
  {
    v6 = [v4 arrayByAddingObject:a3];

    v5 = v6;
  }

  return v5;
}

- (id)vk_arrayByAddingObjectsFromNonNilArray:()VK
{
  v4 = a1;
  v5 = v4;
  if (a3)
  {
    v6 = [v4 arrayByAddingObjectsFromArray:a3];

    v5 = v6;
  }

  return v5;
}

- (id)vk_compactMap:()VK
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 count];
  if (v5 == 1)
  {
    v6 = [a1 firstObject];
    v7 = v4[2](v4, v6, 0, 1);

    if (v7)
    {
      v16[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v9 = v5;
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __29__NSArray_VK__vk_compactMap___block_invoke;
    v12[3] = &unk_1E7BE6F30;
    v14 = v4;
    v15 = v9;
    v13 = v10;
    v7 = v10;
    [a1 enumerateObjectsUsingBlock:v12];
    v8 = [v7 copy];
  }

  return v8;
}

- (id)vk_map:()VK
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 count];
  if (v5 == 1)
  {
    v6 = [a1 firstObject];
    v7 = v4[2](v4, v6, 0, 1);
    v16[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  }

  else
  {
    v9 = v5;
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __22__NSArray_VK__vk_map___block_invoke;
    v12[3] = &unk_1E7BE6F30;
    v14 = v4;
    v15 = v9;
    v13 = v10;
    v6 = v10;
    [a1 enumerateObjectsUsingBlock:v12];
    v8 = [v6 copy];

    v7 = v14;
  }

  return v8;
}

- (id)vk_flatMap:()VK
{
  v4 = a3;
  v5 = [a1 count];
  if (v5 == 1)
  {
    v6 = [a1 firstObject];
    v7 = v4[2](v4, v6, 0, 1);
  }

  else
  {
    v8 = v5;
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __26__NSArray_VK__vk_flatMap___block_invoke;
    v11[3] = &unk_1E7BE6F30;
    v13 = v4;
    v14 = v8;
    v12 = v9;
    v6 = v9;
    [a1 enumerateObjectsUsingBlock:v11];
    v7 = [v6 copy];
  }

  return v7;
}

@end