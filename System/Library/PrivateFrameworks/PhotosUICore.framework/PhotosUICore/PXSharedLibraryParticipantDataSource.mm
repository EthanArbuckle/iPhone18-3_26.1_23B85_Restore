@interface PXSharedLibraryParticipantDataSource
- (NSArray)names;
- (NSArray)participantImageCombinerItems;
- (NSSet)emailAddresses;
- (NSSet)participantAddresses;
- (NSSet)phoneNumbers;
- (id)_initWithParticipants:(id)participants;
- (id)itemAtIndex:(int64_t)index;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (id)objectsInIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfParticipants;
- (int64_t)numberOfSubitemsInItem:(int64_t)item section:(int64_t)section;
@end

@implementation PXSharedLibraryParticipantDataSource

- (NSSet)participantAddresses
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  participants = [(PXSharedLibraryParticipantDataSource *)self participants];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__PXSharedLibraryParticipantDataSource_participantAddresses__block_invoke;
  v7[3] = &unk_1E7740D68;
  v5 = v3;
  v8 = v5;
  [participants enumerateObjectsUsingBlock:v7];

  return v5;
}

void __60__PXSharedLibraryParticipantDataSource_participantAddresses__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 appleIDAddress];
  v4 = [v3 length];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v7 appleIDAddress];
    [v5 addObject:v6];
  }
}

- (NSSet)phoneNumbers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  participants = [(PXSharedLibraryParticipantDataSource *)self participants];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PXSharedLibraryParticipantDataSource_phoneNumbers__block_invoke;
  v7[3] = &unk_1E7740D68;
  v5 = v3;
  v8 = v5;
  [participants enumerateObjectsUsingBlock:v7];

  return v5;
}

void __52__PXSharedLibraryParticipantDataSource_phoneNumbers__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 addressKind] == 2;
  v4 = v6;
  if (v3)
  {
    v5 = [v6 appleIDAddress];
    if ([v5 length])
    {
      [*(a1 + 32) addObject:v5];
    }

    v4 = v6;
  }
}

- (NSSet)emailAddresses
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  participants = [(PXSharedLibraryParticipantDataSource *)self participants];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__PXSharedLibraryParticipantDataSource_emailAddresses__block_invoke;
  v7[3] = &unk_1E7740D68;
  v5 = v3;
  v8 = v5;
  [participants enumerateObjectsUsingBlock:v7];

  return v5;
}

void __54__PXSharedLibraryParticipantDataSource_emailAddresses__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 addressKind] == 1;
  v4 = v6;
  if (v3)
  {
    v5 = [v6 appleIDAddress];
    if ([v5 length])
    {
      [*(a1 + 32) addObject:v5];
    }

    v4 = v6;
  }
}

- (NSArray)names
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  participants = [(PXSharedLibraryParticipantDataSource *)self participants];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__PXSharedLibraryParticipantDataSource_names__block_invoke;
  v7[3] = &unk_1E7740D68;
  v5 = v3;
  v8 = v5;
  [participants enumerateObjectsUsingBlock:v7];

  return v5;
}

void __45__PXSharedLibraryParticipantDataSource_names__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 name];
  if ([v4 length])
  {
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    v5 = [v3 appleIDAddress];
    if ([v5 length])
    {
      [*(a1 + 32) addObject:v5];
    }

    else
    {
      v6 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412290;
        v8 = v3;
        _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Didn't find display name for participant %@", &v7, 0xCu);
      }
    }
  }
}

- (NSArray)participantImageCombinerItems
{
  participants = [(PXSharedLibraryParticipantDataSource *)self participants];
  v3 = [participants copy];

  return v3;
}

- (int64_t)numberOfParticipants
{
  participants = [(PXSharedLibraryParticipantDataSource *)self participants];
  v3 = [participants count];

  return v3;
}

- (id)itemAtIndex:(int64_t)index
{
  participants = [(PXSharedLibraryParticipantDataSource *)self participants];
  v5 = [participants objectAtIndex:index];

  return v5;
}

- (id)objectsInIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXSharedLibraryParticipantDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantDataSource.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (path->dataSourceIdentifier == *off_1E7721F68 || path->section == 0x7FFFFFFFFFFFFFFFLL || path->item != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantDataSource.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsSection(indexPath)"}];
  }

  return [(PXSharedLibraryParticipantDataSource *)self participants];
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXSharedLibraryParticipantDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantDataSource.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (path->section)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantDataSource.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"indexPath.section == 0"}];
  }

  if (path->subitem)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantDataSource.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"indexPath.subitem == 0"}];
  }

  participants = [(PXSharedLibraryParticipantDataSource *)self participants];
  v8 = [participants objectAtIndex:path->item];

  return v8;
}

- (int64_t)numberOfSubitemsInItem:(int64_t)item section:(int64_t)section
{
  if (section)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantDataSource.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"section == 0"}];
  }

  return 0;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  if (section)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantDataSource.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"section == 0"}];
  }

  participants = [(PXSharedLibraryParticipantDataSource *)self participants];
  v5 = [participants count];

  return v5;
}

- (id)_initWithParticipants:(id)participants
{
  participantsCopy = participants;
  v9.receiver = self;
  v9.super_class = PXSharedLibraryParticipantDataSource;
  v5 = [(PXSharedLibraryParticipantDataSource *)&v9 init];
  if (v5)
  {
    v6 = [participantsCopy copy];
    participants = v5->_participants;
    v5->_participants = v6;
  }

  return v5;
}

@end