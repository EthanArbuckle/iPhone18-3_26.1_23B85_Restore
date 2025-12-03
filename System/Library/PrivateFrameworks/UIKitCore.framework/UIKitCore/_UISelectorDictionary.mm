@interface _UISelectorDictionary
- (BOOL)isEqual:(id)equal;
- (_UISelectorDictionary)init;
- (_UISelectorDictionary)initWithMap:(id)map;
- (_UISelectorDictionary)initWithMapping:(id)mapping objects:(id)objects;
- (_UISelectorSet)allSelectors;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)enumerateSelectorsAndObjectsUsingBlock:(id)block;
- (void)removeObjectsForSelectors:(id)selectors;
@end

@implementation _UISelectorDictionary

- (_UISelectorDictionary)initWithMap:(id)map
{
  mapCopy = map;
  v9.receiver = self;
  v9.super_class = _UISelectorDictionary;
  v6 = [(_UISelectorDictionary *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_map, map);
  }

  return v7;
}

- (_UISelectorDictionary)init
{
  if (!_MergedGlobals_1082)
  {
    v3 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:256];
    v4 = _MergedGlobals_1082;
    _MergedGlobals_1082 = v3;

    [_MergedGlobals_1082 setDescriptionFunction:selectorDescription];
  }

  if (!qword_1ED49DC30)
  {
    v5 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:0];
    v6 = qword_1ED49DC30;
    qword_1ED49DC30 = v5;
  }

  v7 = objc_alloc(MEMORY[0x1E696AD18]);
  v8 = [v7 initWithKeyPointerFunctions:_MergedGlobals_1082 valuePointerFunctions:qword_1ED49DC30 capacity:0];
  v9 = [(_UISelectorDictionary *)self initWithMap:v8];

  return v9;
}

- (_UISelectorDictionary)initWithMapping:(id)mapping objects:(id)objects
{
  mappingCopy = mapping;
  objectsCopy = objects;
  v8 = [(_UISelectorDictionary *)self init];
  if (v8)
  {
    v16 = &v17;
    v9 = objectsCopy;
    if (v9)
    {
      v10 = v9;
      do
      {
        map = v8->_map;
        v12 = mappingCopy[2](mappingCopy, v10);
        NSMapInsert(map, v12, v10);
        v13 = v16++;
        v14 = *v13;

        v10 = v14;
      }

      while (v14);
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [_UISelectorDictionary alloc];
  v6 = [(NSMapTable *)self->_map copyWithZone:zone];
  v7 = [(_UISelectorDictionary *)v5 initWithMap:v6];

  return v7;
}

- (_UISelectorSet)allSelectors
{
  v3 = objc_alloc_init(_UISelectorSet);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37___UISelectorDictionary_allSelectors__block_invoke;
  v6[3] = &unk_1E71074B0;
  v4 = v3;
  v7 = v4;
  [(_UISelectorDictionary *)self enumerateSelectorsAndObjectsUsingBlock:v6];

  return v4;
}

- (void)addEntriesFromDictionary:(id)dictionary
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50___UISelectorDictionary_addEntriesFromDictionary___block_invoke;
  v3[3] = &unk_1E71074B0;
  v3[4] = self;
  [dictionary enumerateSelectorsAndObjectsUsingBlock:v3];
}

- (void)removeObjectsForSelectors:(id)selectors
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51___UISelectorDictionary_removeObjectsForSelectors___block_invoke;
  v3[3] = &unk_1E71074D8;
  v3[4] = self;
  [selectors enumerateSelectorsUsingBlock:v3];
}

- (void)enumerateSelectorsAndObjectsUsingBlock:(id)block
{
  blockCopy = block;
  key = 0;
  value = 0;
  memset(&enumerator, 0, sizeof(enumerator));
  NSEnumerateMapTable(&enumerator, self->_map);
  do
  {
    if (!NSNextMapEnumeratorPair(&enumerator, &key, &value))
    {
      break;
    }

    v5 = 0;
    blockCopy[2](blockCopy, key, value, &v5);
  }

  while (v5 != 1);
  NSEndMapTableEnumeration(&enumerator);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && NSCompareMapTables(self->_map, equalCopy[1]);

  return v5;
}

@end