@interface PXFeatureSpecManager
- (PXFeatureSpec)spec;
- (PXFeatureSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4;
- (id)createSpec;
- (void)_setSpec:(id)a3;
- (void)_updateSpec;
- (void)invalidateSpec;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PXFeatureSpecManager

- (PXFeatureSpec)spec
{
  spec = self->_spec;
  if (!spec)
  {
    v4 = [(PXFeatureSpecManager *)self createSpec];
    v5 = self->_spec;
    self->_spec = v4;

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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v12 = a3;
  if (PXExtendedTraitCollectionObservationContext != a5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXFeatureSpecManager.m" lineNumber:101 description:@"unexpectd context"];

    abort();
  }

  v9 = [(PXFeatureSpecManager *)self extendedTraitCollection];
  v10 = [(PXFeatureSpecManager *)self shouldUpdateSpecForExtendedTraitCollection:v9 change:a4];

  if (v10)
  {
    [(PXFeatureSpecManager *)self _updateSpec];
  }
}

- (void)_setSpec:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_spec != v5)
  {
    v7 = v5;
    v5 = [v5 isEqual:?];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_spec, a3);
      v5 = [(PXObservable *)self signalChange:1];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (id)createSpec
{
  v3 = [(PXFeatureSpecManager *)self extendedTraitCollection];
  v4 = [objc_alloc(-[PXFeatureSpecManager specClass](self "specClass"))];

  return v4;
}

- (PXFeatureSpecManager)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PXFeatureSpecManager;
  v8 = [(PXObservable *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_options = a4;
    objc_storeStrong(&v8->_extendedTraitCollection, a3);
    [(PXObservable *)v9->_extendedTraitCollection registerChangeObserver:v9 context:PXExtendedTraitCollectionObservationContext];
  }

  return v9;
}

@end