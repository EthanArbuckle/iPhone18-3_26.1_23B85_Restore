@interface PXGComponent
+ (id)createWithDefaultDataStore;
- (PXGComponent)initWithDataStore:(id)store;
- (PXGComponentObserver)observer;
- (void)performChanges:(id)changes;
@end

@implementation PXGComponent

+ (id)createWithDefaultDataStore
{
  if (![self elementSize])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGComponent.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"self.elementSize != 0"}];
  }

  v4 = -[PXGComponentDataStore initWithElementSize:]([PXGMutableComponentDataStore alloc], "initWithElementSize:", [self elementSize]);
  v5 = [[self alloc] initWithDataStore:v4];

  return v5;
}

- (PXGComponentObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  nestedChanges = self->_nestedChanges;
  v9 = changesCopy;
  if (!nestedChanges)
  {
    observer = [(PXGComponent *)self observer];
    [observer componentWillPerformChanges:self];

    changesCopy = v9;
    nestedChanges = self->_nestedChanges;
  }

  self->_nestedChanges = nestedChanges + 1;
  (*(changesCopy + 2))(changesCopy, self);
  v7 = self->_nestedChanges - 1;
  self->_nestedChanges = v7;
  if (!v7)
  {
    observer2 = [(PXGComponent *)self observer];
    [observer2 componentDidPerformChanges:self];
  }
}

- (PXGComponent)initWithDataStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = PXGComponent;
  v7 = [(PXGComponent *)&v13 init];
  if (v7)
  {
    elementSize = [storeCopy elementSize];
    if (elementSize != [objc_opt_class() elementSize])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v7 file:@"PXGComponent.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"dataStore.elementSize == self.class.elementSize"}];
    }

    objc_storeStrong(&v7->_mutableDataStore, store);
    if ([objc_opt_class() shouldDiffForChanges])
    {
      v9 = [storeCopy mutableCopy];
      previousDataStore = v7->_previousDataStore;
      v7->_previousDataStore = v9;
    }
  }

  return v7;
}

@end