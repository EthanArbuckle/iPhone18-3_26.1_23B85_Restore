@interface SUObjectPool
- (NSArray)vendedObjects;
- (id)addObjectsOfClass:(Class)a3 count:(int64_t)a4 forClass:(Class)a5;
- (id)copyPoppedObjectForClass:(Class)a3;
- (void)addObjects:(id)a3 forClass:(Class)a4;
- (void)dealloc;
@end

@implementation SUObjectPool

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUObjectPool;
  [(SUObjectPool *)&v3 dealloc];
}

- (void)addObjects:(id)a3 forClass:(Class)a4
{
  poolObjects = self->_poolObjects;
  if (!poolObjects)
  {
    poolObjects = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_poolObjects = poolObjects;
  }

  v8 = [(NSMutableDictionary *)poolObjects objectForKey:a4];
  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMutableDictionary *)self->_poolObjects setObject:v9 forKey:a4];
    v8 = v9;
  }

  v10 = v8;
  [v8 addObjectsFromArray:a3];
}

- (id)addObjectsOfClass:(Class)a3 count:(int64_t)a4 forClass:(Class)a5
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!a3)
  {
    a3 = a5;
  }

  if (a4 >= 1)
  {
    do
    {
      v10 = objc_alloc_init(a3);
      [v9 addObject:v10];

      --a4;
    }

    while (a4);
  }

  [(SUObjectPool *)self addObjects:v9 forClass:a5];

  return v9;
}

- (id)copyPoppedObjectForClass:(Class)a3
{
  v5 = [(NSMutableDictionary *)self->_poolObjects objectForKey:?];
  if ([v5 count])
  {
    v6 = [v5 lastObject];
    [v5 removeLastObject];
  }

  else
  {
    v6 = objc_alloc_init(a3);
  }

  vendedObjects = self->_vendedObjects;
  if (!vendedObjects)
  {
    vendedObjects = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_vendedObjects = vendedObjects;
  }

  [(NSMutableArray *)vendedObjects addObject:v6];
  return v6;
}

- (NSArray)vendedObjects
{
  v2 = [(NSMutableArray *)self->_vendedObjects copy];

  return v2;
}

@end