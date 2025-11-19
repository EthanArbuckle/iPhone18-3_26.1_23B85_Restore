@interface PXSharedLibraryPhotoKitDataSource
- (PXSharedLibraryPhotoKitDataSource)initWithFetchResult:(id)a3;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3;
- (id)dataSourceUpdatedWithChange:(id)a3 changeDetails:(id *)a4;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
- (id)sharedLibraryAtItemIndexPath:(PXSimpleIndexPath *)a3;
@end

@implementation PXSharedLibraryPhotoKitDataSource

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 indexPath];
    v9 = v27;
    v10 = v28 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a3 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"objectReference"}];

    v10 = 0;
    v9 = 0;
    v27 = 0u;
    v28 = 0u;
  }

  v11 = *off_1E7721F68;
  v12 = v9 != *off_1E7721F68 && !v10;
  if (!v12 || *(&v28 + 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a3 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(objectReference.indexPath)"}];
  }

  v27 = 0u;
  v28 = 0u;
  v26.receiver = self;
  v26.super_class = PXSharedLibraryPhotoKitDataSource;
  [(PXSimpleIndexPath *)&v26 indexPathForObjectReference:v8];
  if (v27 == v11)
  {
    v13 = [v8 itemObject];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_12:
        v14 = [v13 libraryScope];
        v15 = [(PHFetchResult *)self->_fetchResult indexOfObject:v14];
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = v15;
          v27 = [(PXSharedLibraryPhotoKitDataSource *)self identifier];
          *&v28 = v16;
          *(&v28 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_15;
      }

      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = objc_opt_class();
      v23 = NSStringFromClass(v24);
      v25 = [v13 px_descriptionForAssertionMessage];
      [v21 handleFailureInMethod:a3 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:109 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"objectReference.itemObject", v23, v25}];
    }

    else
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      [v21 handleFailureInMethod:a3 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:109 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"objectReference.itemObject", v23}];
    }

    goto LABEL_12;
  }

LABEL_15:
  v17 = v28;
  *&retstr->dataSourceIdentifier = v27;
  *&retstr->item = v17;

  return result;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXSharedLibraryPhotoKitDataSource *)self identifier])
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (a3->dataSourceIdentifier == *off_1E7721F68 || a3->item == 0x7FFFFFFFFFFFFFFFLL || a3->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];
  }

  v9 = [(PHFetchResult *)self->_fetchResult objectAtIndexedSubscript:?];
  v10 = [[PXSharedLibraryPhotoKit alloc] initWithLibraryScope:v9];

  return v10;
}

- (id)dataSourceUpdatedWithChange:(id)a3 changeDetails:(id *)a4
{
  v5 = [a3 changeDetailsForFetchResult:self->_fetchResult];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 fetchResultAfterChanges];
    v8 = [[PXSharedLibraryPhotoKitDataSource alloc] initWithFetchResult:v7];

    if (a4 && v8)
    {
      *a4 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v6];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)sharedLibraryAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  v5 = *&a3->item;
  v13[0] = *&a3->dataSourceIdentifier;
  v13[1] = v5;
  v6 = [(PXSharedLibraryPhotoKitDataSource *)self objectAtIndexPath:v13];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    v12 = [v6 px_descriptionForAssertionMessage];
    [v8 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:64 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[self objectAtIndexPath:indexPath]", v10, v12}];
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:64 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[self objectAtIndexPath:indexPath]", v10}];
  }

LABEL_3:

  return v6;
}

- (PXSharedLibraryPhotoKitDataSource)initWithFetchResult:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"fetchResult"}];
  }

  v11.receiver = self;
  v11.super_class = PXSharedLibraryPhotoKitDataSource;
  v7 = [(PXSharedLibraryPhotoKitDataSource *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_fetchResult, a3);
  }

  return v8;
}

@end