@interface PXAssetCollectionActionPerformer
- (PXAssetCollectionActionPerformer)initWithActionType:(id)type;
- (PXAssetCollectionActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters;
- (PXDisplayAssetCollection)assetCollection;
@end

@implementation PXAssetCollectionActionPerformer

- (PXDisplayAssetCollection)assetCollection
{
  assetCollectionReference = [(PXAssetCollectionActionPerformer *)self assetCollectionReference];
  assetCollection = [assetCollectionReference assetCollection];

  return assetCollection;
}

- (PXAssetCollectionActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters
{
  typeCopy = type;
  referenceCopy = reference;
  parametersCopy = parameters;
  if (!referenceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetCollectionActionManager.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"assetCollectionReference"}];
  }

  v18.receiver = self;
  v18.super_class = PXAssetCollectionActionPerformer;
  v12 = [(PXActionPerformer *)&v18 initWithActionType:typeCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetCollectionReference, reference);
    v14 = [parametersCopy copy];
    parameters = v13->_parameters;
    v13->_parameters = v14;
  }

  return v13;
}

- (PXAssetCollectionActionPerformer)initWithActionType:(id)type
{
  typeCopy = type;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetCollectionActionManager.m" lineNumber:188 description:{@"%s is not available as initializer", "-[PXAssetCollectionActionPerformer initWithActionType:]"}];

  abort();
}

@end