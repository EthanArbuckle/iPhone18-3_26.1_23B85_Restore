@interface PXSharedLibraryIncludedPeopleDataSource
- (NSArray)allPersonUUIDs;
- (PXSharedLibraryIncludedPeopleDataSource)initWithInfos:(id)a3 infosWithBothPeopleAndParticipants:(id)a4 infosWithoutPeople:(id)a5;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3;
- (id)infoAtItemIndexPath:(PXSimpleIndexPath *)a3;
- (id)infoForParticipant:(id)a3;
- (id)infoForPersonUUID:(id)a3;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
@end

@implementation PXSharedLibraryIncludedPeopleDataSource

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
    [v19 handleFailureInMethod:a3 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"objectReference"}];

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
    [v18 handleFailureInMethod:a3 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(objectReference.indexPath)"}];
  }

  v26 = 0u;
  v27 = 0u;
  v25.receiver = self;
  v25.super_class = PXSharedLibraryIncludedPeopleDataSource;
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
        v14 = [(PXSharedLibraryIncludedPeopleDataSource *)self allInfos];
        v15 = [v14 indexOfObject:v13];

        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v26 = [(PXSharedLibraryIncludedPeopleDataSource *)self identifier];
          *&v27 = v15;
          *(&v27 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_15;
      }

      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = objc_opt_class();
      v22 = NSStringFromClass(v23);
      v24 = [v13 px_descriptionForAssertionMessage];
      [v20 handleFailureInMethod:a3 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:203 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"objectReference.itemObject", v22, v24}];
    }

    else
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      [v20 handleFailureInMethod:a3 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:203 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"objectReference.itemObject", v22}];
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
  if (dataSourceIdentifier != [(PXSharedLibraryIncludedPeopleDataSource *)self identifier])
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:191 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (a3->dataSourceIdentifier == *off_1E7721F68 || a3->item == 0x7FFFFFFFFFFFFFFFLL || a3->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];
  }

  v9 = [(PXSharedLibraryIncludedPeopleDataSource *)self allInfos];
  v10 = [v9 objectAtIndexedSubscript:a3->item];

  return v10;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  if (a3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"section == 0"}];
  }

  v4 = [(PXSharedLibraryIncludedPeopleDataSource *)self allInfos];
  v5 = [v4 count];

  return v5;
}

- (id)infoForPersonUUID:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![v5 length])
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"personUUID.length > 0"}];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(PXSharedLibraryIncludedPeopleDataSource *)self allInfos];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 person];
        v12 = [v11 uuid];
        v13 = [v12 isEqualToString:v5];

        if (v13)
        {
          v7 = v10;
          goto LABEL_13;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v7;
}

- (id)infoForParticipant:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"participant"}];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(PXSharedLibraryIncludedPeopleDataSource *)self allInfos];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 participant];
        v12 = [v11 isEqual:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_13;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v7;
}

- (id)infoAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  v5 = *&a3->item;
  v13[0] = *&a3->dataSourceIdentifier;
  v13[1] = v5;
  v6 = [(PXSharedLibraryIncludedPeopleDataSource *)self objectAtIndexPath:v13];
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
    [v8 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:152 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[self objectAtIndexPath:indexPath]", v10, v12}];
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:152 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[self objectAtIndexPath:indexPath]", v10}];
  }

LABEL_3:

  return v6;
}

- (NSArray)allPersonUUIDs
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(PXSharedLibraryIncludedPeopleDataSource *)self allInfos];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) person];
        v10 = [v9 uuid];

        if ([v10 length])
        {
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

- (PXSharedLibraryIncludedPeopleDataSource)initWithInfos:(id)a3 infosWithBothPeopleAndParticipants:(id)a4 infosWithoutPeople:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PXSharedLibraryIncludedPeopleDataSource;
  v11 = [(PXSharedLibraryIncludedPeopleDataSource *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    allInfos = v11->_allInfos;
    v11->_allInfos = v12;

    v14 = [v9 copy];
    infosWithBothPeopleAndParticipants = v11->_infosWithBothPeopleAndParticipants;
    v11->_infosWithBothPeopleAndParticipants = v14;

    v16 = [v10 copy];
    infosWithoutPeople = v11->_infosWithoutPeople;
    v11->_infosWithoutPeople = v16;
  }

  return v11;
}

@end