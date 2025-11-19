@interface PXPeoplePickerDataSource
- (BOOL)isItemDisabledAtIndexPath:(PXSimpleIndexPath *)a3;
- (PXPeoplePickerDataSource)initWithFetchResult:(id)a3 disabledLocalIdentifiers:(id)a4 allSelectedLocalIdentifiers:(id)a5 newlySelectedObjectIDs:(id)a6 newlyDeselectedObjectIDs:(id)a7;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3;
- (id)dataSourceUpdatedWithChange:(id)a3 changeDetails:(id *)a4;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
- (id)personAtItemIndexPath:(PXSimpleIndexPath *)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
@end

@implementation PXPeoplePickerDataSource

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 indexPath];
    v9 = v26;
    v10 = v27 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a3 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"objectReference"}];

    v10 = 0;
    v9 = 0;
    v26 = 0u;
    v27 = 0u;
  }

  v11 = *off_1E7721F68;
  v12 = v9 != *off_1E7721F68 && !v10;
  if (!v12 || *(&v27 + 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a3 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(objectReference.indexPath)"}];
  }

  v26 = 0u;
  v27 = 0u;
  v25.receiver = self;
  v25.super_class = PXPeoplePickerDataSource;
  [(PXSimpleIndexPath *)&v25 indexPathForObjectReference:v8];
  if (v26 == v11)
  {
    v13 = [v8 itemObject];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_12:
        v14 = [(PXPeoplePickerDataSource *)self _fetchResult];
        v15 = [v14 indexOfObject:v13];

        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v26 = [(PXPeoplePickerDataSource *)self identifier];
          *&v27 = v15;
          *(&v27 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_15;
      }

      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = objc_opt_class();
      v22 = NSStringFromClass(v23);
      v24 = [v13 px_descriptionForAssertionMessage];
      [v20 handleFailureInMethod:a3 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:113 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"objectReference.itemObject", v22, v24}];
    }

    else
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      [v20 handleFailureInMethod:a3 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:113 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"objectReference.itemObject", v22}];
    }

    goto LABEL_12;
  }

LABEL_15:
  v16 = v27;
  *&retstr->dataSourceIdentifier = v26;
  *&retstr->item = v16;

  return result;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPeoplePickerDataSource *)self identifier])
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (a3->dataSourceIdentifier == *off_1E7721F68 || a3->item == 0x7FFFFFFFFFFFFFFFLL || a3->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];
  }

  v9 = [(PXPeoplePickerDataSource *)self _fetchResult];
  v10 = [v9 objectAtIndexedSubscript:a3->item];

  return v10;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v3 = [(PXPeoplePickerDataSource *)self _fetchResult];
  v4 = [v3 count];

  return v4;
}

- (id)dataSourceUpdatedWithChange:(id)a3 changeDetails:(id *)a4
{
  v6 = a3;
  v7 = [(PXPeoplePickerDataSource *)self _fetchResult];
  v8 = [v6 changeDetailsForFetchResult:v7];

  if (v8)
  {
    v9 = [v8 fetchResultAfterChanges];
    v10 = [v8 removedObjects];
    v11 = [(PXPeoplePickerDataSource *)self allSelectedLocalIdentifiers];
    v12 = [v11 mutableCopy];

    v13 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __70__PXPeoplePickerDataSource_dataSourceUpdatedWithChange_changeDetails___block_invoke;
    v24 = &unk_1E772EC48;
    v25 = v12;
    v26 = v13;
    v14 = v13;
    v15 = v12;
    [v10 enumerateObjectsUsingBlock:&v21];
    v16 = [PXPeoplePickerDataSource alloc];
    v17 = [(PXPeoplePickerDataSource *)self disabledLocalIdentifiers:v21];
    v18 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v19 = [(PXPeoplePickerDataSource *)v16 initWithFetchResult:v9 disabledLocalIdentifiers:v17 allSelectedLocalIdentifiers:v15 newlySelectedObjectIDs:v18 newlyDeselectedObjectIDs:v14];

    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v19 = self;
  if (a4)
  {
LABEL_3:
    *a4 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v8];
  }

LABEL_4:

  return v19;
}

void __70__PXPeoplePickerDataSource_dataSourceUpdatedWithChange_changeDetails___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 localIdentifier];
  [v3 removeObject:v5];

  v6 = *(a1 + 40);
  v7 = [v4 objectID];

  [v6 addObject:v7];
}

- (BOOL)isItemDisabledAtIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPeoplePickerDataSource *)self identifier])
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (a3->dataSourceIdentifier == *off_1E7721F68 || a3->item == 0x7FFFFFFFFFFFFFFFLL || a3->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];
  }

  v9 = *&a3->item;
  v17[0] = *&a3->dataSourceIdentifier;
  v17[1] = v9;
  v10 = [(PXPeoplePickerDataSource *)self personAtItemIndexPath:v17];
  v11 = [(PXPeoplePickerDataSource *)self disabledLocalIdentifiers];
  v12 = [v10 localIdentifier];
  v13 = [v11 containsObject:v12];

  return v13;
}

- (id)personAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  v5 = *&a3->item;
  v13[0] = *&a3->dataSourceIdentifier;
  v13[1] = v5;
  v6 = [(PXPeoplePickerDataSource *)self objectAtIndexPath:v13];
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
    [v8 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:48 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[self objectAtIndexPath:indexPath]", v10, v12}];
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:48 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[self objectAtIndexPath:indexPath]", v10}];
  }

LABEL_3:

  return v6;
}

- (PXPeoplePickerDataSource)initWithFetchResult:(id)a3 disabledLocalIdentifiers:(id)a4 allSelectedLocalIdentifiers:(id)a5 newlySelectedObjectIDs:(id)a6 newlyDeselectedObjectIDs:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v29.receiver = self;
  v29.super_class = PXPeoplePickerDataSource;
  v18 = [(PXPeoplePickerDataSource *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->__fetchResult, a3);
    v20 = [v14 copy];
    disabledLocalIdentifiers = v19->_disabledLocalIdentifiers;
    v19->_disabledLocalIdentifiers = v20;

    v22 = [v15 copy];
    allSelectedLocalIdentifiers = v19->_allSelectedLocalIdentifiers;
    v19->_allSelectedLocalIdentifiers = v22;

    v24 = [v16 copy];
    newlySelectedObjectIDs = v19->_newlySelectedObjectIDs;
    v19->_newlySelectedObjectIDs = v24;

    v26 = [v17 copy];
    newlyDeselectedObjectIDs = v19->_newlyDeselectedObjectIDs;
    v19->_newlyDeselectedObjectIDs = v26;
  }

  return v19;
}

@end