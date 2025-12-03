@interface NSArray(PosterFuturesKit)
+ (id)pft_arrayWithObject:()PosterFuturesKit count:;
- (id)pft_arrayByRotatingRange:()PosterFuturesKit by:;
- (id)pft_balancedSlicesWithMaximumCount:()PosterFuturesKit;
- (id)pft_compactMap:()PosterFuturesKit;
- (id)pft_concurrentMap:()PosterFuturesKit;
- (id)pft_distinctObjects;
- (id)pft_filter:()PosterFuturesKit;
- (id)pft_firstObjectPassingTest:()PosterFuturesKit;
- (id)pft_flatMap:()PosterFuturesKit;
- (id)pft_flatten;
- (id)pft_groupBy:()PosterFuturesKit;
- (id)pft_indexBy:()PosterFuturesKit;
- (id)pft_indicesForObjects:()PosterFuturesKit;
- (id)pft_join:()PosterFuturesKit;
- (id)pft_joinWithBlock:()PosterFuturesKit;
- (id)pft_map:()PosterFuturesKit;
- (id)pft_reduce:()PosterFuturesKit;
- (id)pft_reduce:()PosterFuturesKit initialValue:;
- (id)pft_reversed;
- (id)pft_safeSortedArrayUsingComparator:()PosterFuturesKit;
- (id)pft_skip:()PosterFuturesKit;
- (id)pft_skipLast:()PosterFuturesKit;
- (id)pft_slicesWithMaximumCount:()PosterFuturesKit;
- (id)pft_take:()PosterFuturesKit;
- (id)pft_takeLast:()PosterFuturesKit;
- (uint64_t)pft_all:()PosterFuturesKit;
- (uint64_t)pft_any:()PosterFuturesKit;
- (uint64_t)pft_indexOfFirstObjectPassingTest:()PosterFuturesKit;
- (uint64_t)pft_isIdenticalToArray:()PosterFuturesKit;
- (uint64_t)pft_none:()PosterFuturesKit;
- (void)pft_each:()PosterFuturesKit;
- (void)pft_each:()PosterFuturesKit until:;
- (void)pft_each:()PosterFuturesKit untilCancelled:;
- (void)pft_each_reverse:()PosterFuturesKit;
- (void)pft_isNonEmpty;
@end

@implementation NSArray(PosterFuturesKit)

- (void)pft_each:()PosterFuturesKit
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)pft_each:()PosterFuturesKit until:
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v9 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(selfCopy);
      }

      v13 = *(*(&v15 + 1) + 8 * v12);
      if (v7[2](v7))
      {
        break;
      }

      v6[2](v6, v13);
      if (v10 == ++v12)
      {
        v10 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)pft_each:()PosterFuturesKit untilCancelled:
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__NSArray_PosterFuturesKit__pft_each_untilCancelled___block_invoke;
  v8[3] = &unk_279A52DC8;
  v9 = v6;
  v7 = v6;
  [self pft_each:a3 until:v8];
}

- (void)pft_each_reverse:()PosterFuturesKit
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__NSArray_PosterFuturesKit__pft_each_reverse___block_invoke;
  v6[3] = &unk_279A52DF0;
  v7 = v4;
  v5 = v4;
  [self enumerateObjectsWithOptions:2 usingBlock:v6];
}

