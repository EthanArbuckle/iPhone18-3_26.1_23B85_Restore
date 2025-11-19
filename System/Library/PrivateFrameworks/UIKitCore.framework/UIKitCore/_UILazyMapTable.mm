@interface _UILazyMapTable
- (BOOL)hasCachedObjectForKey:(id)a3;
- (_UILazyMapTable)initWithMappingBlock:(id)a3;
- (id)description;
- (id)objectForKey:(id)a3;
- (void)registerClient:(id)a3 ofObjectForKey:(id)a4;
- (void)unregisterClient:(id)a3 ofObjectForKey:(id)a4;
@end

@implementation _UILazyMapTable

- (_UILazyMapTable)initWithMappingBlock:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _UILazyMapTable;
  v5 = [(_UILazyMapTable *)&v16 init];
  if (v5)
  {
    v6 = [v4 copy];
    mappingBlock = v5->_mappingBlock;
    v5->_mappingBlock = v6;

    v8 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    keysToClientTables = v5->_keysToClientTables;
    v5->_keysToClientTables = v8;

    v10 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    keysToValues = v5->_keysToValues;
    v5->_keysToValues = v10;

    v12 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    valuesToKeys = v5->_valuesToKeys;
    v5->_valuesToKeys = v12;

    v14 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p cachedValues=%@, clients=%@>", v5, self, self->_keysToValues, self->_keysToClientTables];

  return v6;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_keysToValues objectForKey:v4];
  if (!v5)
  {
    v5 = (*(self->_mappingBlock + 2))();
    v6 = [(NSMapTable *)self->_keysToClientTables objectForKey:v4];
    v7 = [v6 count];

    if (v7)
    {
      [(NSMapTable *)self->_keysToValues setObject:v5 forKey:v4];
      [(NSMapTable *)self->_valuesToKeys setObject:v4 forKey:v5];
    }
  }

  return v5;
}

- (BOOL)hasCachedObjectForKey:(id)a3
{
  v3 = [(NSMapTable *)self->_keysToValues objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)registerClient:(id)a3 ofObjectForKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSMapTable *)self->_keysToClientTables objectForKey:v6];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:0 capacity:1];
    [(NSMapTable *)self->_keysToClientTables setObject:v7 forKey:v6];
  }

  [v7 addObject:v8];
}

- (void)unregisterClient:(id)a3 ofObjectForKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(NSMapTable *)self->_keysToClientTables objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    [v7 removeObject:v10];
    if (![v8 count])
    {
      [(NSMapTable *)self->_keysToClientTables removeObjectForKey:v6];
      v9 = [(NSMapTable *)self->_keysToValues objectForKey:v6];
      [(NSMapTable *)self->_keysToValues removeObjectForKey:v6];
      [(NSMapTable *)self->_valuesToKeys removeObjectForKey:v9];
    }
  }
}

@end