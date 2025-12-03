@interface PXAssetCollectionReference
- (PXAssetCollectionReference)initWithAssetCollection:(id)collection keyAssetReference:(id)reference indexPath:(PXSimpleIndexPath *)path;
- (PXDisplayAssetCollection)assetCollection;
@end

@implementation PXAssetCollectionReference

- (PXAssetCollectionReference)initWithAssetCollection:(id)collection keyAssetReference:(id)reference indexPath:(PXSimpleIndexPath *)path
{
  referenceCopy = reference;
  v10 = *&path->item;
  v14[0] = *&path->dataSourceIdentifier;
  v14[1] = v10;
  v11 = [(PXSectionedObjectReference *)self initWithSectionObject:collection itemObject:0 subitemObject:0 indexPath:v14];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_keyAssetReference, reference);
  }

  return v12;
}

- (PXDisplayAssetCollection)assetCollection
{
  sectionObject = [(PXSectionedObjectReference *)self sectionObject];
  v5 = sectionObject;
  if (sectionObject)
  {
    if ([sectionObject conformsToProtocol:&unk_1F2BCBC20])
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    px_descriptionForAssertionMessage = [v5 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetCollectionReference.m" lineNumber:15 description:{@"%@ should conform to protocol %@, but %@ doesn't", @"self.sectionObject", @"PXDisplayAssetCollection", px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetCollectionReference.m" lineNumber:15 description:{@"%@ should conform to protocol %@, but it is nil", @"self.sectionObject", @"PXDisplayAssetCollection"}];
  }

LABEL_3:

  return v5;
}

@end