- (id)pft_join:()PosterFuturesKit
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__NSArray_PosterFuturesKit__pft_join___block_invoke;
    v8[3] = &unk_279A52E18;
    v9 = v4;
    selfCopy = [self pft_joinWithBlock:v8];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)pft_joinWithBlock:()PosterFuturesKit
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__NSArray_PosterFuturesKit__pft_joinWithBlock___block_invoke;
    v9[3] = &unk_279A52E48;
    v10 = v4;
    array = [MEMORY[0x277CBEB18] array];
    selfCopy = [self pft_reduce:v9 initialValue:array];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)pft_map:()PosterFuturesKit
{
  v4 = a3;
  if (self && [self count])
  {
    if ([self count] > 0x80)
    {
      v6 = v4;
      v7 = MEMORY[0x277CBEB18];
      selfCopy = self;
      v9 = [[v7 alloc] initWithCapacity:{objc_msgSend(selfCopy, "count")}];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __PFTArrayMapSlowPath_block_invoke;
      v14[3] = &unk_279A52F88;
      v16 = v6;
      v10 = v9;
      v15 = v10;
      v11 = v6;
      [selfCopy enumerateObjectsUsingBlock:v14];

      v12 = v15;
      v5 = v10;
    }

    else
    {
      v5 = PFTArrayMapFastPath(self, v4);
    }
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (id)pft_concurrentMap:()PosterFuturesKit
{
  v4 = a3;
  if ([self count])
  {
    selfCopy = self;
    v6 = v4;
    v7 = [selfCopy count];
    v8 = malloc_type_calloc(v7, 8uLL, 0x80040B8603338uLL);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __PFTArrayConcurrentMapSlowPath_block_invoke;
    v18 = &unk_279A52FB0;
    v9 = v6;
    v19 = v9;
    v20 = v8;
    [selfCopy enumerateObjectsWithOptions:1 usingBlock:&v15];
    v10 = objc_alloc(MEMORY[0x277CBEA60]);
    v11 = [v10 initWithObjects:v8 count:{v7, v15, v16, v17, v18}];
    if (v7)
    {
      v12 = v8;
      do
      {
        v13 = *v12;
        *v12++ = 0;

        --v7;
      }

      while (v7);
    }

    free(v8);
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (id)pft_compactMap:()PosterFuturesKit
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self && [self count])
  {
    if ([self count] > 0x80)
    {
      selfCopy = self;
      v6 = v4;
      v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(selfCopy, "count")}];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = selfCopy;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = v6[2](v6, *(*(&v17 + 1) + 8 * i));
            v13 = (off_2870E42A0)(&__block_literal_global_4_0, v12);

            if (v13)
            {
              [v16 addObject:v12];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v9);
      }
    }

    else
    {
      v16 = PFTArrayCompactMapFastPath(self, v4);
    }
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)pft_filter:()PosterFuturesKit
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__NSArray_PosterFuturesKit__pft_filter___block_invoke;
  v9[3] = &unk_279A52E78;
  v10 = v4;
  v5 = v4;
  v6 = [self indexesOfObjectsPassingTest:v9];
  v7 = [self objectsAtIndexes:v6];

  return v7;
}

- (id)pft_slicesWithMaximumCount:()PosterFuturesKit
{
  v4 = PFTRangeDividedIntoStridesOfLength(0, [self count], a3);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__NSArray_PosterFuturesKit__pft_slicesWithMaximumCount___block_invoke;
  v7[3] = &unk_279A52EA0;
  v7[4] = self;
  v5 = [v4 pft_map:v7];

  return v5;
}

- (id)pft_balancedSlicesWithMaximumCount:()PosterFuturesKit
{
  v4 = PFTRangeDividedIntoBalancedStridesOfLength(0, [self count], a3);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__NSArray_PosterFuturesKit__pft_balancedSlicesWithMaximumCount___block_invoke;
  v7[3] = &unk_279A52EA0;
  v7[4] = self;
  v5 = [v4 pft_map:v7];

  return v5;
}

- (id)pft_firstObjectPassingTest:()PosterFuturesKit
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (uint64_t)pft_indexOfFirstObjectPassingTest:()PosterFuturesKit
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__NSArray_PosterFuturesKit__pft_indexOfFirstObjectPassingTest___block_invoke;
  v9[3] = &unk_279A52E78;
  v10 = v4;
  v5 = v4;
  v6 = [self indexesOfObjectsPassingTest:v9];
  firstIndex = [v6 firstIndex];

  return firstIndex;
}

- (uint64_t)pft_all:()PosterFuturesKit
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        if (!v4[2](v4, *(*(&v13 + 1) + 8 * v9)))
        {
          v10 = 0;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (uint64_t)pft_any:()PosterFuturesKit
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        if (v4[2](v4, *(*(&v11 + 1) + 8 * i)))
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (uint64_t)pft_none:()PosterFuturesKit
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        if (v4[2](v4, *(*(&v13 + 1) + 8 * v9)))
        {
          v10 = 0;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)pft_indicesForObjects:()PosterFuturesKit
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self indexOfObject:{*(*(&v14 + 1) + 8 * i), v14}];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [indexSet addIndex:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return indexSet;
}

