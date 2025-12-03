@interface PXAssetSelectionTypeCounter
- ($DE30A600513D762F9B6AB73D2AED4B95)typedCount;
- (PXAssetSelectionTypeCounter)init;
- (PXAssetSelectionTypeCounter)initWithSelectionManager:(id)manager;
- (PXSectionedSelectionManager)selectionManager;
- (id)requestInfoOfKind:(id)kind withResultHandler:(id)handler;
- (id)selectionSnapshot;
- (int64_t)priorityForInfoRequestOfKind:(id)kind;
- (void)infoUpdaterDidUpdate:(id)update;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setTypedCount:(id)count;
@end

@implementation PXAssetSelectionTypeCounter

- (id)selectionSnapshot
{
  selectionManager = [(PXAssetSelectionTypeCounter *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  return selectionSnapshot;
}

- (PXSectionedSelectionManager)selectionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionManager);

  return WeakRetained;
}

- ($DE30A600513D762F9B6AB73D2AED4B95)typedCount
{
  p_typedCount = &self->_typedCount;
  count = self->_typedCount.count;
  type = p_typedCount->type;
  result.var1 = type;
  result.var0 = count;
  return result;
}

- (void)infoUpdaterDidUpdate:(id)update
{
  updateCopy = update;
  infoUpdater = [(PXAssetSelectionTypeCounter *)self infoUpdater];

  if (infoUpdater != updateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetSelectionTypeCounter.m" lineNumber:129 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  infoUpdater2 = [(PXAssetSelectionTypeCounter *)self infoUpdater];
  info = [infoUpdater2 info];
  pXDisplayAssetTypedCountValue = [info PXDisplayAssetTypedCountValue];
  v11 = v10;

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__PXAssetSelectionTypeCounter_infoUpdaterDidUpdate___block_invoke;
  v13[3] = &unk_1E7BB5890;
  v13[4] = self;
  v13[5] = pXDisplayAssetTypedCountValue;
  v13[6] = v11;
  [(PXObservable *)self performChanges:v13];
}

- (int64_t)priorityForInfoRequestOfKind:(id)kind
{
  if (![kind isEqualToString:@"SelectedAssetsTypedCount"])
  {
    return 0;
  }

  selectionSnapshot = [(PXAssetSelectionTypeCounter *)self selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  v6 = [selectedIndexPaths count];

  v7 = 10;
  if (v6 != 1)
  {
    v7 = 0;
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return 100;
  }
}

- (id)requestInfoOfKind:(id)kind withResultHandler:(id)handler
{
  kindCopy = kind;
  handlerCopy = handler;
  if (![kindCopy isEqualToString:@"SelectedAssetsTypedCount"])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetSelectionTypeCounter.m" lineNumber:94 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  selectionSnapshot = [(PXAssetSelectionTypeCounter *)self selectionSnapshot];
  if ([selectionSnapshot isAnyItemSelected] && (-[PXAssetSelectionTypeCounter selectionManager](self, "selectionManager"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "disableAssetTypeCounting"), v10, !v11))
  {
    v14 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
    countUpdateQueue = self->_countUpdateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__PXAssetSelectionTypeCounter_requestInfoOfKind_withResultHandler___block_invoke;
    block[3] = &unk_1E7BB7A10;
    v13 = v14;
    v19 = v13;
    v20 = selectionSnapshot;
    v21 = handlerCopy;
    dispatch_async(countUpdateQueue, block);
  }

  else
  {
    v12 = [MEMORY[0x1E696B098] valueWithPXDisplayAssetTypedCount:{0, 0}];
    (*(handlerCopy + 2))(handlerCopy, v12);

    v13 = 0;
  }

  return v13;
}

void __67__PXAssetSelectionTypeCounter_requestInfoOfKind_withResultHandler___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v2 = PXDisplayAssetTypedCountFromSelectionSnapshot(*(a1 + 40));
    v3 = *(a1 + 48);
    v5 = [MEMORY[0x1E696B098] valueWithPXDisplayAssetTypedCount:{v2, v4}];
    (*(v3 + 16))(v3, v5);
  }
}

- (void)setTypedCount:(id)count
{
  if (self->_typedCount.count != count.var0 || self->_typedCount.type != count.var1)
  {
    self->_typedCount = count;
    [(PXObservable *)self signalChange:1];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXSelectionManagerObserverContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetSelectionTypeCounter.m" lineNumber:59 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v12 = observableCopy;
    infoUpdater = [(PXAssetSelectionTypeCounter *)self infoUpdater];
    [infoUpdater invalidateInfo];

    observableCopy = v12;
  }
}

- (PXAssetSelectionTypeCounter)initWithSelectionManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = PXAssetSelectionTypeCounter;
  v5 = [(PXObservable *)&v13 init];
  if (v5)
  {
    v6 = [[PXInfoUpdater alloc] initWithInfoProvider:v5 infoKind:@"SelectedAssetsTypedCount"];
    infoUpdater = v5->_infoUpdater;
    v5->_infoUpdater = v6;

    [(PXInfoUpdater *)v5->_infoUpdater setObserver:v5];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INITIATED, 0);
    v10 = dispatch_queue_create("com.apple.photos.assetSelectionTypeCounter", v9);
    countUpdateQueue = v5->_countUpdateQueue;
    v5->_countUpdateQueue = v10;

    objc_storeWeak(&v5->_selectionManager, managerCopy);
    [managerCopy registerChangeObserver:v5 context:PXSelectionManagerObserverContext];
  }

  return v5;
}

- (PXAssetSelectionTypeCounter)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetSelectionTypeCounter.m" lineNumber:36 description:{@"%s is not available as initializer", "-[PXAssetSelectionTypeCounter init]"}];

  abort();
}

@end