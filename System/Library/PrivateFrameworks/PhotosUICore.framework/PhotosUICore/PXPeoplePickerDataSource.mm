@interface PXPeoplePickerDataSource
- (BOOL)isItemDisabledAtIndexPath:(PXSimpleIndexPath *)path;
- (PXPeoplePickerDataSource)initWithFetchResult:(id)result disabledLocalIdentifiers:(id)identifiers allSelectedLocalIdentifiers:(id)localIdentifiers newlySelectedObjectIDs:(id)ds newlyDeselectedObjectIDs:(id)iDs;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference;
- (id)dataSourceUpdatedWithChange:(id)change changeDetails:(id *)details;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (id)personAtItemIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)numberOfItemsInSection:(int64_t)section;
@end

@implementation PXPeoplePickerDataSource

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 indexPath];
    v9 = identifier;
    v10 = v27 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:reference object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"objectReference"}];

    v10 = 0;
    v9 = 0;
    identifier = 0u;
    v27 = 0u;
  }

  v11 = *off_1E7721F68;
  v12 = v9 != *off_1E7721F68 && !v10;
  if (!v12 || *(&v27 + 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:reference object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(objectReference.indexPath)"}];
  }

  identifier = 0u;
  v27 = 0u;
  v25.receiver = self;
  v25.super_class = PXPeoplePickerDataSource;
  [(PXSimpleIndexPath *)&v25 indexPathForObjectReference:v8];
  if (identifier == v11)
  {
    itemObject = [v8 itemObject];
    if (itemObject)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_12:
        _fetchResult = [(PXPeoplePickerDataSource *)self _fetchResult];
        v15 = [_fetchResult indexOfObject:itemObject];

        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          identifier = [(PXPeoplePickerDataSource *)self identifier];
          *&v27 = v15;
          *(&v27 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_15;
      }

      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = objc_opt_class();
      v22 = NSStringFromClass(v23);
      px_descriptionForAssertionMessage = [itemObject px_descriptionForAssertionMessage];
      [currentHandler3 handleFailureInMethod:reference object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:113 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"objectReference.itemObject", v22, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      [currentHandler3 handleFailureInMethod:reference object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:113 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"objectReference.itemObject", v22}];
    }

    goto LABEL_12;
  }

LABEL_15:
  v16 = v27;
  *&retstr->dataSourceIdentifier = identifier;
  *&retstr->item = v16;

  return result;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPeoplePickerDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (path->dataSourceIdentifier == *off_1E7721F68 || path->item == 0x7FFFFFFFFFFFFFFFLL || path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];
  }

  _fetchResult = [(PXPeoplePickerDataSource *)self _fetchResult];
  v10 = [_fetchResult objectAtIndexedSubscript:path->item];

  return v10;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  _fetchResult = [(PXPeoplePickerDataSource *)self _fetchResult];
  v4 = [_fetchResult count];

  return v4;
}

- (id)dataSourceUpdatedWithChange:(id)change changeDetails:(id *)details
{
  changeCopy = change;
  _fetchResult = [(PXPeoplePickerDataSource *)self _fetchResult];
  v8 = [changeCopy changeDetailsForFetchResult:_fetchResult];

  if (v8)
  {
    fetchResultAfterChanges = [v8 fetchResultAfterChanges];
    removedObjects = [v8 removedObjects];
    allSelectedLocalIdentifiers = [(PXPeoplePickerDataSource *)self allSelectedLocalIdentifiers];
    v12 = [allSelectedLocalIdentifiers mutableCopy];

    v13 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __70__PXPeoplePickerDataSource_dataSourceUpdatedWithChange_changeDetails___block_invoke;
    v24 = &unk_1E772EC48;
    v25 = v12;
    v26 = v13;
    v14 = v13;
    v15 = v12;
    [removedObjects enumerateObjectsUsingBlock:&v21];
    v16 = [PXPeoplePickerDataSource alloc];
    v17 = [(PXPeoplePickerDataSource *)self disabledLocalIdentifiers:v21];
    v18 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    selfCopy = [(PXPeoplePickerDataSource *)v16 initWithFetchResult:fetchResultAfterChanges disabledLocalIdentifiers:v17 allSelectedLocalIdentifiers:v15 newlySelectedObjectIDs:v18 newlyDeselectedObjectIDs:v14];

    if (!details)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  selfCopy = self;
  if (details)
  {
LABEL_3:
    *details = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v8];
  }

LABEL_4:

  return selfCopy;
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

- (BOOL)isItemDisabledAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPeoplePickerDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (path->dataSourceIdentifier == *off_1E7721F68 || path->item == 0x7FFFFFFFFFFFFFFFLL || path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];
  }

  v9 = *&path->item;
  v17[0] = *&path->dataSourceIdentifier;
  v17[1] = v9;
  v10 = [(PXPeoplePickerDataSource *)self personAtItemIndexPath:v17];
  disabledLocalIdentifiers = [(PXPeoplePickerDataSource *)self disabledLocalIdentifiers];
  localIdentifier = [v10 localIdentifier];
  v13 = [disabledLocalIdentifiers containsObject:localIdentifier];

  return v13;
}

- (id)personAtItemIndexPath:(PXSimpleIndexPath *)path
{
  v5 = *&path->item;
  v13[0] = *&path->dataSourceIdentifier;
  v13[1] = v5;
  v6 = [(PXPeoplePickerDataSource *)self objectAtIndexPath:v13];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:48 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[self objectAtIndexPath:indexPath]", v10, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeoplePickerDataSourceManager.m" lineNumber:48 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[self objectAtIndexPath:indexPath]", v10}];
  }

LABEL_3:

  return v6;
}

- (PXPeoplePickerDataSource)initWithFetchResult:(id)result disabledLocalIdentifiers:(id)identifiers allSelectedLocalIdentifiers:(id)localIdentifiers newlySelectedObjectIDs:(id)ds newlyDeselectedObjectIDs:(id)iDs
{
  resultCopy = result;
  identifiersCopy = identifiers;
  localIdentifiersCopy = localIdentifiers;
  dsCopy = ds;
  iDsCopy = iDs;
  v29.receiver = self;
  v29.super_class = PXPeoplePickerDataSource;
  v18 = [(PXPeoplePickerDataSource *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->__fetchResult, result);
    v20 = [identifiersCopy copy];
    disabledLocalIdentifiers = v19->_disabledLocalIdentifiers;
    v19->_disabledLocalIdentifiers = v20;

    v22 = [localIdentifiersCopy copy];
    allSelectedLocalIdentifiers = v19->_allSelectedLocalIdentifiers;
    v19->_allSelectedLocalIdentifiers = v22;

    v24 = [dsCopy copy];
    newlySelectedObjectIDs = v19->_newlySelectedObjectIDs;
    v19->_newlySelectedObjectIDs = v24;

    v26 = [iDsCopy copy];
    newlyDeselectedObjectIDs = v19->_newlyDeselectedObjectIDs;
    v19->_newlyDeselectedObjectIDs = v26;
  }

  return v19;
}

@end