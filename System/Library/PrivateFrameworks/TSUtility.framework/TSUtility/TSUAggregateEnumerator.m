@interface TSUAggregateEnumerator
- (TSUAggregateEnumerator)initWithFirstObject:(id)a3 argumentList:(char *)a4;
- (id)nextObject;
- (void)addObject:(id)a3;
- (void)dealloc;
@end

@implementation TSUAggregateEnumerator

- (TSUAggregateEnumerator)initWithFirstObject:(id)a3 argumentList:(char *)a4
{
  v10.receiver = self;
  v10.super_class = TSUAggregateEnumerator;
  v11 = a4;
  v5 = [(TSUAggregateEnumerator *)&v10 init];
  if (v5)
  {
    objects = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5->_objects = objects;
    if (a3)
    {
      v7 = a3;
      while (1)
      {
        [(NSMutableArray *)objects addObject:v7];
        v8 = v11;
        v11 += 8;
        v7 = *v8;
        if (!*v8)
        {
          break;
        }

        objects = v5->_objects;
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSUAggregateEnumerator;
  [(TSUAggregateEnumerator *)&v3 dealloc];
}

- (void)addObject:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_objects addObject:?];
  }
}

- (id)nextObject
{
  while ([(NSMutableArray *)self->_objects count])
  {
    v3 = [(NSMutableArray *)self->_objects objectAtIndex:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v3 = [v3 nextObject]) == 0)
    {
      [(NSMutableArray *)self->_objects removeObjectAtIndex:0];
      if (!v3)
      {
        continue;
      }
    }

    return v3;
  }

  return 0;
}

@end