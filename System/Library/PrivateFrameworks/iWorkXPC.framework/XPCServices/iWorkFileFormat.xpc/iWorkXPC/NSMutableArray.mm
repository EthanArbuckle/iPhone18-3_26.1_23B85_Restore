@interface NSMutableArray
- (id)tsu_pop;
- (unint64_t)tsu_insertObject:(id)object usingComparator:(id)comparator;
- (void)tsu_addNonNilObject:(id)object;
- (void)tsu_addObjects:(id)objects;
- (void)tsu_addObjectsFromNonNilArray:(id)array;
- (void)tsu_removeObjectsIdenticalToObjectsInArray:(id)array;
- (void)tsu_trimObjectsFromIndex:(unint64_t)index;
@end

@implementation NSMutableArray

- (id)tsu_pop
{
  lastObject = [(NSMutableArray *)self lastObject];
  if (lastObject)
  {
    [(NSMutableArray *)self removeLastObject];
  }

  return lastObject;
}

- (void)tsu_addObjects:(id)objects
{
  v5 = &v6;
  if (objects)
  {
    do
    {
      [(NSMutableArray *)self addObject:?];
      v4 = v5++;
    }

    while (*v4);
  }
}

- (void)tsu_addNonNilObject:(id)object
{
  if (object)
  {
    [(NSMutableArray *)self addObject:?];
  }
}

- (void)tsu_addObjectsFromNonNilArray:(id)array
{
  if (array)
  {
    [(NSMutableArray *)self addObjectsFromArray:?];
  }
}

- (void)tsu_removeObjectsIdenticalToObjectsInArray:(id)array
{
  if (self == array)
  {

    [(NSMutableArray *)self removeAllObjects];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [array countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(array);
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

        v6 = [array countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (void)tsu_trimObjectsFromIndex:(unint64_t)index
{
  v5 = [(NSMutableArray *)self count];
  if (v5 > index)
  {

    [(NSMutableArray *)self removeObjectsInRange:index, &v5[-index]];
  }
}

- (unint64_t)tsu_insertObject:(id)object usingComparator:(id)comparator
{
  comparator = [(NSMutableArray *)self indexOfObject:object inSortedRange:0 options:[(NSMutableArray *)self count] usingComparator:1024, comparator];
  [(NSMutableArray *)self insertObject:object atIndex:comparator];
  return comparator;
}

@end