@interface PXGComponent
+ (id)createWithDefaultDataStore;
- (PXGComponent)initWithDataStore:(id)a3;
- (PXGComponentObserver)observer;
- (void)performChanges:(id)a3;
@end

@implementation PXGComponent

+ (id)createWithDefaultDataStore
{
  if (![a1 elementSize])
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"PXGComponent.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"self.elementSize != 0"}];
  }

  v4 = -[PXGComponentDataStore initWithElementSize:]([PXGMutableComponentDataStore alloc], "initWithElementSize:", [a1 elementSize]);
  v5 = [[a1 alloc] initWithDataStore:v4];

  return v5;
}

- (PXGComponentObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)performChanges:(id)a3
{
  v4 = a3;
  nestedChanges = self->_nestedChanges;
  v9 = v4;
  if (!nestedChanges)
  {
    v6 = [(PXGComponent *)self observer];
    [v6 componentWillPerformChanges:self];

    v4 = v9;
    nestedChanges = self->_nestedChanges;
  }

  self->_nestedChanges = nestedChanges + 1;
  (*(v4 + 2))(v4, self);
  v7 = self->_nestedChanges - 1;
  self->_nestedChanges = v7;
  if (!v7)
  {
    v8 = [(PXGComponent *)self observer];
    [v8 componentDidPerformChanges:self];
  }
}

- (PXGComponent)initWithDataStore:(id)a3
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = PXGComponent;
  v7 = [(PXGComponent *)&v13 init];
  if (v7)
  {
    v8 = [v6 elementSize];
    if (v8 != [objc_opt_class() elementSize])
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:v7 file:@"PXGComponent.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"dataStore.elementSize == self.class.elementSize"}];
    }

    objc_storeStrong(&v7->_mutableDataStore, a3);
    if ([objc_opt_class() shouldDiffForChanges])
    {
      v9 = [v6 mutableCopy];
      previousDataStore = v7->_previousDataStore;
      v7->_previousDataStore = v9;
    }
  }

  return v7;
}

@end