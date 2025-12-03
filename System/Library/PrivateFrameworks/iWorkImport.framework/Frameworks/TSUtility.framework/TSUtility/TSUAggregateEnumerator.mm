@interface TSUAggregateEnumerator
+ (id)aggregateEnumeratorWithObjects:(id)objects;
- (TSUAggregateEnumerator)initWithFirstObject:(id)object argumentList:(char *)list;
- (id)nextObject;
- (void)addObject:(id)object;
@end

@implementation TSUAggregateEnumerator

- (TSUAggregateEnumerator)initWithFirstObject:(id)object argumentList:(char *)list
{
  objectCopy = object;
  v16.receiver = self;
  v16.super_class = TSUAggregateEnumerator;
  listCopy = list;
  v7 = [(TSUAggregateEnumerator *)&v16 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objects = v7->_objects;
    v7->_objects = v8;

    if (objectCopy)
    {
      [(NSMutableArray *)v7->_objects addObject:objectCopy];
      v10 = listCopy;
      listCopy += 8;
      v11 = *v10;
      if (v11)
      {
        v12 = v11;
        do
        {
          [(NSMutableArray *)v7->_objects addObject:v12];
          v13 = listCopy;
          listCopy += 8;
          v14 = *v13;

          v12 = v14;
        }

        while (v14);
      }
    }
  }

  return v7;
}

+ (id)aggregateEnumeratorWithObjects:(id)objects
{
  objectsCopy = objects;
  v5 = [[self alloc] initWithFirstObject:objectsCopy argumentList:&v8];

  return v5;
}

- (void)addObject:(id)object
{
  if (object)
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
      nextObject = [v3 nextObject];
      if (nextObject)
      {

        goto LABEL_9;
      }
    }

    else
    {
      nextObject = v3;
    }

    [(NSMutableArray *)self->_objects removeObjectAtIndex:0];

    if (nextObject)
    {
      goto LABEL_9;
    }
  }

  nextObject = 0;
LABEL_9:

  return nextObject;
}

@end