@interface PXLayoutEngine
- (PXLayoutEngine)initWithLayoutGenerator:(id)generator dataSourceSnapshot:(id)snapshot;
- (PXLayoutEngineDelegate)delegate;
- (id)computeLayoutSnapshot;
- (id)performChangesAndWait:(id)wait;
- (void)_publishChanges;
- (void)_updateIfNeeded;
- (void)_updateLayoutDataIfNeeded;
- (void)_updateLayoutSnapshotIfNeeded;
- (void)performChanges:(id)changes;
- (void)setDataSourceSnapshot:(id)snapshot;
- (void)setDataSourceSnapshot:(id)snapshot withChangeDetails:(id)details;
- (void)setLayoutSnapshot:(id)snapshot;
- (void)setSeedItem:(id)item;
- (void)updateLayoutDataWithChangeDetails:(id)details;
@end

@implementation PXLayoutEngine

- (PXLayoutEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)computeLayoutSnapshot
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXLayoutEngine.m" lineNumber:189 description:@"-computeLayoutSnapshot: must be overriden"];

  return 0;
}

- (void)updateLayoutDataWithChangeDetails:(id)details
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXLayoutEngine.m" lineNumber:185 description:@"-updateLayoutDataWithChangeDetails: must be overriden"];
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

- (void)setLayoutSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (!snapshotCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXLayoutEngine.m" lineNumber:152 description:@"layoutSnapshot cannot be nil"];

    snapshotCopy = 0;
  }

  p_layoutSnapshot = &self->_layoutSnapshot;
  if (self->_layoutSnapshot != snapshotCopy)
  {
    v9 = snapshotCopy;
    objc_storeStrong(p_layoutSnapshot, snapshot);
    [(PXLayoutSnapshot *)self->_layoutSnapshot setDataSourceSnapshot:self->_dataSourceSnapshot];
    p_layoutSnapshot = [(PXLayoutEngine *)self _publishChanges];
    snapshotCopy = v9;
  }

  MEMORY[0x1EEE66BB8](p_layoutSnapshot, snapshotCopy);
}

- (void)setDataSourceSnapshot:(id)snapshot withChangeDetails:(id)details
{
  detailsCopy = details;
  [(PXLayoutEngine *)self setDataSourceSnapshot:snapshot];
  [(PXLayoutEngine *)self setChangeDetails:detailsCopy];

  [(PXLayoutEngine *)self invalidateLayoutData];
}

- (void)setDataSourceSnapshot:(id)snapshot
{
  if (self->_dataSourceSnapshot != snapshot)
  {
    v5 = [snapshot copyWithZone:0];
    dataSourceSnapshot = self->_dataSourceSnapshot;
    self->_dataSourceSnapshot = v5;

    MEMORY[0x1EEE66BB8](v5, dataSourceSnapshot);
  }
}

- (void)setSeedItem:(id)item
{
  itemCopy = item;
  v6 = itemCopy;
  if (self->_seedItem != itemCopy)
  {
    v7 = itemCopy;
    itemCopy = [itemCopy isEqual:?];
    v6 = v7;
    if ((itemCopy & 1) == 0)
    {
      objc_storeStrong(&self->_seedItem, item);
      itemCopy = [(PXLayoutEngine *)self invalidateLayoutSnapshot];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](itemCopy, v6);
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
      computeLayoutSnapshot = [(PXLayoutEngine *)self computeLayoutSnapshot];
      v4 = computeLayoutSnapshot;
      if (computeLayoutSnapshot)
      {
        v5 = computeLayoutSnapshot;
        computeLayoutSnapshot = [(PXLayoutEngine *)self setLayoutSnapshot:computeLayoutSnapshot];
        v4 = v5;
      }

      MEMORY[0x1EEE66BB8](computeLayoutSnapshot, v4);
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXLayoutEngine.m" lineNumber:90 description:@"updates still needed after an update cycle"];
    }
  }
}

- (id)performChangesAndWait:(id)wait
{
  waitCopy = wait;
  internalWorkQueue = self->_internalWorkQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__PXLayoutEngine_performChangesAndWait___block_invoke;
  v10[3] = &unk_1E7BB7DA8;
  v10[4] = self;
  v11 = waitCopy;
  v6 = waitCopy;
  dispatch_sync(internalWorkQueue, v10);
  layoutSnapshot = self->_layoutSnapshot;
  v8 = layoutSnapshot;

  return layoutSnapshot;
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PXLayoutEngine_performChanges___block_invoke;
  block[3] = &unk_1E7BB6AB0;
  objc_copyWeak(&v9, &location);
  v8 = changesCopy;
  v6 = changesCopy;
  dispatch_async(internalWorkQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __33__PXLayoutEngine_performChanges___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  _InternalWorkQueue_PerformChanges(WeakRetained, *(a1 + 32));
}

- (PXLayoutEngine)initWithLayoutGenerator:(id)generator dataSourceSnapshot:(id)snapshot
{
  generatorCopy = generator;
  snapshotCopy = snapshot;
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

    v13 = [generatorCopy copy];
    layoutGenerator = v8->_layoutGenerator;
    v8->_layoutGenerator = v13;

    [(PXLayoutEngine *)v8 setDataSourceSnapshot:snapshotCopy withChangeDetails:0];
  }

  return v8;
}

@end