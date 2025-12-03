@interface SUObjectPool
- (NSArray)vendedObjects;
- (id)addObjectsOfClass:(Class)class count:(int64_t)count forClass:(Class)forClass;
- (id)copyPoppedObjectForClass:(Class)class;
- (void)addObjects:(id)objects forClass:(Class)class;
- (void)dealloc;
@end

@implementation SUObjectPool

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUObjectPool;
  [(SUObjectPool *)&v3 dealloc];
}

- (void)addObjects:(id)objects forClass:(Class)class
{
  poolObjects = self->_poolObjects;
  if (!poolObjects)
  {
    poolObjects = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_poolObjects = poolObjects;
  }

  v8 = [(NSMutableDictionary *)poolObjects objectForKey:class];
  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMutableDictionary *)self->_poolObjects setObject:v9 forKey:class];
    v8 = v9;
  }

  v10 = v8;
  [v8 addObjectsFromArray:objects];
}

- (id)addObjectsOfClass:(Class)class count:(int64_t)count forClass:(Class)forClass
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!class)
  {
    class = forClass;
  }

  if (count >= 1)
  {
    do
    {
      v10 = objc_alloc_init(class);
      [v9 addObject:v10];

      --count;
    }

    while (count);
  }

  [(SUObjectPool *)self addObjects:v9 forClass:forClass];

  return v9;
}

- (id)copyPoppedObjectForClass:(Class)class
{
  v5 = [(NSMutableDictionary *)self->_poolObjects objectForKey:?];
  if ([v5 count])
  {
    lastObject = [v5 lastObject];
    [v5 removeLastObject];
  }

  else
  {
    lastObject = objc_alloc_init(class);
  }

  vendedObjects = self->_vendedObjects;
  if (!vendedObjects)
  {
    vendedObjects = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_vendedObjects = vendedObjects;
  }

  [(NSMutableArray *)vendedObjects addObject:lastObject];
  return lastObject;
}

- (NSArray)vendedObjects
{
  v2 = [(NSMutableArray *)self->_vendedObjects copy];

  return v2;
}

@end