@interface PXLayoutEngine
- (PXLayoutEngine)initWithLayoutGenerator:(id)a3 dataSourceSnapshot:(id)a4;
- (PXLayoutEngineDelegate)delegate;
- (id)computeLayoutSnapshot;
- (id)performChangesAndWait:(id)a3;
- (void)_publishChanges;
- (void)_updateIfNeeded;
- (void)_updateLayoutDataIfNeeded;
- (void)_updateLayoutSnapshotIfNeeded;
- (void)performChanges:(id)a3;
- (void)setDataSourceSnapshot:(id)a3;
- (void)setDataSourceSnapshot:(id)a3 withChangeDetails:(id)a4;
- (void)setLayoutSnapshot:(id)a3;
- (void)setSeedItem:(id)a3;
- (void)updateLayoutDataWithChangeDetails:(id)a3;
@end

@implementation PXLayoutEngine

- (PXLayoutEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)computeLayoutSnapshot
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXLayoutEngine.m" lineNumber:189 description:@"-computeLayoutSnapshot: must be overriden"];

  return 0;
}

- (void)updateLayoutDataWithChangeDetails:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXLayoutEngine.m" lineNumber:185 description:@"-updateLayoutDataWithChangeDetails: must be overriden"];
}

- (void)_publishChanges
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __33__PXLayoutEngine__publishChanges__block_invoke;
  v2[3] = &unk_1E7BB8858;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __33__PXLayoutEngine__publishChanges__block_invoke(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 layoutEngineDidUpdateLayoutSnapshot:v2];
  }
}

- (void)setLayoutSnapshot:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXLayoutEngine.m" lineNumber:152 description:@"layoutSnapshot cannot be nil"];

    v6 = 0;
  }

  p_layoutSnapshot = &self->_layoutSnapshot;
  if (self->_layoutSnapshot != v6)
  {
    v9 = v6;
    objc_storeStrong(p_layoutSnapshot, a3);
    [(PXLayoutSnapshot *)self->_layoutSnapshot setDataSourceSnapshot:self->_dataSourceSnapshot];
    p_layoutSnapshot = [(PXLayoutEngine *)self _publishChanges];
    v6 = v9;
  }

  MEMORY[0x1EEE66BB8](p_layoutSnapshot, v6);
}

- (void)setDataSourceSnapshot:(id)a3 withChangeDetails:(id)a4
{
  v6 = a4;
  [(PXLayoutEngine *)self setDataSourceSnapshot:a3];
  [(PXLayoutEngine *)self setChangeDetails:v6];

  [(PXLayoutEngine *)self invalidateLayoutData];
}

- (void)setDataSourceSnapshot:(id)a3
{
  if (self->_dataSourceSnapshot != a3)
  {
    v5 = [a3 copyWithZone:0];
    dataSourceSnapshot = self->_dataSourceSnapshot;
    self->_dataSourceSnapshot = v5;

    MEMORY[0x1EEE66BB8](v5, dataSourceSnapshot);
  }
}

- (void)setSeedItem:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_seedItem != v5)
  {
    v7 = v5;
    v5 = [v5 isEqual:?];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_seedItem, a3);
      v5 = [(PXLayoutEngine *)self invalidateLayoutSnapshot];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)_updateLayoutDataIfNeeded
{
  if (self->_needsUpdateFlags.layoutData)
  {
    self->_needsUpdateFlags.layoutData = 0;
    [(PXLayoutEngine *)self updateLayoutDataWithChangeDetails:self->_changeDetails];

    [(PXLayoutEngine *)self setChangeDetails:0];
  }
}

- (void)_updateLayoutSnapshotIfNeeded
{
  if (self->_needsUpdateFlags.layoutSnapshot)
  {
    self->_needsUpdateFlags.layoutSnapshot = 0;
    if ([(PXLayoutEngine *)self canComputeLayoutSnapshot])
    {
      v3 = [(PXLayoutEngine *)self computeLayoutSnapshot];
      v4 = v3;
      if (v3)
      {
        v5 = v3;
        v3 = [(PXLayoutEngine *)self setLayoutSnapshot:v3];
        v4 = v5;
      }

      MEMORY[0x1EEE66BB8](v3, v4);
    }
  }
}

- (void)_updateIfNeeded
{
  if ([(PXLayoutEngine *)self _needsUpdate])
  {
    [(PXLayoutEngine *)self _updateLayoutDataIfNeeded];
    [(PXLayoutEngine *)self _updateLayoutSnapshotIfNeeded];
    if ([(PXLayoutEngine *)self _needsUpdate])
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:a2 object:self file:@"PXLayoutEngine.m" lineNumber:90 description:@"updates still needed after an update cycle"];
    }
  }
}

- (id)performChangesAndWait:(id)a3
{
  v4 = a3;
  internalWorkQueue = self->_internalWorkQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__PXLayoutEngine_performChangesAndWait___block_invoke;
  v10[3] = &unk_1E7BB7DA8;
  v10[4] = self;
  v11 = v4;
  v6 = v4;
  dispatch_sync(internalWorkQueue, v10);
  layoutSnapshot = self->_layoutSnapshot;
  v8 = layoutSnapshot;

  return layoutSnapshot;
}

- (void)performChanges:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PXLayoutEngine_performChanges___block_invoke;
  block[3] = &unk_1E7BB6AB0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(internalWorkQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __33__PXLayoutEngine_performChanges___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  _InternalWorkQueue_PerformChanges(WeakRetained, *(a1 + 32));
}

- (PXLayoutEngine)initWithLayoutGenerator:(id)a3 dataSourceSnapshot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PXLayoutEngine;
  v8 = [(PXLayoutEngine *)&v16 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_UTILITY, 0);

    v11 = dispatch_queue_create("com.apple.photosUICore.layoutEngine.internalWork-queue", v10);
    internalWorkQueue = v8->_internalWorkQueue;
    v8->_internalWorkQueue = v11;

    v13 = [v6 copy];
    layoutGenerator = v8->_layoutGenerator;
    v8->_layoutGenerator = v13;

    [(PXLayoutEngine *)v8 setDataSourceSnapshot:v7 withChangeDetails:0];
  }

  return v8;
}

@end