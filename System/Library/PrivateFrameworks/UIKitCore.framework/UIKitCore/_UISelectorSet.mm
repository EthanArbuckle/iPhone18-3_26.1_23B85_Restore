@interface _UISelectorSet
- (BOOL)isEqual:(id)equal;
- (_UISelectorSet)init;
- (_UISelectorSet)initWithHash:(id)hash;
- (_UISelectorSet)initWithSelectors:(SEL)selectors;
- (id)copyWithZone:(_NSZone *)zone;
- (void)enumerateSelectorsUsingBlock:(id)block;
@end

@implementation _UISelectorSet

- (_UISelectorSet)initWithHash:(id)hash
{
  hashCopy = hash;
  v9.receiver = self;
  v9.super_class = _UISelectorSet;
  v6 = [(_UISelectorSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hash, hash);
  }

  return v7;
}

- (_UISelectorSet)init
{
  if (!init_pointerFunctions)
  {
    v3 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:256];
    v4 = init_pointerFunctions;
    init_pointerFunctions = v3;

    [init_pointerFunctions setDescriptionFunction:selectorDescription_0];
  }

  v5 = objc_alloc(MEMORY[0x1E696AC70]);
  v6 = [v5 initWithPointerFunctions:init_pointerFunctions capacity:0];
  v7 = [(_UISelectorSet *)self initWithHash:v6];

  return v7;
}

- (_UISelectorSet)initWithSelectors:(SEL)selectors
{
  v4 = [(_UISelectorSet *)self init];
  if (v4)
  {
    v7 = &v8;
    if (selectors)
    {
      do
      {
        NSHashInsert(v4->_hash, selectors);
        v5 = v7++;
        selectors = *v5;
      }

      while (*v5);
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [_UISelectorSet alloc];
  v6 = [(NSHashTable *)self->_hash copyWithZone:zone];
  v7 = [(_UISelectorSet *)v5 initWithHash:v6];

  return v7;
}

- (void)enumerateSelectorsUsingBlock:(id)block
{
  blockCopy = block;
  memset(&enumerator, 0, sizeof(enumerator));
  NSEnumerateHashTable(&enumerator, self->_hash);
  do
  {
    v5 = NSNextHashEnumeratorItem(&enumerator);
    if (!v5)
    {
      break;
    }

    v6 = 0;
    blockCopy[2](blockCopy, v5, &v6);
  }

  while (v6 != 1);
  NSEndHashTableEnumeration(&enumerator);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && NSCompareHashTables(self->_hash, equalCopy[1]);

  return v5;
}

@end