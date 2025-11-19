@interface NSArray(TSUAdditions)
+ (id)arrayWithCGFloats:()TSUAdditions count:;
+ (id)arrayWithInts:()TSUAdditions count:;
- (id)tsu_arrayByMappingObjectsUsingBlock:()TSUAdditions;
- (id)tsu_mutableArrayByMakingObjectsPerformSelector:()TSUAdditions;
- (uint64_t)initWithCGFloats:()TSUAdditions count:;
- (uint64_t)initWithInts:()TSUAdditions count:;
- (uint64_t)tsu_arrayByTransformingWithBlock:()TSUAdditions;
- (uint64_t)tsu_arrayOfObjectsAtIndexes:()TSUAdditions options:passingTest:;
- (uint64_t)tsu_arrayOfObjectsPassingTest:()TSUAdditions;
- (uint64_t)tsu_firstObjectPassingTest:()TSUAdditions;
- (uint64_t)tsu_indexOfSmallestObject;
- (uint64_t)tsu_makeObjectsPerformSelector:()TSUAdditions withObject:withObject:;
- (uint64_t)tsu_makeObjectsPerformSelectorIfImplemented:()TSUAdditions;
- (uint64_t)tsu_makeObjectsPerformSelectorIfImplemented:()TSUAdditions withObject:;
- (uint64_t)tsu_objectAfterObjectIdenticalTo:()TSUAdditions;
- (uint64_t)tsu_objectBeforeObjectIdenticalTo:()TSUAdditions;
- (void)tsu_arrayByFlattening;
- (void)tsu_arrayByRemovingObjectsIdenticalToObjectsInArray:()TSUAdditions;
- (void)tsu_arrayByRemovingObjectsInArray:()TSUAdditions;
- (void)tsu_arrayByReversingOrder;
- (void)tsu_arrayWithObjectsInSet:()TSUAdditions;
- (void)tsu_enumerateSnapshotObjectsUsingBlock:()TSUAdditions;
- (void)tsu_indexesOfObjects:()TSUAdditions;
- (void)tsu_intersectionWithArray:()TSUAdditions;
- (void)tsu_map:()TSUAdditions;
@end

@implementation NSArray(TSUAdditions)

- (uint64_t)initWithCGFloats:()TSUAdditions count:
{
  v12 = *MEMORY[0x277D85DE8];
  if (count < 0x11)
  {
    if (!count)
    {
      return [a1 initWithObjects:v11 count:0];
    }

    v7 = v11;
LABEL_5:
    v8 = 0;
    do
    {
      *&v7[8 * v8] = [MEMORY[0x277CCABB0] numberWithDouble:*(a3 + 8 * v8)];
      ++v8;
    }

    while (count != v8);
    v9 = [a1 initWithObjects:v7 count:count];
    if (v7 != v11)
    {
      free(v7);
    }

    return v9;
  }

  v7 = malloc_type_calloc(count, 8uLL, 0x80040B8603338uLL);
  if (v7)
  {
    goto LABEL_5;
  }

  return [a1 initWithObjects:0 count:count];
}

+ (id)arrayWithCGFloats:()TSUAdditions count:
{
  v4 = [[a1 alloc] initWithCGFloats:a3 count:a4];

  return v4;
}

- (uint64_t)initWithInts:()TSUAdditions count:
{
  v12 = *MEMORY[0x277D85DE8];
  if (count < 0x11)
  {
    if (!count)
    {
      return [a1 initWithObjects:v11 count:0];
    }

    v7 = v11;
LABEL_5:
    v8 = 0;
    do
    {
      *&v7[8 * v8] = [MEMORY[0x277CCABB0] numberWithInt:*(a3 + 4 * v8)];
      ++v8;
    }

    while (count != v8);
    v9 = [a1 initWithObjects:v7 count:count];
    if (v7 != v11)
    {
      free(v7);
    }

    return v9;
  }

  v7 = malloc_type_calloc(count, 8uLL, 0x80040B8603338uLL);
  if (v7)
  {
    goto LABEL_5;
  }

  return [a1 initWithObjects:0 count:count];
}

+ (id)arrayWithInts:()TSUAdditions count:
{
  v4 = [[a1 alloc] initWithInts:a3 count:a4];

  return v4;
}

- (uint64_t)tsu_objectBeforeObjectIdenticalTo:()TSUAdditions
{
  v2 = [a1 indexOfObjectIdenticalTo:?];
  if (!v2 || v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [a1 objectAtIndex:v2 - 1];
}

- (uint64_t)tsu_objectAfterObjectIdenticalTo:()TSUAdditions
{
  v2 = [a1 indexOfObjectIdenticalTo:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v3 = v2 + 1;
  if (v2 + 1 >= [a1 count])
  {
    return 0;
  }

  return [a1 objectAtIndex:v3];
}

- (uint64_t)tsu_indexOfSmallestObject
{
  v2 = [a1 count];
  if (!v2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = v2;
  v4 = 0;
  v5 = 0;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v7 = [a1 objectAtIndex:v4];
    v8 = v7;
    if (!v5 || [v7 compare:v5] == -1)
    {
      v5 = v8;
      v6 = v4;
    }

    ++v4;
  }

  while (v3 != v4);
  return v6;
}

- (void)tsu_indexesOfObjects:()TSUAdditions
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAB58] indexSet];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = [a1 indexOfObject:*(*(&v12 + 1) + 8 * v9)];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v5 addIndex:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

