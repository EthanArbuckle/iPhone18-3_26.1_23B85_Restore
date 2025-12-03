@interface PXPhotoKitCollectionListActionPerformer
- (PXPhotoKitCollectionListActionPerformer)initWithActionType:(id)type collectionList:(id)list parameters:(id)parameters;
@end

@implementation PXPhotoKitCollectionListActionPerformer

- (PXPhotoKitCollectionListActionPerformer)initWithActionType:(id)type collectionList:(id)list parameters:(id)parameters
{
  typeCopy = type;
  listCopy = list;
  parametersCopy = parameters;
  if (!listCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionListActionPerformer.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"collectionList"}];
  }

  v16.receiver = self;
  v16.super_class = PXPhotoKitCollectionListActionPerformer;
  v12 = [(PXActionPerformer *)&v16 initWithActionType:typeCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_collectionList, list);
  }

  return v13;
}

@end