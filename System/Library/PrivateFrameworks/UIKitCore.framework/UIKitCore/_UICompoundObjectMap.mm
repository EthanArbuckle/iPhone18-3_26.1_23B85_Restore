@interface _UICompoundObjectMap
+ (id)compoundObjectMap;
- (_UICompoundObjectMap)init;
- (id)deepCopy;
- (id)valueForObject:(id)a3 andProperty:(id)a4;
- (void)addEntriesFromCompoundObjectMap:(id)a3 keepingCurrentValues:(BOOL)a4;
- (void)performWithEach:(id)a3;
- (void)setValue:(id)a3 forObject:(id)a4 andProperty:(id)a5;
@end

@implementation _UICompoundObjectMap

+ (id)compoundObjectMap
{
  objc_opt_class();
  v2 = objc_opt_new();

  return v2;
}

- (_UICompoundObjectMap)init
{
  v6.receiver = self;
  v6.super_class = _UICompoundObjectMap;
  v2 = [(_UICompoundObjectMap *)&v6 init];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  mapTable = v2->_mapTable;
  v2->_mapTable = v3;

  return v2;
}

- (id)valueForObject:(id)a3 andProperty:(id)a4
{
  mapTable = self->_mapTable;
  v5 = [_UICompoundObjectMapKey keyWithObject:a3 andProperty:a4];
  v6 = [(NSMutableDictionary *)mapTable objectForKey:v5];

  return v6;
}

- (void)setValue:(id)a3 forObject:(id)a4 andProperty:(id)a5
{
  if (a3)
  {
    mapTable = self->_mapTable;
    v8 = a3;
    v9 = [_UICompoundObjectMapKey keyWithObject:a4 andProperty:a5];
    [(NSMutableDictionary *)mapTable setObject:v8 forKey:v9];
  }
}

- (void)addEntriesFromCompoundObjectMap:(id)a3 keepingCurrentValues:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77___UICompoundObjectMap_addEntriesFromCompoundObjectMap_keepingCurrentValues___block_invoke;
  v4[3] = &unk_1E70F5E90;
  v5 = a4;
  v4[4] = self;
  [a3 performWithEach:v4];
}

- (void)performWithEach:(id)a3
{
  v4 = a3;
  mapTable = self->_mapTable;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40___UICompoundObjectMap_performWithEach___block_invoke;
  v7[3] = &unk_1E70F5EB8;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)mapTable enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)deepCopy
{
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32___UICompoundObjectMap_deepCopy__block_invoke;
  v6[3] = &unk_1E70F5EE0;
  v4 = v3;
  v7 = v4;
  [(_UICompoundObjectMap *)self performWithEach:v6];

  return v4;
}

@end