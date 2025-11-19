@interface REOrderingArray
- (REOrderingArray)initWithComparators:(id)a3;
- (void)_createDependenciesForObject:(id)a3;
- (void)_performOrMarkUpdate;
- (void)_updateContentOrder;
- (void)addObject:(id)a3;
- (void)performBatchUpdates:(id)a3;
- (void)removeObject:(id)a3;
- (void)updateObject:(id)a3;
@end

@implementation REOrderingArray

- (REOrderingArray)initWithComparators:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = REOrderingArray;
  v6 = [(REOrderingArray *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_comparators, a3);
    orderedObjects = v7->_orderedObjects;
    v7->_orderedObjects = MEMORY[0x277CBEBF8];

    v9 = [[REDependencyGraph alloc] initWithPointerFunctions:0];
    dependencyGraph = v7->_dependencyGraph;
    v7->_dependencyGraph = v9;
  }

  return v7;
}

- (void)_createDependenciesForObject:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self->_comparators count]>= 2)
  {
    v5 = 1;
    do
    {
      v6 = [(NSArray *)self->_comparators objectAtIndexedSubscript:v5];
      dependencyGraph = self->_dependencyGraph;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __48__REOrderingArray__createDependenciesForObject___block_invoke;
      v10[3] = &unk_2785FAB58;
      v8 = v4;
      v12 = self;
      v13 = v6;
      v11 = v8;
      v9 = v6;
      [(REDependencyGraph *)dependencyGraph enumerateObjectsUsingBlock:v10];

      ++v5;
    }

    while (v5 < [(NSArray *)self->_comparators count]);
  }
}

uint64_t __48__REOrderingArray__createDependenciesForObject___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1[4] != v3)
  {
    v9 = v3;
    v3 = (*(a1[6] + 16))();
    if (v3 == -1)
    {
      v7 = a1[4];
      v6 = *(a1[5] + 16);
      v5 = v9;
    }

    else
    {
      v4 = v9;
      if (v3 != 1)
      {
        goto LABEL_7;
      }

      v5 = a1[4];
      v6 = *(a1[5] + 16);
      v7 = v9;
    }

    v3 = [v6 markItem:v7 dependentOnItem:v5];
    v4 = v9;
  }

LABEL_7:

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)addObject:(id)a3
{
  dependencyGraph = self->_dependencyGraph;
  v5 = a3;
  [(REDependencyGraph *)dependencyGraph addItem:v5];
  [(REOrderingArray *)self _createDependenciesForObject:v5];

  [(REOrderingArray *)self _performOrMarkUpdate];
}

- (void)removeObject:(id)a3
{
  [(REDependencyGraph *)self->_dependencyGraph removeItem:a3];

  [(REOrderingArray *)self _performOrMarkUpdate];
}

- (void)updateObject:(id)a3
{
  dependencyGraph = self->_dependencyGraph;
  v5 = a3;
  [(REDependencyGraph *)dependencyGraph removeItem:v5];
  [(REDependencyGraph *)self->_dependencyGraph addItem:v5];
  [(REOrderingArray *)self _createDependenciesForObject:v5];

  [(REOrderingArray *)self _performOrMarkUpdate];
}

- (void)performBatchUpdates:(id)a3
{
  v4 = a3;
  batchCount = self->_batchCount;
  self->_batchCount = batchCount + 1;
  v6 = v4;
  if (v4)
  {
    (*(v4 + 2))();
    batchCount = self->_batchCount - 1;
  }

  self->_batchCount = batchCount;
  if (!batchCount && self->_needsUpdate)
  {
    [(REOrderingArray *)self _updateContentOrder];
  }
}

- (void)_performOrMarkUpdate
{
  if (self->_batchCount)
  {
    self->_needsUpdate = 1;
  }

  else
  {
    [(REOrderingArray *)self _updateContentOrder];
  }
}

- (void)_updateContentOrder
{
  self->_needsUpdate = 0;
  v3 = [(NSArray *)self->_comparators firstObject];
  dependencyGraph = self->_dependencyGraph;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__REOrderingArray__updateContentOrder__block_invoke;
  v8[3] = &unk_2785FAB80;
  v9 = v3;
  v5 = v3;
  v6 = [(REDependencyGraph *)dependencyGraph topologicalSortedItemsWithComparator:v8];
  orderedObjects = self->_orderedObjects;
  self->_orderedObjects = v6;
}

@end