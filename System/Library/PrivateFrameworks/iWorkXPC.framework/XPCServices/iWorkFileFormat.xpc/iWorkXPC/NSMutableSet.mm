@interface NSMutableSet
- (void)tsu_addNonNilObject:(id)object;
- (void)tsu_addObjectsFromNonNilArray:(id)array;
- (void)tsu_removeEqualObject:(id)object;
- (void)tsu_removeObjectsPassingTest:(id)test;
- (void)tsu_xorSet:(id)set;
@end

@implementation NSMutableSet

- (void)tsu_xorSet:(id)set
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [set countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(set);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([(NSMutableSet *)self containsObject:v9])
        {
          [(NSMutableSet *)self removeObject:v9];
        }

        else
        {
          [(NSMutableSet *)self addObject:v9];
        }
      }

      v6 = [set countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)tsu_addNonNilObject:(id)object
{
  if (object)
  {
    [(NSMutableSet *)self addObject:?];
  }
}

- (void)tsu_addObjectsFromNonNilArray:(id)array
{
  if (array)
  {
    [(NSMutableSet *)self addObjectsFromArray:?];
  }
}

- (void)tsu_removeEqualObject:(id)object
{
  allObjects = [(NSMutableSet *)self allObjects];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 isEqual:object])
        {
          [(NSMutableSet *)self removeObject:v10];
        }
      }

      v7 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)tsu_removeObjectsPassingTest:(id)test
{
  if (test)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(NSMutableSet *)self countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v12;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(self);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          if ((*(test + 2))(test, v10))
          {
            if (!v7)
            {
              v7 = [NSMutableSet setWithCapacity:[(NSMutableSet *)self count]];
            }

            [(NSMutableSet *)v7 addObject:v10];
          }
        }

        v6 = [(NSMutableSet *)self countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
      if (v7)
      {
        [(NSMutableSet *)self minusSet:v7];
      }
    }
  }
}

@end