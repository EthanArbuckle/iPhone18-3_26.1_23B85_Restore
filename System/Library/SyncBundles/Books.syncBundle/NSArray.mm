@interface NSArray
- (id)arrayOfObjectsContainingMatchingKey:(id)key matchingStrings:(id)strings;
- (id)arrayRemovingMatchingStrings:(id)strings;
- (id)arrayRemovingNonStrings;
- (id)arrayRemovingObjectsByKey:(id)key matchingStrings:(id)strings;
- (id)presortedArrayOfObjectsContainingMatchingKey:(id)key matchingPresortedStrings:(id)strings;
- (id)presortedArrayRemovingMatchingPresortedStrings:(id)strings;
- (id)presortedArrayRemovingObjectsByKey:(id)key matchingPresortedStrings:(id)strings;
@end

@implementation NSArray

- (id)arrayRemovingNonStrings
{
  v3 = +[NSMutableArray array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSArray *)self countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(self);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v8];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)self countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)arrayOfObjectsContainingMatchingKey:(id)key matchingStrings:(id)strings
{
  v6 = [(NSArray *)self arrayOfDictionariesSortedByKey:?];
  v7 = [strings sortedArrayUsingSelector:"compare:"];

  return [v6 presortedArrayOfObjectsContainingMatchingKey:key matchingPresortedStrings:v7];
}

- (id)arrayRemovingObjectsByKey:(id)key matchingStrings:(id)strings
{
  v6 = [(NSArray *)self arrayOfDictionariesSortedByKey:?];
  v7 = [strings sortedArrayUsingSelector:"compare:"];

  return [v6 presortedArrayRemovingObjectsByKey:key matchingPresortedStrings:v7];
}

- (id)arrayRemovingMatchingStrings:(id)strings
{
  v4 = [(NSArray *)self sortedArrayUsingSelector:"compare:"];
  v5 = [strings sortedArrayUsingSelector:"compare:"];

  return [(NSArray *)v4 presortedArrayRemovingMatchingPresortedStrings:v5];
}

- (id)presortedArrayRemovingMatchingPresortedStrings:(id)strings
{
  if (![strings count] || !-[NSArray count](self, "count"))
  {
    return self;
  }

  v19 = a2;
  v6 = [strings count];
  v7 = [strings objectAtIndex:0];
  v20 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  selfCopy = self;
  v9 = [(NSArray *)self countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(selfCopy);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        if (v7)
        {
          while (1)
          {
            v16 = [v7 compare:v15];
            if (v16 != -1)
            {
              break;
            }

            if (++v12 >= v6)
            {
              v7 = 0;
              goto LABEL_17;
            }

            v7 = [strings objectAtIndex:v12];
          }

          if (v16 == &dword_0 + 1)
          {
            goto LABEL_17;
          }

          if (!v16)
          {
            ++v11;
          }
        }

        else
        {
LABEL_17:
          [v20 addObject:v15];
        }
      }

      v10 = [(NSArray *)selfCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v17 = [v20 count] + v11;
  if (v17 != [(NSArray *)selfCopy count])
  {
    -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:](+[NSAssertionHandler currentHandler](NSAssertionHandler, "currentHandler"), "handleFailureInMethod:object:file:lineNumber:description:", v19, selfCopy, @"NSArray+IMAdditions.m", 163, @"Unexpected Counts: Unfiltered: %lu; Filter: %lu; Filtered: %lu; Filter Hit: %lu", -[NSArray count](selfCopy, "count"), [strings count], objc_msgSend(v20, "count"), v11);
  }

  return v20;
}

- (id)presortedArrayOfObjectsContainingMatchingKey:(id)key matchingPresortedStrings:(id)strings
{
  if (![strings count] || !-[NSArray count](self, "count") || !objc_msgSend(key, "length"))
  {
    return 0;
  }

  v23 = a2;
  v7 = [strings count];
  v8 = [strings objectAtIndex:0];
  v24 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [(NSArray *)self countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v28;
    obj = self;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = objc_opt_class();
        v17 = BCDynamicCast(v16, v15);
        v18 = [v17 objectForKey:key];
        if ([v18 length])
        {
          v19 = v8 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
LABEL_19:
          ++v12;
        }

        else
        {
          while (1)
          {
            v20 = [v8 compare:v18];
            if (v20 != -1)
            {
              break;
            }

            if (++v11 >= v7)
            {
              v8 = 0;
              goto LABEL_19;
            }

            v8 = [strings objectAtIndex:v11];
          }

          if (v20)
          {
            goto LABEL_19;
          }

          [v24 addObject:v17];
        }
      }

      self = obj;
      v10 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 0;
  }

  v21 = [v24 count] + v12;
  if (v21 != [(NSArray *)self count])
  {
    -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:](+[NSAssertionHandler currentHandler](NSAssertionHandler, "currentHandler"), "handleFailureInMethod:object:file:lineNumber:description:", v23, self, @"NSArray+IMAdditions.m", 242, @"Unexpected Counts: Unfiltered: %lu; Filter: %lu; Filtered: %lu; Filter Hit: %lu", -[NSArray count](self, "count"), [strings count], objc_msgSend(v24, "count"), v12);
  }

  return v24;
}

- (id)presortedArrayRemovingObjectsByKey:(id)key matchingPresortedStrings:(id)strings
{
  if (![strings count] || !-[NSArray count](self, "count") || !objc_msgSend(key, "length"))
  {
    return self;
  }

  v24 = a2;
  v8 = [strings count];
  v9 = [strings objectAtIndex:0];
  v27 = +[NSMutableArray array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = [(NSArray *)self countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v25 = 0;
    obj = self;
    v13 = *v29;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        v16 = objc_opt_class();
        v17 = BCDynamicCast(v16, v15);
        v18 = [v17 objectForKey:key];
        if ([v18 length])
        {
          v19 = v9 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
LABEL_21:
          [v27 addObject:v17];
        }

        else
        {
          while (1)
          {
            v20 = [v9 compare:v18];
            if (v20 != -1)
            {
              break;
            }

            if (++v12 >= v8)
            {
              v9 = 0;
              goto LABEL_21;
            }

            v9 = [strings objectAtIndex:v12];
          }

          if (v20 == &dword_0 + 1)
          {
            goto LABEL_21;
          }

          v21 = v25;
          if (!v20)
          {
            v21 = v25 + 1;
          }

          v25 = v21;
        }
      }

      self = obj;
      v11 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  else
  {
    v25 = 0;
  }

  v22 = [v27 count] + v25;
  if (v22 != [(NSArray *)self count])
  {
    -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:](+[NSAssertionHandler currentHandler](NSAssertionHandler, "currentHandler"), "handleFailureInMethod:object:file:lineNumber:description:", v24, self, @"NSArray+IMAdditions.m", 320, @"Unexpected Counts: Unfiltered: %lu; Filter: %lu; Filtered: %lu; Filter Hit: %lu", -[NSArray count](self, "count"), [strings count], objc_msgSend(v27, "count"), v25);
  }

  return v27;
}

@end