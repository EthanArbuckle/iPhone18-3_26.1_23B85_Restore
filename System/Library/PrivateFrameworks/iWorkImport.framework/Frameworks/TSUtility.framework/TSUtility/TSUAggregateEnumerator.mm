@interface TSUAggregateEnumerator
+ (id)aggregateEnumeratorWithObjects:(id)a3;
- (TSUAggregateEnumerator)initWithFirstObject:(id)a3 argumentList:(char *)a4;
- (id)nextObject;
- (void)addObject:(id)a3;
@end

@implementation TSUAggregateEnumerator

- (TSUAggregateEnumerator)initWithFirstObject:(id)a3 argumentList:(char *)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = TSUAggregateEnumerator;
  v17 = a4;
  v7 = [(TSUAggregateEnumerator *)&v16 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objects = v7->_objects;
    v7->_objects = v8;

    if (v6)
    {
      [(NSMutableArray *)v7->_objects addObject:v6];
      v10 = v17;
      v17 += 8;
      v11 = *v10;
      if (v11)
      {
        v12 = v11;
        do
        {
          [(NSMutableArray *)v7->_objects addObject:v12];
          v13 = v17;
          v17 += 8;
          v14 = *v13;

          v12 = v14;
        }

        while (v14);
      }
    }
  }

  return v7;
}

+ (id)aggregateEnumeratorWithObjects:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFirstObject:v4 argumentList:&v8];

  return v5;
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
    v3 = [(NSMutableArray *)self->_objects objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 nextObject];
      if (v4)
      {

        goto LABEL_9;
      }
    }

    else
    {
      v4 = v3;
    }

    [(NSMutableArray *)self->_objects removeObjectAtIndex:0];

    if (v4)
    {
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:

  return v4;
}

@end