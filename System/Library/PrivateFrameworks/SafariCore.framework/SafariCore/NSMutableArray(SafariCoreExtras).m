@interface NSMutableArray(SafariCoreExtras)
- (id)safari_popLastObject;
- (id)safari_takeFirstObject;
- (void)safari_addObjectUnlessNil:()SafariCoreExtras;
- (void)safari_addObjectsFromArrayUnlessNil:()SafariCoreExtras;
- (void)safari_insertObject:()SafariCoreExtras afterObject:;
- (void)safari_insertObject:()SafariCoreExtras inSortedOrderUsingComparator:;
- (void)safari_insertObjects:()SafariCoreExtras afterObject:;
- (void)safari_removeObjectsAtIndexes:()SafariCoreExtras withOffset:startingAtIndex:;
- (void)safari_removeObjectsPassingTest:()SafariCoreExtras;
- (void)safari_setObject:()SafariCoreExtras atIndex:withPaddingObject:;
@end

@implementation NSMutableArray(SafariCoreExtras)

- (void)safari_addObjectUnlessNil:()SafariCoreExtras
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

- (void)safari_addObjectsFromArrayUnlessNil:()SafariCoreExtras
{
  if (a3)
  {
    return [a1 addObjectsFromArray:?];
  }

  return a1;
}

- (void)safari_setObject:()SafariCoreExtras atIndex:withPaddingObject:
{
  v12 = a3;
  v8 = a5;
  v9 = [a1 count];
  if (v9 < a4)
  {
    v10 = v9;
    do
    {
      [a1 setObject:v8 atIndexedSubscript:v10++];
    }

    while (a4 != v10);
  }

  if (v12)
  {
    v11 = v12;
  }

  else
  {
    v11 = v8;
  }

  [a1 setObject:v11 atIndexedSubscript:a4];
}

- (void)safari_removeObjectsPassingTest:()SafariCoreExtras
{
  v2 = [a1 indexesOfObjectsPassingTest:?];
  [a1 removeObjectsAtIndexes:v2];
}

- (void)safari_removeObjectsAtIndexes:()SafariCoreExtras withOffset:startingAtIndex:
{
  v8 = a3;
  if (v8)
  {
    v11 = v8;
    v9 = [a1 count] > a5;
    v8 = v11;
    if (v9)
    {
      v10 = [v11 mutableCopy];
      [v10 shiftIndexesStartingAtIndex:a5 by:a4];
      [a1 removeObjectsAtIndexes:v10];

      v8 = v11;
    }
  }
}

- (void)safari_insertObject:()SafariCoreExtras afterObject:
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v11 count:1];

  [a1 safari_insertObjects:v9 afterObject:{v7, v11, v12}];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)safari_insertObjects:()SafariCoreExtras afterObject:
{
  v10 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [a1 indexOfObject:v6];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_6;
    }

    v8 = v7 + 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{v8, objc_msgSend(v10, "count")}];
  [a1 insertObjects:v10 atIndexes:v9];

LABEL_6:
}

- (void)safari_insertObject:()SafariCoreExtras inSortedOrderUsingComparator:
{
  v6 = a4;
  v8 = a3;
  v7 = [a1 indexOfObject:v8 inSortedRange:0 options:objc_msgSend(a1 usingComparator:{"count"), 1024, v6}];

  [a1 insertObject:v8 atIndex:v7];
}

- (id)safari_takeFirstObject
{
  v2 = [a1 firstObject];
  if ([a1 count])
  {
    [a1 removeObjectAtIndex:0];
  }

  return v2;
}

- (id)safari_popLastObject
{
  v2 = [a1 lastObject];
  if (v2)
  {
    [a1 removeLastObject];
  }

  return v2;
}

@end