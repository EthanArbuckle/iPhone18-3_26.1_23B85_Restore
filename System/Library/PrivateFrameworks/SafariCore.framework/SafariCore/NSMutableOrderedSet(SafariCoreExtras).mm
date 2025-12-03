@interface NSMutableOrderedSet(SafariCoreExtras)
- (BOOL)safari_containsObjectPassingTest:()SafariCoreExtras;
- (BOOL)safari_isSortedInAscendingOrDescendingOrderUsingComparator:()SafariCoreExtras;
- (void)safari_insertObject:()SafariCoreExtras inSortedOrderUsingComparator:;
@end

@implementation NSMutableOrderedSet(SafariCoreExtras)

- (void)safari_insertObject:()SafariCoreExtras inSortedOrderUsingComparator:
{
  v13 = a3;
  v6 = a4;
  v7 = [self count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    while (1)
    {
      v10 = (v9 + v8) >> 1;
      v11 = [self objectAtIndex:v10];
      v12 = v6[2](v6, v11, v13);

      switch(v12)
      {
        case -1:
          v9 = v10 + 1;
          break;
        case 1:
          v8 = (v9 + v8) >> 1;
          break;
        case 0:
          v9 = v10 + 1;
          goto LABEL_12;
      }

      if (v9 >= v8)
      {
        goto LABEL_12;
      }
    }
  }

  v9 = 0;
LABEL_12:
  [self insertObject:v13 atIndex:v9];
}

- (BOOL)safari_isSortedInAscendingOrDescendingOrderUsingComparator:()SafariCoreExtras
{
  v4 = a3;
  v5 = [self count];
  if (v5 >= 3)
  {
    v7 = v5;
    v8 = [self objectAtIndex:1];
    v9 = [self objectAtIndex:0];
    v10 = v4[2](v4, v9, v8);
    v11 = v8;

    v12 = [self objectAtIndex:2];

    if (v4[2](v4, v11, v12) == v10)
    {
      v13 = 3;
      while (1)
      {
        v14 = v13;
        if (v7 == v13)
        {
          break;
        }

        v15 = v12;

        v12 = [self objectAtIndex:v14];

        v16 = v4[2](v4, v15, v12);
        v13 = v14 + 1;
        v11 = v15;
        if (v16 != v10)
        {
          goto LABEL_10;
        }
      }

      v15 = v11;
LABEL_10:
      v6 = v14 >= v7;
      v11 = v15;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)safari_containsObjectPassingTest:()SafariCoreExtras
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__NSMutableOrderedSet_SafariCoreExtras__safari_containsObjectPassingTest___block_invoke;
  v8[3] = &unk_1E7CF24F0;
  v9 = v4;
  v5 = v4;
  v6 = [self indexOfObjectPassingTest:v8] != 0x7FFFFFFFFFFFFFFFLL;

  return v6;
}

@end