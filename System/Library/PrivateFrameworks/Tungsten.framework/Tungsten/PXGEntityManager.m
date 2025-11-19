@interface PXGEntityManager
- ($738B17BD11CC339B30296C0EA03CEC2B)createEntity;
- (BOOL)_hasObserversForComponent:(id)a3;
- (PXGEffectComponent)effectComponent;
- (PXGEntityManager)init;
- (PXGEntityManager)initWithQueue:(id)a3;
- (PXGLoadingStatusComponent)loadingStatus;
- (id)componentForClass:(Class)a3;
- (id)componentsForComponentClasses:(id)a3;
- (id)description;
- (void)_configureComponent:(id)a3;
- (void)_notifyChangesForComponent:(id)a3;
- (void)cleanupUnusedObjects;
- (void)componentDidPerformChanges:(id)a3;
- (void)createEntitiesWithCount:(int64_t)a3 addingToArray:(id *)a4;
- (void)destroyEntities:(id *)a3 count:(int64_t)a4;
- (void)registerObserver:(id)a3 forComponents:(id)a4;
- (void)setCapacity:(int64_t)a3;
@end

@implementation PXGEntityManager

- (PXGLoadingStatusComponent)loadingStatus
{
  v3 = objc_opt_class();

  return [(PXGEntityManager *)self componentForClass:v3];
}

- (PXGEffectComponent)effectComponent
{
  v3 = objc_opt_class();

  return [(PXGEntityManager *)self componentForClass:v3];
}

- (void)cleanupUnusedObjects
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_components;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) cleanupUnusedObjects];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)componentDidPerformChanges:(id)a3
{
  v10 = a3;
  --self->_componentsPerformingChangesCount;
  v4 = [(PXGEntityManager *)self _hasObserversForComponent:v10];
  v5 = [v10 previousDataStore];
  v6 = [v10 dataStore];
  if (v4)
  {
    v7 = [v5 isEqual:v6];

    if ((v7 & 1) == 0)
    {
      v8 = [v10 previousDataStore];
      v9 = [v10 dataStore];
      [v8 setContentsFrom:v9];

      [(PXGEntityManager *)self _notifyChangesForComponent:v10];
    }
  }

  else
  {
    [v5 setContentsFrom:v6];
  }
}

- (void)registerObserver:(id)a3 forComponents:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [(NSMapTable *)self->_observersByComponent objectForKey:v12];
        if (!v13)
        {
          v13 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
          [(NSMapTable *)self->_observersByComponent setObject:v13 forKey:v12];
        }

        [v13 addObject:v6];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)_notifyChangesForComponent:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMapTable *)self->_observersByComponent objectForKey:v4];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) entityManager:self componentDidChange:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)_hasObserversForComponent:(id)a3
{
  v3 = [(NSMapTable *)self->_observersByComponent objectForKey:a3];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)componentsForComponentClasses:(id)a3
{
  v3 = PFMap();

  return v3;
}

- (id)componentForClass:(Class)a3
{
  v5 = [(NSMapTable *)self->_componentByClass objectForKey:?];
  if (!v5)
  {
    v5 = [(objc_class *)a3 createWithDefaultDataStore];
    [v5 setObserver:self];
    [(PXGEntityManager *)self _configureComponent:v5];
    [(NSMapTable *)self->_componentByClass setObject:v5 forKey:a3];
    [(NSMutableArray *)self->_components addObject:v5];
  }

  return v5;
}

- (void)_configureComponent:(id)a3
{
  v4 = a3;
  v5 = [(PXGEntityManager *)self capacity];
  v6 = [v4 dataStore];
  [v6 setCapacity:v5];

  v7 = [(PXGEntityManager *)self capacity];
  v8 = [v4 previousDataStore];

  [v8 setCapacity:v7];
}

- (void)destroyEntities:(id *)a3 count:(int64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v4 = a4;
    if (self->_componentsPerformingChangesCount)
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"PXGEntityManager.m" lineNumber:99 description:{@"Destroying entity while changing components, this is not supported."}];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = self->_components;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v15 + 1) + 8 * v11++) willDestroyEntities:a3 count:{v4, v15}];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    if (v4 >= 1)
    {
      do
      {
        var0 = a3->var0;
        ++a3;
        [(NSMutableIndexSet *)self->_reusableEntityIDs addIndex:var0, v15];
        --v4;
      }

      while (v4);
    }
  }
}

- (void)createEntitiesWithCount:(int64_t)a3 addingToArray:(id *)a4
{
  if (self->_componentsPerformingChangesCount)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXGEntityManager.m" lineNumber:77 description:{@"Creating entity while changing components, this is not supported."}];
  }

  v7 = [(NSMutableIndexSet *)self->_reusableEntityIDs count];
  [(PXGEntityManager *)self setCapacity:((a3 - v7) & ~((a3 - v7) >> 63)) + [(PXGEntityManager *)self capacity]];
  v8 = self->_reusableEntityIDs;
  if (a3 >= 1)
  {
    v12 = v8;
    do
    {
      v9 = [(NSMutableIndexSet *)v12 firstIndex];
      [(NSMutableIndexSet *)v12 removeIndex:v9];
      v8 = v12;
      a4->var0 = v9;
      ++a4;
      --a3;
    }

    while (a3);
  }
}

- ($738B17BD11CC339B30296C0EA03CEC2B)createEntity
{
  v3.var0 = 0;
  [(PXGEntityManager *)self createEntitiesWithCount:1 addingToArray:&v3];
  return v3;
}

- (void)setCapacity:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  capacity = self->_capacity;
  if (capacity != a3)
  {
    if (capacity >= a3)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXGEntityManager.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"capacity > _capacity"}];

      capacity = self->_capacity;
    }

    self->_capacity = a3;
    [(NSMutableIndexSet *)self->_reusableEntityIDs addIndexesInRange:capacity, a3 - capacity];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_components;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(PXGEntityManager *)self _configureComponent:*(*(&v13 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXGEntityManager *)self capacity];
  v7 = [(NSMutableIndexSet *)self->_reusableEntityIDs px_shortDescription];
  v8 = [v3 stringWithFormat:@"<%@: %p, capacity:%ld, reusable:%@>", v5, self, v6, v7];

  return v8;
}

- (PXGEntityManager)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGEntityManager.m" lineNumber:47 description:{@"%s is not available as initializer", "-[PXGEntityManager init]"}];

  abort();
}

- (PXGEntityManager)initWithQueue:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = PXGEntityManager;
  v6 = [(PXGEntityManager *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    observersByComponent = v7->_observersByComponent;
    v7->_observersByComponent = v8;

    v10 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    componentByClass = v7->_componentByClass;
    v7->_componentByClass = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    components = v7->_components;
    v7->_components = v12;

    v14 = objc_alloc_init(MEMORY[0x277CCAB58]);
    reusableEntityIDs = v7->_reusableEntityIDs;
    v7->_reusableEntityIDs = v14;

    [(PXGEntityManager *)v7 setCapacity:2];
    [(NSMutableIndexSet *)v7->_reusableEntityIDs removeIndex:0];
  }

  return v7;
}

@end