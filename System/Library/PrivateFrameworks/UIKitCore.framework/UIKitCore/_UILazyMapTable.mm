@interface _UILazyMapTable
- (BOOL)hasCachedObjectForKey:(id)key;
- (_UILazyMapTable)initWithMappingBlock:(id)block;
- (id)description;
- (id)objectForKey:(id)key;
- (void)registerClient:(id)client ofObjectForKey:(id)key;
- (void)unregisterClient:(id)client ofObjectForKey:(id)key;
@end

@implementation _UILazyMapTable

- (_UILazyMapTable)initWithMappingBlock:(id)block
{
  blockCopy = block;
  v16.receiver = self;
  v16.super_class = _UILazyMapTable;
  v5 = [(_UILazyMapTable *)&v16 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    mappingBlock = v5->_mappingBlock;
    v5->_mappingBlock = v6;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    keysToClientTables = v5->_keysToClientTables;
    v5->_keysToClientTables = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    keysToValues = v5->_keysToValues;
    v5->_keysToValues = strongToStrongObjectsMapTable2;

    strongToStrongObjectsMapTable3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    valuesToKeys = v5->_valuesToKeys;
    v5->_valuesToKeys = strongToStrongObjectsMapTable3;

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

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMapTable *)self->_keysToValues objectForKey:keyCopy];
  if (!v5)
  {
    v5 = (*(self->_mappingBlock + 2))();
    v6 = [(NSMapTable *)self->_keysToClientTables objectForKey:keyCopy];
    v7 = [v6 count];

    if (v7)
    {
      [(NSMapTable *)self->_keysToValues setObject:v5 forKey:keyCopy];
      [(NSMapTable *)self->_valuesToKeys setObject:keyCopy forKey:v5];
    }
  }

  return v5;
}

- (BOOL)hasCachedObjectForKey:(id)key
{
  v3 = [(NSMapTable *)self->_keysToValues objectForKey:key];
  v4 = v3 != 0;

  return v4;
}

- (void)registerClient:(id)client ofObjectForKey:(id)key
{
  clientCopy = client;
  keyCopy = key;
  v7 = [(NSMapTable *)self->_keysToClientTables objectForKey:keyCopy];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:0 capacity:1];
    [(NSMapTable *)self->_keysToClientTables setObject:v7 forKey:keyCopy];
  }

  [v7 addObject:clientCopy];
}

- (void)unregisterClient:(id)client ofObjectForKey:(id)key
{
  clientCopy = client;
  keyCopy = key;
  v7 = [(NSMapTable *)self->_keysToClientTables objectForKey:keyCopy];
  v8 = v7;
  if (v7)
  {
    [v7 removeObject:clientCopy];
    if (![v8 count])
    {
      [(NSMapTable *)self->_keysToClientTables removeObjectForKey:keyCopy];
      v9 = [(NSMapTable *)self->_keysToValues objectForKey:keyCopy];
      [(NSMapTable *)self->_keysToValues removeObjectForKey:keyCopy];
      [(NSMapTable *)self->_valuesToKeys removeObjectForKey:v9];
    }
  }
}

@end