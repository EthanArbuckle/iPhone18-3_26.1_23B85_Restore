@interface PXFeatureSpecManager
- (PXFeatureSpec)spec;
- (PXFeatureSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options;
- (id)createSpec;
- (void)_setSpec:(id)spec;
- (void)_updateSpec;
- (void)invalidateSpec;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PXFeatureSpecManager

- (PXFeatureSpec)spec
{
  spec = self->_spec;
  if (!spec)
  {
    createSpec = [(PXFeatureSpecManager *)self createSpec];
    v5 = self->_spec;
    self->_spec = createSpec;

    spec = self->_spec;
  }

  return spec;
}

- (void)invalidateSpec
{
  if (self->_spec)
  {
    [(PXFeatureSpecManager *)self _updateSpec];
  }
}

- (void)_updateSpec
{
  kdebug_trace();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__PXFeatureSpecManager__updateSpec__block_invoke;
  v3[3] = &unk_1E7BB69B0;
  v3[4] = self;
  [(PXObservable *)self performChanges:v3];
  kdebug_trace();
}

void __35__PXFeatureSpecManager__updateSpec__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) createSpec];
  [*(a1 + 32) _setSpec:v2];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PXExtendedTraitCollectionObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeatureSpecManager.m" lineNumber:101 description:@"unexpectd context"];

    abort();
  }

  extendedTraitCollection = [(PXFeatureSpecManager *)self extendedTraitCollection];
  v10 = [(PXFeatureSpecManager *)self shouldUpdateSpecForExtendedTraitCollection:extendedTraitCollection change:change];

  if (v10)
  {
    [(PXFeatureSpecManager *)self _updateSpec];
  }
}

- (void)_setSpec:(id)spec
{
  specCopy = spec;
  v6 = specCopy;
  if (self->_spec != specCopy)
  {
    v7 = specCopy;
    specCopy = [specCopy isEqual:?];
    v6 = v7;
    if ((specCopy & 1) == 0)
    {
      objc_storeStrong(&self->_spec, spec);
      specCopy = [(PXObservable *)self signalChange:1];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](specCopy, v6);
}

- (id)createSpec
{
  extendedTraitCollection = [(PXFeatureSpecManager *)self extendedTraitCollection];
  v4 = [objc_alloc(-[PXFeatureSpecManager specClass](self "specClass"))];

  return v4;
}

- (PXFeatureSpecManager)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options
{
  collectionCopy = collection;
  v11.receiver = self;
  v11.super_class = PXFeatureSpecManager;
  v8 = [(PXObservable *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_options = options;
    objc_storeStrong(&v8->_extendedTraitCollection, collection);
    [(PXObservable *)v9->_extendedTraitCollection registerChangeObserver:v9 context:PXExtendedTraitCollectionObservationContext];
  }

  return v9;
}

@end