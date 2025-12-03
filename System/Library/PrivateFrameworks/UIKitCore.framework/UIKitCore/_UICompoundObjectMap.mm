@interface _UICompoundObjectMap
+ (id)compoundObjectMap;
- (_UICompoundObjectMap)init;
- (id)deepCopy;
- (id)valueForObject:(id)object andProperty:(id)property;
- (void)addEntriesFromCompoundObjectMap:(id)map keepingCurrentValues:(BOOL)values;
- (void)performWithEach:(id)each;
- (void)setValue:(id)value forObject:(id)object andProperty:(id)property;
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

- (id)valueForObject:(id)object andProperty:(id)property
{
  mapTable = self->_mapTable;
  v5 = [_UICompoundObjectMapKey keyWithObject:object andProperty:property];
  v6 = [(NSMutableDictionary *)mapTable objectForKey:v5];

  return v6;
}

- (void)setValue:(id)value forObject:(id)object andProperty:(id)property
{
  if (value)
  {
    mapTable = self->_mapTable;
    valueCopy = value;
    v9 = [_UICompoundObjectMapKey keyWithObject:object andProperty:property];
    [(NSMutableDictionary *)mapTable setObject:valueCopy forKey:v9];
  }
}

- (void)addEntriesFromCompoundObjectMap:(id)map keepingCurrentValues:(BOOL)values
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77___UICompoundObjectMap_addEntriesFromCompoundObjectMap_keepingCurrentValues___block_invoke;
  v4[3] = &unk_1E70F5E90;
  valuesCopy = values;
  v4[4] = self;
  [map performWithEach:v4];
}

- (void)performWithEach:(id)each
{
  eachCopy = each;
  mapTable = self->_mapTable;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40___UICompoundObjectMap_performWithEach___block_invoke;
  v7[3] = &unk_1E70F5EB8;
  v8 = eachCopy;
  v6 = eachCopy;
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