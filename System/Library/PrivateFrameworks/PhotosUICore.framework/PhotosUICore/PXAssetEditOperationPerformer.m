@interface PXAssetEditOperationPerformer
- (PXAssetEditOperationPerformer)init;
- (PXAssetEditOperationPerformer)initWithEditOperationType:(id)a3 asset:(id)a4;
@end

@implementation PXAssetEditOperationPerformer

- (PXAssetEditOperationPerformer)initWithEditOperationType:(id)a3 asset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PXAssetEditOperationPerformer;
  v8 = [(PXAssetEditOperationPerformer *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    editOperationType = v8->_editOperationType;
    v8->_editOperationType = v9;

    objc_storeStrong(&v8->_asset, a4);
    v11 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
    progress = v8->_progress;
    v8->_progress = v11;
  }

  return v8;
}

- (PXAssetEditOperationPerformer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAssetEditOperationManager.m" lineNumber:362 description:{@"%s is not available as initializer", "-[PXAssetEditOperationPerformer init]"}];

  abort();
}

@end