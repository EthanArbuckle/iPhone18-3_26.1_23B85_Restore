@interface PXAssetCollectionActionPerformer
- (PXAssetCollectionActionPerformer)initWithActionType:(id)a3;
- (PXAssetCollectionActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5;
- (PXDisplayAssetCollection)assetCollection;
@end

@implementation PXAssetCollectionActionPerformer

- (PXDisplayAssetCollection)assetCollection
{
  v2 = [(PXAssetCollectionActionPerformer *)self assetCollectionReference];
  v3 = [v2 assetCollection];

  return v3;
}

- (PXAssetCollectionActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXAssetCollectionActionManager.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"assetCollectionReference"}];
  }

  v18.receiver = self;
  v18.super_class = PXAssetCollectionActionPerformer;
  v12 = [(PXActionPerformer *)&v18 initWithActionType:v9];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetCollectionReference, a4);
    v14 = [v11 copy];
    parameters = v13->_parameters;
    v13->_parameters = v14;
  }

  return v13;
}

- (PXAssetCollectionActionPerformer)initWithActionType:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXAssetCollectionActionManager.m" lineNumber:188 description:{@"%s is not available as initializer", "-[PXAssetCollectionActionPerformer initWithActionType:]"}];

  abort();
}

@end