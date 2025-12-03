@interface PXSharedLibraryIncludedPeopleDataSource
- (NSArray)allPersonUUIDs;
- (PXSharedLibraryIncludedPeopleDataSource)initWithInfos:(id)infos infosWithBothPeopleAndParticipants:(id)participants infosWithoutPeople:(id)people;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference;
- (id)infoAtItemIndexPath:(PXSimpleIndexPath *)path;
- (id)infoForParticipant:(id)participant;
- (id)infoForPersonUUID:(id)d;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)numberOfItemsInSection:(int64_t)section;
@end

@implementation PXSharedLibraryIncludedPeopleDataSource

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
    [currentHandler handleFailureInMethod:reference object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"objectReference"}];

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
    [currentHandler2 handleFailureInMethod:reference object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(objectReference.indexPath)"}];
  }

  identifier = 0u;
  v27 = 0u;
  v25.receiver = self;
  v25.super_class = PXSharedLibraryIncludedPeopleDataSource;
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
        allInfos = [(PXSharedLibraryIncludedPeopleDataSource *)self allInfos];
        v15 = [allInfos indexOfObject:itemObject];

        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          identifier = [(PXSharedLibraryIncludedPeopleDataSource *)self identifier];
          *&v27 = v15;
          *(&v27 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_15;
      }

      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = objc_opt_class();
      v22 = NSStringFromClass(v23);
      px_descriptionForAssertionMessage = [itemObject px_descriptionForAssertionMessage];
      [currentHandler3 handleFailureInMethod:reference object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:203 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"objectReference.itemObject", v22, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      [currentHandler3 handleFailureInMethod:reference object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:203 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"objectReference.itemObject", v22}];
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
  if (dataSourceIdentifier != [(PXSharedLibraryIncludedPeopleDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:191 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (path->dataSourceIdentifier == *off_1E7721F68 || path->item == 0x7FFFFFFFFFFFFFFFLL || path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];
  }

  allInfos = [(PXSharedLibraryIncludedPeopleDataSource *)self allInfos];
  v10 = [allInfos objectAtIndexedSubscript:path->item];

  return v10;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  if (section)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"section == 0"}];
  }

  allInfos = [(PXSharedLibraryIncludedPeopleDataSource *)self allInfos];
  v5 = [allInfos count];

  return v5;
}

- (id)infoForPersonUUID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (![dCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"personUUID.length > 0"}];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allInfos = [(PXSharedLibraryIncludedPeopleDataSource *)self allInfos];
  v7 = [allInfos countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(allInfos);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        person = [v10 person];
        uuid = [person uuid];
        v13 = [uuid isEqualToString:dCopy];

        if (v13)
        {
          v7 = v10;
          goto LABEL_13;
        }
      }

      v7 = [allInfos countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)infoForParticipant:(id)participant
{
  v20 = *MEMORY[0x1E69E9840];
  participantCopy = participant;
  if (!participantCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"participant"}];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allInfos = [(PXSharedLibraryIncludedPeopleDataSource *)self allInfos];
  v7 = [allInfos countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allInfos);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        participant = [v10 participant];
        v12 = [participant isEqual:participantCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_13;
        }
      }

      v7 = [allInfos countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)infoAtItemIndexPath:(PXSimpleIndexPath *)path
{
  v5 = *&path->item;
  v13[0] = *&path->dataSourceIdentifier;
  v13[1] = v5;
  v6 = [(PXSharedLibraryIncludedPeopleDataSource *)self objectAtIndexPath:v13];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:152 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[self objectAtIndexPath:indexPath]", v10, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:152 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[self objectAtIndexPath:indexPath]", v10}];
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
  allInfos = [(PXSharedLibraryIncludedPeopleDataSource *)self allInfos];
  v5 = [allInfos countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allInfos);
        }

        person = [*(*(&v13 + 1) + 8 * i) person];
        uuid = [person uuid];

        if ([uuid length])
        {
          [v3 addObject:uuid];
        }
      }

      v6 = [allInfos countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

- (PXSharedLibraryIncludedPeopleDataSource)initWithInfos:(id)infos infosWithBothPeopleAndParticipants:(id)participants infosWithoutPeople:(id)people
{
  infosCopy = infos;
  participantsCopy = participants;
  peopleCopy = people;
  v19.receiver = self;
  v19.super_class = PXSharedLibraryIncludedPeopleDataSource;
  v11 = [(PXSharedLibraryIncludedPeopleDataSource *)&v19 init];
  if (v11)
  {
    v12 = [infosCopy copy];
    allInfos = v11->_allInfos;
    v11->_allInfos = v12;

    v14 = [participantsCopy copy];
    infosWithBothPeopleAndParticipants = v11->_infosWithBothPeopleAndParticipants;
    v11->_infosWithBothPeopleAndParticipants = v14;

    v16 = [peopleCopy copy];
    infosWithoutPeople = v11->_infosWithoutPeople;
    v11->_infosWithoutPeople = v16;
  }

  return v11;
}

@end