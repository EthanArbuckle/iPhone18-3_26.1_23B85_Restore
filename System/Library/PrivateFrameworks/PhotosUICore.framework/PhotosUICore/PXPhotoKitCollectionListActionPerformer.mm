@interface PXPhotoKitCollectionListActionPerformer
- (PXPhotoKitCollectionListActionPerformer)initWithActionType:(id)a3 collectionList:(id)a4 parameters:(id)a5;
@end

@implementation PXPhotoKitCollectionListActionPerformer

- (PXPhotoKitCollectionListActionPerformer)initWithActionType:(id)a3 collectionList:(id)a4 parameters:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionListActionPerformer.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"collectionList"}];
  }

  v16.receiver = self;
  v16.super_class = PXPhotoKitCollectionListActionPerformer;
  v12 = [(PXActionPerformer *)&v16 initWithActionType:v9];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_collectionList, a4);
  }

  return v13;
}

@end