- (uint64_t)tsu_makeObjectsPerformSelector:()TSUAdditions withObject:withObject:
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  result = [a1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v10 = result;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(a1);
        }

        [*(*(&v13 + 1) + 8 * v12++) performSelector:a3 withObject:a4 withObject:a5];
      }

      while (v10 != v12);
      result = [a1 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v10 = result;
    }

    while (result);
  }

  return result;
}

- (uint64_t)tsu_makeObjectsPerformSelectorIfImplemented:()TSUAdditions withObject:
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(a1);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 performSelector:a3 withObject:a4];
        }

        ++v10;
      }

      while (v8 != v10);
      result = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v8 = result;
    }

    while (result);
  }

  return result;
}

- (uint64_t)tsu_makeObjectsPerformSelectorIfImplemented:()TSUAdditions
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a1);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 performSelector:a3];
        }

        ++v8;
      }

      while (v6 != v8);
      result = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

- (void)tsu_arrayWithObjectsInSet:()TSUAdditions
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  if (a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(a1);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([a3 containsObject:v10])
          {
            [v5 addObject:v10];
          }
        }

        v7 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v5;
}

- (void)tsu_intersectionWithArray:()TSUAdditions
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  if (a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(a1);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([a3 indexOfObject:v10] != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v5 addObject:v10];
          }
        }

        v7 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v5;
}

- (void)tsu_arrayByRemovingObjectsInArray:()TSUAdditions
{
  v4 = [MEMORY[0x277CBEB18] arrayWithArray:a1];
  [v4 removeObjectsInArray:a3];
  return v4;
}

- (void)tsu_arrayByRemovingObjectsIdenticalToObjectsInArray:()TSUAdditions
{
  v5 = [a3 count];
  if (!v5)
  {
    return a1;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = a1;
  do
  {
    v10 = [a3 objectAtIndex:v7];
    v11 = [v9 indexOfObjectIdenticalTo:v10];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v11; i != 0x7FFFFFFFFFFFFFFFLL; i = [v9 indexOfObjectIdenticalTo:v10])
      {
        if (!v8)
        {
          v8 = [MEMORY[0x277CBEB18] arrayWithArray:a1];
          v9 = v8;
        }

        [v8 removeObjectAtIndex:i];
      }
    }

    ++v7;
  }

  while (v7 != v6);
  return v9;
}

- (void)tsu_arrayByReversingOrder
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a1 reverseObjectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 addObject:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)tsu_mutableArrayByMakingObjectsPerformSelector:()TSUAdditions
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithResultsOfPerformingSelector:a3 onObjectsFromArray:a1];

  return v3;
}

- (void)tsu_map:()TSUAdditions
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a1);
        }

        v10 = (*(a3 + 16))(a3, *(*(&v12 + 1) + 8 * v9));
        if (v10)
        {
          [v5 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

- (void)tsu_enumerateSnapshotObjectsUsingBlock:()TSUAdditions
{
  v4 = [a1 copy];
  [v4 enumerateObjectsUsingBlock:a3];
}

- (uint64_t)tsu_firstObjectPassingTest:()TSUAdditions
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_4:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(a1);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ((*(a3 + 16))(a3, v9))
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 0;
      if (v6)
      {
        goto LABEL_4;
      }

      return v9;
    }
  }
}

- (uint64_t)tsu_arrayOfObjectsPassingTest:()TSUAdditions
{
  v2 = [a1 indexesOfObjectsPassingTest:?];

  return [a1 objectsAtIndexes:v2];
}

- (id)tsu_arrayByMappingObjectsUsingBlock:()TSUAdditions
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a1 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(a1);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = (*(a3 + 16))(a3, v10);
        if (v11)
        {
          [v5 addObject:v11];
        }

        else
        {
          v12 = +[TSUAssertionHandler currentHandler];
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSArray(TSUAdditions) tsu_arrayByMappingObjectsUsingBlock:]"];
          [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/NSArrayAdditions.m"), 293, @"Block returned a nil object for %@.", v10}];
        }
      }

      v7 = [a1 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return [v5 copy];
}

- (uint64_t)tsu_arrayOfObjectsAtIndexes:()TSUAdditions options:passingTest:
{
  v2 = [a1 indexesOfObjectsAtIndexes:? options:? passingTest:?];

  return [a1 objectsAtIndexes:v2];
}

- (uint64_t)tsu_arrayByTransformingWithBlock:()TSUAdditions
{
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__NSArray_TSUAdditions__tsu_arrayByTransformingWithBlock___block_invoke;
  v7[3] = &unk_279D66010;
  v7[4] = v5;
  v7[5] = a3;
  [a1 enumerateObjectsUsingBlock:v7];
  return v5;
}

- (void)tsu_arrayByFlattening
{
  v2 = [MEMORY[0x277CBEB18] array];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3052000000;
  v5[3] = __Block_byref_object_copy__0;
  v5[4] = __Block_byref_object_dispose__0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__NSArray_TSUAdditions__tsu_arrayByFlattening__block_invoke;
  v4[3] = &unk_279D66038;
  v4[4] = v5;
  v5[5] = v4;
  __46__NSArray_TSUAdditions__tsu_arrayByFlattening__block_invoke(v4, a1, v2);
  _Block_object_dispose(v5, 8);
  return v2;
}

@end