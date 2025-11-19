@interface NSMutableArray
- (id)tsu_pop;
- (unint64_t)tsu_insertObject:(id)a3 usingComparator:(id)a4;
- (void)tsu_addNonNilObject:(id)a3;
- (void)tsu_addObjects:(id)a3;
- (void)tsu_addObjectsFromNonNilArray:(id)a3;
- (void)tsu_removeObjectsIdenticalToObjectsInArray:(id)a3;
- (void)tsu_trimObjectsFromIndex:(unint64_t)a3;
@end

@implementation NSMutableArray

- (id)tsu_pop
{
  v3 = [(NSMutableArray *)self lastObject];
  if (v3)
  {
    [(NSMutableArray *)self removeLastObject];
  }

  return v3;
}

- (void)tsu_addObjects:(id)a3
{
  v5 = &v6;
  if (a3)
  {
    do
    {
      [(NSMutableArray *)self addObject:?];
      v4 = v5++;
    }

    while (*v4);
  }
}

- (void)tsu_addNonNilObject:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self addObject:?];
  }
}

- (void)tsu_addObjectsFromNonNilArray:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self addObjectsFromArray:?];
  }
}

- (void)tsu_removeObjectsIdenticalToObjectsInArray:(id)a3
{
  if (self == a3)
  {

    [(NSMutableArray *)self removeAllObjects];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(a3);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          v10 = [(NSMutableArray *)self indexOfObjectIdenticalTo:v9];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            for (j = v10; j != 0x7FFFFFFFFFFFFFFFLL; j = [(NSMutableArray *)self indexOfObjectIdenticalTo:v9])
            {
              [(NSMutableArray *)self removeObjectAtIndex:j];
            }
          }
        }

        v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (void)tsu_trimObjectsFromIndex:(unint64_t)a3
{
  v5 = [(NSMutableArray *)self count];
  if (v5 > a3)
  {

    [(NSMutableArray *)self removeObjectsInRange:a3, &v5[-a3]];
  }
}

- (unint64_t)tsu_insertObject:(id)a3 usingComparator:(id)a4
{
  v6 = [(NSMutableArray *)self indexOfObject:a3 inSortedRange:0 options:[(NSMutableArray *)self count] usingComparator:1024, a4];
  [(NSMutableArray *)self insertObject:a3 atIndex:v6];
  return v6;
}

@end