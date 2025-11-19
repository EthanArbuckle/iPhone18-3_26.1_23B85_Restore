@interface PXAssetSelectionTypeCounter
- ($DE30A600513D762F9B6AB73D2AED4B95)typedCount;
- (PXAssetSelectionTypeCounter)init;
- (PXAssetSelectionTypeCounter)initWithSelectionManager:(id)a3;
- (PXSectionedSelectionManager)selectionManager;
- (id)requestInfoOfKind:(id)a3 withResultHandler:(id)a4;
- (id)selectionSnapshot;
- (int64_t)priorityForInfoRequestOfKind:(id)a3;
- (void)infoUpdaterDidUpdate:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setTypedCount:(id)a3;
@end

@implementation PXAssetSelectionTypeCounter

- (id)selectionSnapshot
{
  v2 = [(PXAssetSelectionTypeCounter *)self selectionManager];
  v3 = [v2 selectionSnapshot];

  return v3;
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

- (void)infoUpdaterDidUpdate:(id)a3
{
  v5 = a3;
  v6 = [(PXAssetSelectionTypeCounter *)self infoUpdater];

  if (v6 != v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXAssetSelectionTypeCounter.m" lineNumber:129 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v7 = [(PXAssetSelectionTypeCounter *)self infoUpdater];
  v8 = [v7 info];
  v9 = [v8 PXDisplayAssetTypedCountValue];
  v11 = v10;

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__PXAssetSelectionTypeCounter_infoUpdaterDidUpdate___block_invoke;
  v13[3] = &unk_1E7BB5890;
  v13[4] = self;
  v13[5] = v9;
  v13[6] = v11;
  [(PXObservable *)self performChanges:v13];
}

- (int64_t)priorityForInfoRequestOfKind:(id)a3
{
  if (![a3 isEqualToString:@"SelectedAssetsTypedCount"])
  {
    return 0;
  }

  v4 = [(PXAssetSelectionTypeCounter *)self selectionSnapshot];
  v5 = [v4 selectedIndexPaths];
  v6 = [v5 count];

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

- (id)requestInfoOfKind:(id)a3 withResultHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (![v7 isEqualToString:@"SelectedAssetsTypedCount"])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXAssetSelectionTypeCounter.m" lineNumber:94 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v9 = [(PXAssetSelectionTypeCounter *)self selectionSnapshot];
  if ([v9 isAnyItemSelected] && (-[PXAssetSelectionTypeCounter selectionManager](self, "selectionManager"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "disableAssetTypeCounting"), v10, !v11))
  {
    v14 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
    countUpdateQueue = self->_countUpdateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__PXAssetSelectionTypeCounter_requestInfoOfKind_withResultHandler___block_invoke;
    block[3] = &unk_1E7BB7A10;
    v13 = v14;
    v19 = v13;
    v20 = v9;
    v21 = v8;
    dispatch_async(countUpdateQueue, block);
  }

  else
  {
    v12 = [MEMORY[0x1E696B098] valueWithPXDisplayAssetTypedCount:{0, 0}];
    (*(v8 + 2))(v8, v12);

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

- (void)setTypedCount:(id)a3
{
  if (self->_typedCount.count != a3.var0 || self->_typedCount.type != a3.var1)
  {
    self->_typedCount = a3;
    [(PXObservable *)self signalChange:1];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXSelectionManagerObserverContext != a5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXAssetSelectionTypeCounter.m" lineNumber:59 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v12 = v9;
    v10 = [(PXAssetSelectionTypeCounter *)self infoUpdater];
    [v10 invalidateInfo];

    v9 = v12;
  }
}

- (PXAssetSelectionTypeCounter)initWithSelectionManager:(id)a3
{
  v4 = a3;
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

    objc_storeWeak(&v5->_selectionManager, v4);
    [v4 registerChangeObserver:v5 context:PXSelectionManagerObserverContext];
  }

  return v5;
}

- (PXAssetSelectionTypeCounter)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAssetSelectionTypeCounter.m" lineNumber:36 description:{@"%s is not available as initializer", "-[PXAssetSelectionTypeCounter init]"}];

  abort();
}

@end