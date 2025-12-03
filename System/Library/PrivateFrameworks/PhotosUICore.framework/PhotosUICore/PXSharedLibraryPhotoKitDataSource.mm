@interface PXSharedLibraryPhotoKitDataSource
- (PXSharedLibraryPhotoKitDataSource)initWithFetchResult:(id)result;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference;
- (id)dataSourceUpdatedWithChange:(id)change changeDetails:(id *)details;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (id)sharedLibraryAtItemIndexPath:(PXSimpleIndexPath *)path;
@end

@implementation PXSharedLibraryPhotoKitDataSource

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 indexPath];
    v9 = identifier;
    v10 = v28 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:reference object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"objectReference"}];

    v10 = 0;
    v9 = 0;
    identifier = 0u;
    v28 = 0u;
  }

  v11 = *off_1E7721F68;
  v12 = v9 != *off_1E7721F68 && !v10;
  if (!v12 || *(&v28 + 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:reference object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(objectReference.indexPath)"}];
  }

  identifier = 0u;
  v28 = 0u;
  v26.receiver = self;
  v26.super_class = PXSharedLibraryPhotoKitDataSource;
  [(PXSimpleIndexPath *)&v26 indexPathForObjectReference:v8];
  if (identifier == v11)
  {
    itemObject = [v8 itemObject];
    if (itemObject)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_12:
        libraryScope = [itemObject libraryScope];
        v15 = [(PHFetchResult *)self->_fetchResult indexOfObject:libraryScope];
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = v15;
          identifier = [(PXSharedLibraryPhotoKitDataSource *)self identifier];
          *&v28 = v16;
          *(&v28 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_15;
      }

      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = objc_opt_class();
      v23 = NSStringFromClass(v24);
      px_descriptionForAssertionMessage = [itemObject px_descriptionForAssertionMessage];
      [currentHandler3 handleFailureInMethod:reference object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:109 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"objectReference.itemObject", v23, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      [currentHandler3 handleFailureInMethod:reference object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:109 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"objectReference.itemObject", v23}];
    }

    goto LABEL_12;
  }

LABEL_15:
  v17 = v28;
  *&retstr->dataSourceIdentifier = identifier;
  *&retstr->item = v17;

  return result;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXSharedLibraryPhotoKitDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (path->dataSourceIdentifier == *off_1E7721F68 || path->item == 0x7FFFFFFFFFFFFFFFLL || path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];
  }

  v9 = [(PHFetchResult *)self->_fetchResult objectAtIndexedSubscript:?];
  v10 = [[PXSharedLibraryPhotoKit alloc] initWithLibraryScope:v9];

  return v10;
}

- (id)dataSourceUpdatedWithChange:(id)change changeDetails:(id *)details
{
  v5 = [change changeDetailsForFetchResult:self->_fetchResult];
  v6 = v5;
  if (v5)
  {
    fetchResultAfterChanges = [v5 fetchResultAfterChanges];
    v8 = [[PXSharedLibraryPhotoKitDataSource alloc] initWithFetchResult:fetchResultAfterChanges];

    if (details && v8)
    {
      *details = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v6];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)sharedLibraryAtItemIndexPath:(PXSimpleIndexPath *)path
{
  v5 = *&path->item;
  v13[0] = *&path->dataSourceIdentifier;
  v13[1] = v5;
  v6 = [(PXSharedLibraryPhotoKitDataSource *)self objectAtIndexPath:v13];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    px_descriptionForAssertionMessage = [v6 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:64 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[self objectAtIndexPath:indexPath]", v10, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:64 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[self objectAtIndexPath:indexPath]", v10}];
  }

LABEL_3:

  return v6;
}

- (PXSharedLibraryPhotoKitDataSource)initWithFetchResult:(id)result
{
  resultCopy = result;
  if (!resultCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"fetchResult"}];
  }

  v11.receiver = self;
  v11.super_class = PXSharedLibraryPhotoKitDataSource;
  v7 = [(PXSharedLibraryPhotoKitDataSource *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_fetchResult, result);
  }

  return v8;
}

@end