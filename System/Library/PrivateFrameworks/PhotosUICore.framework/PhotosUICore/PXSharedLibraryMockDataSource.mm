@interface PXSharedLibraryMockDataSource
- (PXSharedLibraryMockDataSource)initWithMocks:(id)a3;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
- (id)sharedLibraryAtItemIndexPath:(PXSimpleIndexPath *)a3;
@end

@implementation PXSharedLibraryMockDataSource

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 indexPath];
    v9 = v23;
    v10 = v24 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a3 object:self file:@"PXSharedLibraryMockDataSource.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"objectReference"}];

    v10 = 0;
    v9 = 0;
    v24 = 0u;
  }

  v11 = v9 != *off_1E7721F68 && !v10;
  if (!v11 || *(&v24 + 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a3 object:self file:@"PXSharedLibraryMockDataSource.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(objectReference.indexPath)"}];
  }

  v12 = [v8 itemObject];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_11;
    }

    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v19 = NSStringFromClass(v21);
    v22 = [v12 px_descriptionForAssertionMessage];
    [v17 handleFailureInMethod:a3 object:self file:@"PXSharedLibraryMockDataSource.m" lineNumber:69 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"objectReference.itemObject", v19, v22}];
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [v17 handleFailureInMethod:a3 object:self file:@"PXSharedLibraryMockDataSource.m" lineNumber:69 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"objectReference.itemObject", v19}];
  }

LABEL_11:
  v13 = [(NSArray *)self->_mocks indexOfObject:v12];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a3 object:self file:@"PXSharedLibraryMockDataSource.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"index != NSNotFound"}];
  }

  retstr->dataSourceIdentifier = [(PXSharedLibraryMockDataSource *)self identifier];
  retstr->section = 0;
  retstr->item = v13;
  retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;

  return result;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXSharedLibraryMockDataSource *)self identifier])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryMockDataSource.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (a3->dataSourceIdentifier == *off_1E7721F68 || a3->item == 0x7FFFFFFFFFFFFFFFLL || a3->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryMockDataSource.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];
  }

  mocks = self->_mocks;

  return [(NSArray *)mocks objectAtIndexedSubscript:?];
}

- (id)sharedLibraryAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  v5 = *&a3->item;
  v13[0] = *&a3->dataSourceIdentifier;
  v13[1] = v5;
  v6 = [(PXSharedLibraryMockDataSource *)self objectAtIndexPath:v13];
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
    [v8 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryMockDataSource.m" lineNumber:42 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[self objectAtIndexPath:indexPath]", v10, v12}];
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryMockDataSource.m" lineNumber:42 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[self objectAtIndexPath:indexPath]", v10}];
  }

LABEL_3:

  return v6;
}

- (PXSharedLibraryMockDataSource)initWithMocks:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryMockDataSource.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"mocks"}];
  }

  v11.receiver = self;
  v11.super_class = PXSharedLibraryMockDataSource;
  v7 = [(PXSharedLibraryMockDataSource *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_mocks, a3);
  }

  return v8;
}

@end