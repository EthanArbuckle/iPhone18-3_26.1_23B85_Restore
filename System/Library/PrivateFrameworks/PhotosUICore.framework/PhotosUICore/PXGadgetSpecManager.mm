@interface PXGadgetSpecManager
- (PXGadgetSpecManager)initWithGadgetSpecClass:(Class)class scrollAxis:(int64_t)axis traitCollection:(id)collection;
- (void)_extendedTraitCollection:(id)collection didChange:(unint64_t)change;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)setCurrentGadgetSpec:(id)spec;
- (void)updateGadgetDataSourceToSpecIfNeeded:(id)needed;
@end

@implementation PXGadgetSpecManager

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXGadgetSpecManager;
  [(PXGadgetSpecManager *)&v3 performChanges:changes];
}

- (void)_extendedTraitCollection:(id)collection didChange:(unint64_t)change
{
  collectionCopy = collection;
  currentGadgetSpec = [(PXGadgetSpecManager *)self currentGadgetSpec];
  v7 = [objc_alloc(-[PXGadgetSpecManager gadgetSpecClass](self "gadgetSpecClass"))];

  if (currentGadgetSpec != v7 && ([currentGadgetSpec isEqual:v7] & 1) == 0)
  {
    updatedGadgets = [(PXGadgetSpecManager *)self updatedGadgets];
    [updatedGadgets removeAllObjects];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__PXGadgetSpecManager__extendedTraitCollection_didChange___block_invoke;
  v10[3] = &unk_1E772DD80;
  v11 = v7;
  v9 = v7;
  [(PXGadgetSpecManager *)self performChanges:v10];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PXExtendedTraitCollectionObservationContext == context)
  {
    v16 = observableCopy;
    v10 = observableCopy;
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        [(PXGadgetSpecManager *)self _extendedTraitCollection:v10 didChange:change];

        observableCopy = v16;
        goto LABEL_5;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = objc_opt_class();
      v13 = NSStringFromClass(v14);
      px_descriptionForAssertionMessage = [v10 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetSpecManager.m" lineNumber:79 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v13, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetSpecManager.m" lineNumber:79 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v13}];
    }

    goto LABEL_4;
  }

LABEL_5:
}

- (void)updateGadgetDataSourceToSpecIfNeeded:(id)needed
{
  neededCopy = needed;
  updatedGadgets = [(PXGadgetSpecManager *)self updatedGadgets];
  currentGadgetSpec = [(PXGadgetSpecManager *)self currentGadgetSpec];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__PXGadgetSpecManager_updateGadgetDataSourceToSpecIfNeeded___block_invoke;
  v13[3] = &unk_1E772DD30;
  v7 = currentGadgetSpec;
  v14 = v7;
  [neededCopy enumerateGadgetSectionsUsingBlock:v13];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__PXGadgetSpecManager_updateGadgetDataSourceToSpecIfNeeded___block_invoke_2;
  v10[3] = &unk_1E772DD58;
  v11 = updatedGadgets;
  v12 = v7;
  v8 = v7;
  v9 = updatedGadgets;
  [neededCopy enumerateGadgetsUsingBlock:v10];
}

void __60__PXGadgetSpecManager_updateGadgetDataSourceToSpecIfNeeded___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [v3 setGadgetSpec:*(a1 + 40)];
    [*(a1 + 32) addObject:v3];
  }
}

- (void)setCurrentGadgetSpec:(id)spec
{
  specCopy = spec;
  if (self->_currentGadgetSpec != specCopy)
  {
    v6 = specCopy;
    objc_storeStrong(&self->_currentGadgetSpec, spec);
    [(PXGadgetSpecManager *)self signalChange:1];
    specCopy = v6;
  }
}

- (PXGadgetSpecManager)initWithGadgetSpecClass:(Class)class scrollAxis:(int64_t)axis traitCollection:(id)collection
{
  collectionCopy = collection;
  v17.receiver = self;
  v17.super_class = PXGadgetSpecManager;
  v10 = [(PXGadgetSpecManager *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_gadgetSpecClass, class);
    v11->_scrollAxis = axis;
    objc_storeStrong(&v11->_traitCollection, collection);
    v12 = [[class alloc] initWithTraitCollection:collectionCopy scrollAxis:axis];
    currentGadgetSpec = v11->_currentGadgetSpec;
    v11->_currentGadgetSpec = v12;

    [collectionCopy registerChangeObserver:v11 context:PXExtendedTraitCollectionObservationContext];
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    updatedGadgets = v11->_updatedGadgets;
    v11->_updatedGadgets = weakObjectsHashTable;
  }

  return v11;
}

@end