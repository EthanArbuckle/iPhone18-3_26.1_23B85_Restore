@interface CROrderedIndexSet
- (CROrderedIndexSet)initWithArray:(id)a3;
- (NSArray)indices;
- (id)objects;
- (id)subIndexSetWithRange:(_NSRange)a3;
- (unint64_t)count;
- (void)addAllIndices;
- (void)addIndex:(unint64_t)a3;
- (void)addIndexSet:(id)a3;
- (void)addIndices:(id)a3;
- (void)enumerateObjectsUsingBlock:(id)a3;
@end

@implementation CROrderedIndexSet

- (CROrderedIndexSet)initWithArray:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CROrderedIndexSet;
  v6 = [(CROrderedIndexSet *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceArray, a3);
    v8 = objc_opt_new();
    indexedObjects = v7->_indexedObjects;
    v7->_indexedObjects = v8;

    v10 = objc_opt_new();
    indicesSet = v7->_indicesSet;
    v7->_indicesSet = v10;
  }

  return v7;
}

- (id)subIndexSetWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(CROrderedIndexSet *)self indices];
  v7 = [v6 subarrayWithRange:{location, length}];

  if (v7)
  {
    v8 = [CROrderedIndexSet alloc];
    v9 = [(CROrderedIndexSet *)self sourceArray];
    v10 = [(CROrderedIndexSet *)v8 initWithArray:v9];

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
  v2 = [(CROrderedIndexSet *)self indicesSet];
  v3 = [v2 array];

  return v3;
}

- (id)objects
{
  v2 = [(CROrderedIndexSet *)self indexedObjects];
  v3 = [v2 copy];

  return v3;
}

- (unint64_t)count
{
  v2 = [(CROrderedIndexSet *)self indices];
  v3 = [v2 count];

  return v3;
}

- (void)addIndex:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(CROrderedIndexSet *)self sourceArray];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v14 = CROSLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v17 = a3;
      _os_log_impl(&dword_1B40D2000, v14, OS_LOG_TYPE_FAULT, "Attempting to add an out-of-bounds index %lu to ordered index set", buf, 0xCu);
    }
  }

  else
  {
    v7 = [(CROrderedIndexSet *)self indicesSet];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v9 = [v7 containsObject:v8];

    if ((v9 & 1) == 0)
    {
      v10 = [(CROrderedIndexSet *)self indicesSet];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [v10 addObject:v11];

      v15 = [(CROrderedIndexSet *)self indexedObjects];
      v12 = [(CROrderedIndexSet *)self sourceArray];
      v13 = [v12 objectAtIndexedSubscript:a3];
      [v15 addObject:v13];
    }
  }
}

- (void)addIndices:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        -[CROrderedIndexSet addIndex:](self, "addIndex:", [*(*(&v9 + 1) + 8 * v8++) unsignedIntegerValue]);
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addIndexSet:(id)a3
{
  v4 = a3;
  v5 = [v4 sourceArray];
  v6 = [(CROrderedIndexSet *)self sourceArray];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [v4 indices];
    [(CROrderedIndexSet *)self addIndices:v8];
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
  v3 = [(CROrderedIndexSet *)self sourceArray];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    do
    {
      [(CROrderedIndexSet *)self addIndex:v5++];
      v6 = [(CROrderedIndexSet *)self sourceArray];
      v7 = [v6 count];
    }

    while (v5 < v7);
  }
}

- (void)enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(CROrderedIndexSet *)self indices];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CROrderedIndexSet_enumerateObjectsUsingBlock___block_invoke;
  v7[3] = &unk_1E7BC2D60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
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