- (id)pft_distinctObjects
{
  v1 = [MEMORY[0x277CBEB70] orderedSetWithArray:self];
  array = [v1 array];

  return array;
}

- (id)pft_flatten
{
  array = [MEMORY[0x277CBEB18] array];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__NSArray_PosterFuturesKit__pft_flatten__block_invoke;
  v5[3] = &unk_279A52EC8;
  v3 = array;
  v6 = v3;
  [self enumerateObjectsUsingBlock:v5];

  return v3;
}

- (id)pft_flatMap:()PosterFuturesKit
{
  v4 = a3;
  array = [MEMORY[0x277CBEB18] array];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__NSArray_PosterFuturesKit__pft_flatMap___block_invoke;
  v11[3] = &unk_279A52EF0;
  v6 = array;
  v12 = v6;
  v13 = v4;
  v7 = v4;
  [self enumerateObjectsUsingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (id)pft_reduce:()PosterFuturesKit
{
  v4 = a3;
  pft_tail = [self pft_tail];
  firstObject = [self firstObject];
  v7 = [pft_tail pft_reduce:v4 initialValue:firstObject];

  return v7;
}

- (id)pft_reduce:()PosterFuturesKit initialValue:
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
  v9 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  v10 = v7;
  if (v9)
  {
    v11 = v9;
    v12 = *v18;
    v10 = v7;
    do
    {
      v13 = 0;
      v14 = v10;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = v6[2](v6, v14, *(*(&v17 + 1) + 8 * v13));

        ++v13;
        v14 = v10;
      }

      while (v11 != v13);
      v11 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)pft_skip:()PosterFuturesKit
{
  if ([self count] >= a3)
  {
    v5 = [self subarrayWithRange:{a3, objc_msgSend(self, "count") - a3}];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (id)pft_skipLast:()PosterFuturesKit
{
  if ([self count] >= a3)
  {
    v5 = [self pft_take:{objc_msgSend(self, "count") - a3}];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (id)pft_take:()PosterFuturesKit
{
  if ([self count] >= a3)
  {
    selfCopy = [self subarrayWithRange:{0, a3}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)pft_takeLast:()PosterFuturesKit
{
  if ([self count] >= a3)
  {
    selfCopy = [self subarrayWithRange:{objc_msgSend(self, "count") - a3, a3}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)pft_groupBy:()PosterFuturesKit
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = v4[2](v4, v11);
        v13 = [dictionary objectForKey:{v12, v16}];
        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [dictionary setObject:v13 forKey:v12];
        }

        [v13 addObject:v11];
      }

      v8 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)pft_indexBy:()PosterFuturesKit
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = v4[2](v4, v11);
        [dictionary setObject:v11 forKey:{v12, v15}];
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)pft_reversed
{
  if ([self count] > 1)
  {
    reverseObjectEnumerator = [self reverseObjectEnumerator];
    selfCopy = [reverseObjectEnumerator allObjects];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)pft_safeSortedArrayUsingComparator:()PosterFuturesKit
{
  if (a3)
  {
    selfCopy = [self sortedArrayUsingComparator:?];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (uint64_t)pft_isIdenticalToArray:()PosterFuturesKit
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v7 = 1;
  }

  else if (v4 && (v6 = [v4 count], v6 == objc_msgSend(self, "count")))
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__NSArray_PosterFuturesKit__pft_isIdenticalToArray___block_invoke;
    v9[3] = &unk_279A52F18;
    v10 = v5;
    v11 = &v12;
    [self enumerateObjectsUsingBlock:v9];
    v7 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)pft_isNonEmpty
{
  if (result)
  {
    return ([result count] != 0);
  }

  return result;
}

- (id)pft_arrayByRotatingRange:()PosterFuturesKit by:
{
  v8 = [self mutableCopy];
  [v8 pft_rotateRange:a3 by:{a4, a5}];

  return v8;
}

+ (id)pft_arrayWithObject:()PosterFuturesKit count:
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a3;
  v7 = [v5 arrayWithCapacity:a4];
  [v7 pft_addObject:v6 count:a4];

  return v7;
}

@end