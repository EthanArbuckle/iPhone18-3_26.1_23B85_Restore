@interface PXGEntityManager
- ($738B17BD11CC339B30296C0EA03CEC2B)createEntity;
- (BOOL)_hasObserversForComponent:(id)component;
- (PXGEffectComponent)effectComponent;
- (PXGEntityManager)init;
- (PXGEntityManager)initWithQueue:(id)queue;
- (PXGLoadingStatusComponent)loadingStatus;
- (id)componentForClass:(Class)class;
- (id)componentsForComponentClasses:(id)classes;
- (id)description;
- (void)_configureComponent:(id)component;
- (void)_notifyChangesForComponent:(id)component;
- (void)cleanupUnusedObjects;
- (void)componentDidPerformChanges:(id)changes;
- (void)createEntitiesWithCount:(int64_t)count addingToArray:(id *)array;
- (void)destroyEntities:(id *)entities count:(int64_t)count;
- (void)registerObserver:(id)observer forComponents:(id)components;
- (void)setCapacity:(int64_t)capacity;
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

- (void)componentDidPerformChanges:(id)changes
{
  changesCopy = changes;
  --self->_componentsPerformingChangesCount;
  v4 = [(PXGEntityManager *)self _hasObserversForComponent:changesCopy];
  previousDataStore = [changesCopy previousDataStore];
  dataStore = [changesCopy dataStore];
  if (v4)
  {
    v7 = [previousDataStore isEqual:dataStore];

    if ((v7 & 1) == 0)
    {
      previousDataStore2 = [changesCopy previousDataStore];
      dataStore2 = [changesCopy dataStore];
      [previousDataStore2 setContentsFrom:dataStore2];

      [(PXGEntityManager *)self _notifyChangesForComponent:changesCopy];
    }
  }

  else
  {
    [previousDataStore setContentsFrom:dataStore];
  }
}

- (void)registerObserver:(id)observer forComponents:(id)components
{
  v19 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  componentsCopy = components;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [componentsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(componentsCopy);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        weakObjectsHashTable = [(NSMapTable *)self->_observersByComponent objectForKey:v12];
        if (!weakObjectsHashTable)
        {
          weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
          [(NSMapTable *)self->_observersByComponent setObject:weakObjectsHashTable forKey:v12];
        }

        [weakObjectsHashTable addObject:observerCopy];
      }

      v9 = [componentsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)_notifyChangesForComponent:(id)component
{
  v15 = *MEMORY[0x277D85DE8];
  componentCopy = component;
  v5 = [(NSMapTable *)self->_observersByComponent objectForKey:componentCopy];
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

        [*(*(&v10 + 1) + 8 * v9++) entityManager:self componentDidChange:componentCopy];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)_hasObserversForComponent:(id)component
{
  v3 = [(NSMapTable *)self->_observersByComponent objectForKey:component];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)componentsForComponentClasses:(id)classes
{
  v3 = PFMap();

  return v3;
}

- (id)componentForClass:(Class)class
{
  createWithDefaultDataStore = [(NSMapTable *)self->_componentByClass objectForKey:?];
  if (!createWithDefaultDataStore)
  {
    createWithDefaultDataStore = [(objc_class *)class createWithDefaultDataStore];
    [createWithDefaultDataStore setObserver:self];
    [(PXGEntityManager *)self _configureComponent:createWithDefaultDataStore];
    [(NSMapTable *)self->_componentByClass setObject:createWithDefaultDataStore forKey:class];
    [(NSMutableArray *)self->_components addObject:createWithDefaultDataStore];
  }

  return createWithDefaultDataStore;
}

- (void)_configureComponent:(id)component
{
  componentCopy = component;
  capacity = [(PXGEntityManager *)self capacity];
  dataStore = [componentCopy dataStore];
  [dataStore setCapacity:capacity];

  capacity2 = [(PXGEntityManager *)self capacity];
  previousDataStore = [componentCopy previousDataStore];

  [previousDataStore setCapacity:capacity2];
}

- (void)destroyEntities:(id *)entities count:(int64_t)count
{
  v20 = *MEMORY[0x277D85DE8];
  if (count)
  {
    countCopy = count;
    if (self->_componentsPerformingChangesCount)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGEntityManager.m" lineNumber:99 description:{@"Destroying entity while changing components, this is not supported."}];
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

          [*(*(&v15 + 1) + 8 * v11++) willDestroyEntities:entities count:{countCopy, v15}];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    if (countCopy >= 1)
    {
      do
      {
        var0 = entities->var0;
        ++entities;
        [(NSMutableIndexSet *)self->_reusableEntityIDs addIndex:var0, v15];
        --countCopy;
      }

      while (countCopy);
    }
  }
}

- (void)createEntitiesWithCount:(int64_t)count addingToArray:(id *)array
{
  if (self->_componentsPerformingChangesCount)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGEntityManager.m" lineNumber:77 description:{@"Creating entity while changing components, this is not supported."}];
  }

  v7 = [(NSMutableIndexSet *)self->_reusableEntityIDs count];
  [(PXGEntityManager *)self setCapacity:((count - v7) & ~((count - v7) >> 63)) + [(PXGEntityManager *)self capacity]];
  v8 = self->_reusableEntityIDs;
  if (count >= 1)
  {
    v12 = v8;
    do
    {
      firstIndex = [(NSMutableIndexSet *)v12 firstIndex];
      [(NSMutableIndexSet *)v12 removeIndex:firstIndex];
      v8 = v12;
      array->var0 = firstIndex;
      ++array;
      --count;
    }

    while (count);
  }
}

- ($738B17BD11CC339B30296C0EA03CEC2B)createEntity
{
  v3.var0 = 0;
  [(PXGEntityManager *)self createEntitiesWithCount:1 addingToArray:&v3];
  return v3;
}

- (void)setCapacity:(int64_t)capacity
{
  v18 = *MEMORY[0x277D85DE8];
  capacity = self->_capacity;
  if (capacity != capacity)
  {
    if (capacity >= capacity)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGEntityManager.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"capacity > _capacity"}];

      capacity = self->_capacity;
    }

    self->_capacity = capacity;
    [(NSMutableIndexSet *)self->_reusableEntityIDs addIndexesInRange:capacity, capacity - capacity];
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
  capacity = [(PXGEntityManager *)self capacity];
  px_shortDescription = [(NSMutableIndexSet *)self->_reusableEntityIDs px_shortDescription];
  v8 = [v3 stringWithFormat:@"<%@: %p, capacity:%ld, reusable:%@>", v5, self, capacity, px_shortDescription];

  return v8;
}

- (PXGEntityManager)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGEntityManager.m" lineNumber:47 description:{@"%s is not available as initializer", "-[PXGEntityManager init]"}];

  abort();
}

- (PXGEntityManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = PXGEntityManager;
  v6 = [(PXGEntityManager *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    observersByComponent = v7->_observersByComponent;
    v7->_observersByComponent = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    componentByClass = v7->_componentByClass;
    v7->_componentByClass = strongToStrongObjectsMapTable2;

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