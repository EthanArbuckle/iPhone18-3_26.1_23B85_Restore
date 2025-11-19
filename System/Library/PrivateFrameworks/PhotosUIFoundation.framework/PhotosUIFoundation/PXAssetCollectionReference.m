@interface PXAssetCollectionReference
- (PXAssetCollectionReference)initWithAssetCollection:(id)a3 keyAssetReference:(id)a4 indexPath:(PXSimpleIndexPath *)a5;
- (PXDisplayAssetCollection)assetCollection;
@end

@implementation PXAssetCollectionReference

- (PXAssetCollectionReference)initWithAssetCollection:(id)a3 keyAssetReference:(id)a4 indexPath:(PXSimpleIndexPath *)a5
{
  v9 = a4;
  v10 = *&a5->item;
  v14[0] = *&a5->dataSourceIdentifier;
  v14[1] = v10;
  v11 = [(PXSectionedObjectReference *)self initWithSectionObject:a3 itemObject:0 subitemObject:0 indexPath:v14];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_keyAssetReference, a4);
  }

  return v12;
}

- (PXDisplayAssetCollection)assetCollection
{
  v4 = [(PXSectionedObjectReference *)self sectionObject];
  v5 = v4;
  if (v4)
  {
    if ([v4 conformsToProtocol:&unk_1F2BCBC20])
    {
      goto LABEL_3;
    }

    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [v5 px_descriptionForAssertionMessage];
    [v7 handleFailureInMethod:a2 object:self file:@"PXAssetCollectionReference.m" lineNumber:15 description:{@"%@ should conform to protocol %@, but %@ doesn't", @"self.sectionObject", @"PXDisplayAssetCollection", v8}];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXAssetCollectionReference.m" lineNumber:15 description:{@"%@ should conform to protocol %@, but it is nil", @"self.sectionObject", @"PXDisplayAssetCollection"}];
  }

LABEL_3:

  return v5;
}

@end