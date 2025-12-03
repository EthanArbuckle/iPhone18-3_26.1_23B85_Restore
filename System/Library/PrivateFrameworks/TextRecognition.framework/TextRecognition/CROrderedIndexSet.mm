@interface CROrderedIndexSet
- (CROrderedIndexSet)initWithArray:(id)array;
- (NSArray)indices;
- (id)objects;
- (id)subIndexSetWithRange:(_NSRange)range;
- (unint64_t)count;
- (void)addAllIndices;
- (void)addIndex:(unint64_t)index;
- (void)addIndexSet:(id)set;
- (void)addIndices:(id)indices;
- (void)enumerateObjectsUsingBlock:(id)block;
@end

@implementation CROrderedIndexSet

- (CROrderedIndexSet)initWithArray:(id)array
{
  arrayCopy = array;
  v13.receiver = self;
  v13.super_class = CROrderedIndexSet;
  v6 = [(CROrderedIndexSet *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceArray, array);
    v8 = objc_opt_new();
    indexedObjects = v7->_indexedObjects;
    v7->_indexedObjects = v8;

    v10 = objc_opt_new();
    indicesSet = v7->_indicesSet;
    v7->_indicesSet = v10;
  }

  return v7;
}

- (id)subIndexSetWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  indices = [(CROrderedIndexSet *)self indices];
  v7 = [indices subarrayWithRange:{location, length}];

  if (v7)
  {
    v8 = [CROrderedIndexSet alloc];
    sourceArray = [(CROrderedIndexSet *)self sourceArray];
    v10 = [(CROrderedIndexSet *)v8 initWithArray:sourceArray];

    [(CROrderedIndexSet *)v10 addIndices:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSArray)indices
{
  indicesSet = [(CROrderedIndexSet *)self indicesSet];
  array = [indicesSet array];

  return array;
}

- (id)objects
{
  indexedObjects = [(CROrderedIndexSet *)self indexedObjects];
  v3 = [indexedObjects copy];

  return v3;
}

- (unint64_t)count
{
  indices = [(CROrderedIndexSet *)self indices];
  v3 = [indices count];

  return v3;
}

- (void)addIndex:(unint64_t)index
{
  v18 = *MEMORY[0x1E69E9840];
  sourceArray = [(CROrderedIndexSet *)self sourceArray];
  v6 = [sourceArray count];

  if (v6 <= index)
  {
    v14 = CROSLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      indexCopy = index;
      _os_log_impl(&dword_1B40D2000, v14, OS_LOG_TYPE_FAULT, "Attempting to add an out-of-bounds index %lu to ordered index set", buf, 0xCu);
    }
  }

  else
  {
    indicesSet = [(CROrderedIndexSet *)self indicesSet];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
    v9 = [indicesSet containsObject:v8];

    if ((v9 & 1) == 0)
    {
      indicesSet2 = [(CROrderedIndexSet *)self indicesSet];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
      [indicesSet2 addObject:v11];

      indexedObjects = [(CROrderedIndexSet *)self indexedObjects];
      sourceArray2 = [(CROrderedIndexSet *)self sourceArray];
      v13 = [sourceArray2 objectAtIndexedSubscript:index];
      [indexedObjects addObject:v13];
    }
  }
}

- (void)addIndices:(id)indices
{
  v14 = *MEMORY[0x1E69E9840];
  indicesCopy = indices;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [indicesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(indicesCopy);
        }

        -[CROrderedIndexSet addIndex:](self, "addIndex:", [*(*(&v9 + 1) + 8 * v8++) unsignedIntegerValue]);
      }

      while (v6 != v8);
      v6 = [indicesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addIndexSet:(id)set
{
  setCopy = set;
  sourceArray = [setCopy sourceArray];
  sourceArray2 = [(CROrderedIndexSet *)self sourceArray];
  v7 = [sourceArray isEqual:sourceArray2];

  if (v7)
  {
    indices = [setCopy indices];
    [(CROrderedIndexSet *)self addIndices:indices];
  }

  else
  {
    v9 = CROSLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1B40D2000, v9, OS_LOG_TYPE_FAULT, "Attempting to combine two index sets with different backing arrays", v10, 2u);
    }
  }
}

- (void)addAllIndices
{
  sourceArray = [(CROrderedIndexSet *)self sourceArray];
  v4 = [sourceArray count];

  if (v4)
  {
    v5 = 0;
    do
    {
      [(CROrderedIndexSet *)self addIndex:v5++];
      sourceArray2 = [(CROrderedIndexSet *)self sourceArray];
      v7 = [sourceArray2 count];
    }

    while (v5 < v7);
  }
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  indices = [(CROrderedIndexSet *)self indices];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CROrderedIndexSet_enumerateObjectsUsingBlock___block_invoke;
  v7[3] = &unk_1E7BC2D60;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [indices enumerateObjectsUsingBlock:v7];
}

void __48__CROrderedIndexSet_enumerateObjectsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 unsignedIntegerValue];
  v8 = *(a1 + 40);
  v10 = [*(a1 + 32) sourceArray];
  v9 = [v10 objectAtIndexedSubscript:v7];
  (*(v8 + 16))(v8, v9, v7, a3, a4);
}

@end