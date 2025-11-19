@interface PXGConcreteHostingControllerPresenter
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (PXGHostingController)hostingController;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)performChanges:(id)a3;
- (void)setDisplayScale:(double)a3;
@end

@implementation PXGConcreteHostingControllerPresenter

- (PXGHostingController)hostingController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingController);

  return WeakRetained;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingController);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__PXGConcreteHostingControllerPresenter_dealloc__block_invoke;
    block[3] = &unk_1E774C648;
    v8 = v4;
    dispatch_async(v5, block);
  }

  v6.receiver = self;
  v6.super_class = PXGConcreteHostingControllerPresenter;
  [(PXGConcreteHostingControllerPresenter *)&v6 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [(PXGConcreteHostingControllerPresenter *)self size];
    v7 = v6;
    v9 = v8;
    [v5 size];
    if (v7 == v11 && v9 == v10)
    {
      [(PXGConcreteHostingControllerPresenter *)self displayScale];
      v15 = v14;
      [v5 displayScale];
      v13 = v15 == v16;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setDisplayScale:(double)a3
{
  if (self->_displayScale != a3)
  {
    self->_displayScale = a3;
    self->_didChange = 1;
  }
}

- (void)performChanges:(id)a3
{
  v4 = a3;
  isPerformingChanges = self->_isPerformingChanges;
  v7 = v4;
  if (isPerformingChanges)
  {
    (*(v4 + 2))(v4, self);
    self->_isPerformingChanges = isPerformingChanges;
  }

  else
  {
    self->_didChange = 0;
    (*(v4 + 2))(v4, self);
    self->_isPerformingChanges = isPerformingChanges;
    if (self->_didChange)
    {
      self->_didChange = 0;
      v6 = [(PXGConcreteHostingControllerPresenter *)self hostingController];
      [v6 clientQueue_presenterDidChange:self];
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PXGConcreteHostingControllerPresenter);
  [(PXGConcreteHostingControllerPresenter *)self size];
  [(PXGConcreteHostingControllerPresenter *)v4 setSize:?];
  [(PXGConcreteHostingControllerPresenter *)self displayScale];
  [(PXGConcreteHostingControllerPresenter *)v4 setDisplayScale:?];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(PXGConcreteHostingControllerPresenter *)self size];
  v6 = NSStringFromCGSize(v11);
  [(PXGConcreteHostingControllerPresenter *)self displayScale];
  v8 = [v3 stringWithFormat:@"<%@:%p size:%@ displayScale:%.2f>", v5, self, v6, v7];;

  return v8;
}

@end