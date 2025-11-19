@interface PXGadgetSpecManager
- (PXGadgetSpecManager)initWithGadgetSpecClass:(Class)a3 scrollAxis:(int64_t)a4 traitCollection:(id)a5;
- (void)_extendedTraitCollection:(id)a3 didChange:(unint64_t)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)setCurrentGadgetSpec:(id)a3;
- (void)updateGadgetDataSourceToSpecIfNeeded:(id)a3;
@end

@implementation PXGadgetSpecManager

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXGadgetSpecManager;
  [(PXGadgetSpecManager *)&v3 performChanges:a3];
}

- (void)_extendedTraitCollection:(id)a3 didChange:(unint64_t)a4
{
  v5 = a3;
  v6 = [(PXGadgetSpecManager *)self currentGadgetSpec];
  v7 = [objc_alloc(-[PXGadgetSpecManager gadgetSpecClass](self "gadgetSpecClass"))];

  if (v6 != v7 && ([v6 isEqual:v7] & 1) == 0)
  {
    v8 = [(PXGadgetSpecManager *)self updatedGadgets];
    [v8 removeAllObjects];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__PXGadgetSpecManager__extendedTraitCollection_didChange___block_invoke;
  v10[3] = &unk_1E772DD80;
  v11 = v7;
  v9 = v7;
  [(PXGadgetSpecManager *)self performChanges:v10];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  if (PXExtendedTraitCollectionObservationContext == a5)
  {
    v16 = v9;
    v10 = v9;
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        [(PXGadgetSpecManager *)self _extendedTraitCollection:v10 didChange:a4];

        v9 = v16;
        goto LABEL_5;
      }

      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = objc_opt_class();
      v13 = NSStringFromClass(v14);
      v15 = [v10 px_descriptionForAssertionMessage];
      [v11 handleFailureInMethod:a2 object:self file:@"PXGadgetSpecManager.m" lineNumber:79 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v13, v15}];
    }

    else
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      [v11 handleFailureInMethod:a2 object:self file:@"PXGadgetSpecManager.m" lineNumber:79 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v13}];
    }

    goto LABEL_4;
  }

LABEL_5:
}

- (void)updateGadgetDataSourceToSpecIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(PXGadgetSpecManager *)self updatedGadgets];
  v6 = [(PXGadgetSpecManager *)self currentGadgetSpec];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__PXGadgetSpecManager_updateGadgetDataSourceToSpecIfNeeded___block_invoke;
  v13[3] = &unk_1E772DD30;
  v7 = v6;
  v14 = v7;
  [v4 enumerateGadgetSectionsUsingBlock:v13];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__PXGadgetSpecManager_updateGadgetDataSourceToSpecIfNeeded___block_invoke_2;
  v10[3] = &unk_1E772DD58;
  v11 = v5;
  v12 = v7;
  v8 = v7;
  v9 = v5;
  [v4 enumerateGadgetsUsingBlock:v10];
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

- (void)setCurrentGadgetSpec:(id)a3
{
  v5 = a3;
  if (self->_currentGadgetSpec != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_currentGadgetSpec, a3);
    [(PXGadgetSpecManager *)self signalChange:1];
    v5 = v6;
  }
}

- (PXGadgetSpecManager)initWithGadgetSpecClass:(Class)a3 scrollAxis:(int64_t)a4 traitCollection:(id)a5
{
  v9 = a5;
  v17.receiver = self;
  v17.super_class = PXGadgetSpecManager;
  v10 = [(PXGadgetSpecManager *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_gadgetSpecClass, a3);
    v11->_scrollAxis = a4;
    objc_storeStrong(&v11->_traitCollection, a5);
    v12 = [[a3 alloc] initWithTraitCollection:v9 scrollAxis:a4];
    currentGadgetSpec = v11->_currentGadgetSpec;
    v11->_currentGadgetSpec = v12;

    [v9 registerChangeObserver:v11 context:PXExtendedTraitCollectionObservationContext];
    v14 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    updatedGadgets = v11->_updatedGadgets;
    v11->_updatedGadgets = v14;
  }

  return v11;
}

@end