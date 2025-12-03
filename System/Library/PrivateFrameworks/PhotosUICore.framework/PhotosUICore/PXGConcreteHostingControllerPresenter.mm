@interface PXGConcreteHostingControllerPresenter
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (PXGHostingController)hostingController;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)performChanges:(id)changes;
- (void)setDisplayScale:(double)scale;
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
    clientQueue = [WeakRetained clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__PXGConcreteHostingControllerPresenter_dealloc__block_invoke;
    block[3] = &unk_1E774C648;
    v8 = v4;
    dispatch_async(clientQueue, block);
  }

  v6.receiver = self;
  v6.super_class = PXGConcreteHostingControllerPresenter;
  [(PXGConcreteHostingControllerPresenter *)&v6 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (void)setDisplayScale:(double)scale
{
  if (self->_displayScale != scale)
  {
    self->_displayScale = scale;
    self->_didChange = 1;
  }
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  isPerformingChanges = self->_isPerformingChanges;
  v7 = changesCopy;
  if (isPerformingChanges)
  {
    (*(changesCopy + 2))(changesCopy, self);
    self->_isPerformingChanges = isPerformingChanges;
  }

  else
  {
    self->_didChange = 0;
    (*(changesCopy + 2))(changesCopy, self);
    self->_isPerformingChanges = isPerformingChanges;
    if (self->_didChange)
    {
      self->_didChange = 0;
      hostingController = [(PXGConcreteHostingControllerPresenter *)self hostingController];
      [hostingController clientQueue_presenterDidChange:self];
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
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