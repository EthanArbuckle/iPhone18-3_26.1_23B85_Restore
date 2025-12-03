@interface PXPeoplePickerMockDataSource
- (PXPeoplePickerMockDataSource)initWithMocks:(id)mocks;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (id)personAtItemIndexPath:(PXSimpleIndexPath *)path;
@end

@implementation PXPeoplePickerMockDataSource

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:reference object:self file:@"PXPeoplePickerMockDataSourceManager.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"objectReference"}];

    v10 = 0;
    v9 = 0;
    v24 = 0u;
  }

  v11 = v9 != *off_1E7721F68 && !v10;
  if (!v11 || *(&v24 + 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:reference object:self file:@"PXPeoplePickerMockDataSourceManager.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(objectReference.indexPath)"}];
  }

  itemObject = [v8 itemObject];
  if (itemObject)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_11;
    }

    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v19 = NSStringFromClass(v21);
    px_descriptionForAssertionMessage = [itemObject px_descriptionForAssertionMessage];
    [currentHandler3 handleFailureInMethod:reference object:self file:@"PXPeoplePickerMockDataSourceManager.m" lineNumber:56 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"objectReference.itemObject", v19, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [currentHandler3 handleFailureInMethod:reference object:self file:@"PXPeoplePickerMockDataSourceManager.m" lineNumber:56 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"objectReference.itemObject", v19}];
  }

LABEL_11:
  v13 = [(NSArray *)self->_mocks indexOfObject:itemObject];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:reference object:self file:@"PXPeoplePickerMockDataSourceManager.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"index != NSNotFound"}];
  }

  retstr->dataSourceIdentifier = [(PXPeoplePickerMockDataSource *)self identifier];
  retstr->section = 0;
  retstr->item = v13;
  retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;

  return result;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPeoplePickerMockDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeoplePickerMockDataSourceManager.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (path->dataSourceIdentifier == *off_1E7721F68 || path->item == 0x7FFFFFFFFFFFFFFFLL || path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerMockDataSourceManager.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];
  }

  mocks = self->_mocks;

  return [(NSArray *)mocks objectAtIndexedSubscript:?];
}

- (id)personAtItemIndexPath:(PXSimpleIndexPath *)path
{
  v5 = *&path->item;
  v13[0] = *&path->dataSourceIdentifier;
  v13[1] = v5;
  v6 = [(PXPeoplePickerMockDataSource *)self objectAtIndexPath:v13];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeoplePickerMockDataSourceManager.m" lineNumber:29 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[self objectAtIndexPath:indexPath]", v10, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeoplePickerMockDataSourceManager.m" lineNumber:29 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[self objectAtIndexPath:indexPath]", v10}];
  }

LABEL_3:

  return v6;
}

- (PXPeoplePickerMockDataSource)initWithMocks:(id)mocks
{
  mocksCopy = mocks;
  if (!mocksCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeoplePickerMockDataSourceManager.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"mocks"}];
  }

  v11.receiver = self;
  v11.super_class = PXPeoplePickerMockDataSource;
  v7 = [(PXPeoplePickerMockDataSource *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_mocks, mocks);
  }

  return v8;
}

@end