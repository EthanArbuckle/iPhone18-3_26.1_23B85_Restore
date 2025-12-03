@interface PXCMMMomentShareInvitationsDataSource
+ (PXCMMMomentShareInvitationsDataSource)new;
- (PXCMMMomentShareInvitationsDataSource)init;
- (PXCMMMomentShareInvitationsDataSource)initWithState:(id)state;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference;
- (id)invitationAtItemIndexPath:(PXSimpleIndexPath *)path;
- (id)invitationForObjectID:(id)d;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (id)objectIDAtItemIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)numberOfItemsInSection:(int64_t)section;
@end

@implementation PXCMMMomentShareInvitationsDataSource

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference
{
  v6 = a4;
  identifier = 0u;
  v22 = 0u;
  v20.receiver = self;
  v20.super_class = PXCMMMomentShareInvitationsDataSource;
  [(PXSimpleIndexPath *)&v20 indexPathForObjectReference:v6];
  v7 = identifier;
  if (identifier == *off_1E7721F68)
  {
    if (v6)
    {
      [v6 indexPath];
      v8 = v18;
      v9 = v19 == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = 0;
      v8 = 0;
      v19 = 0u;
    }

    if (v8 != v7 && !v9 && *(&v19 + 1) == 0x7FFFFFFFFFFFFFFFLL)
    {
      itemObject = [v6 itemObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        momentShares = [(PXCMMMomentShareInvitationsDataSourceState *)self->_state momentShares];
        itemObject2 = [v6 itemObject];
        momentShare = [itemObject2 momentShare];
        v15 = [momentShares indexOfObject:momentShare];

        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          identifier = [(PXCMMMomentShareInvitationsDataSource *)self identifier];
          *&v22 = v15;
          *(&v22 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }
  }

  v16 = v22;
  *&retstr->dataSourceIdentifier = identifier;
  *&retstr->item = v16;

  return result;
}

- (id)invitationForObjectID:(id)d
{
  v17[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:504 description:{@"Invalid parameter not satisfying: %@", @"momentShareObjectID"}];
  }

  invitationsByMomentShareObjectID = [(PXCMMMomentShareInvitationsDataSourceState *)self->_state invitationsByMomentShareObjectID];
  v7 = [invitationsByMomentShareObjectID objectForKeyedSubscript:dCopy];

  if (!v7)
  {
    momentShares = [(PXCMMMomentShareInvitationsDataSourceState *)self->_state momentShares];
    photoLibrary = [momentShares photoLibrary];

    v10 = objc_alloc(MEMORY[0x1E69788E0]);
    v17[0] = dCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    fetchType = [MEMORY[0x1E6978930] fetchType];
    v13 = [v10 initWithOids:v11 photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:0 identifier:0 registerIfNeeded:1];

    firstObject = [v13 firstObject];
    v7 = [PXCMMMomentShareInvitation invitationWithMomentShare:firstObject];
  }

  return v7;
}

- (id)objectIDAtItemIndexPath:(PXSimpleIndexPath *)path
{
  item = path->item;
  momentShares = [(PXCMMMomentShareInvitationsDataSourceState *)self->_state momentShares];
  fetchedObjectIDs = [momentShares fetchedObjectIDs];
  v9 = [fetchedObjectIDs count];

  if (item >= v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:498 description:{@"Invalid parameter not satisfying: %@", @"indexPath.item < _state.momentShares.fetchedObjectIDs.count"}];
  }

  momentShares2 = [(PXCMMMomentShareInvitationsDataSourceState *)self->_state momentShares];
  fetchedObjectIDs2 = [momentShares2 fetchedObjectIDs];
  v12 = [fetchedObjectIDs2 objectAtIndexedSubscript:path->item];

  return v12;
}

- (id)invitationAtItemIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  v6[0] = *&path->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXCMMMomentShareInvitationsDataSource *)self objectAtIndexPath:v6];

  return v4;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXCMMMomentShareInvitationsDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:475 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (path->dataSourceIdentifier == *off_1E7721F68)
  {
LABEL_14:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:486 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  item = path->item;
  if (path->section == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (item == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_14;
    }
  }

  else if (item == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = @"PXCMMMomentShareInvitationsDataSourceSection";
    goto LABEL_11;
  }

  if (path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  momentShares = [(PXCMMMomentShareInvitationsDataSourceState *)self->_state momentShares];
  fetchedObjectIDs = [momentShares fetchedObjectIDs];
  v11 = [fetchedObjectIDs objectAtIndex:path->item];

  v8 = [(PXCMMMomentShareInvitationsDataSource *)self invitationForObjectID:v11];

LABEL_11:

  return v8;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  momentShares = [(PXCMMMomentShareInvitationsDataSourceState *)self->_state momentShares];
  v4 = [momentShares count];

  return v4;
}

- (PXCMMMomentShareInvitationsDataSource)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:458 description:{@"%s is not available as initializer", "-[PXCMMMomentShareInvitationsDataSource init]"}];

  abort();
}

- (PXCMMMomentShareInvitationsDataSource)initWithState:(id)state
{
  stateCopy = state;
  if (!stateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:449 description:{@"Invalid parameter not satisfying: %@", @"state"}];
  }

  v11.receiver = self;
  v11.super_class = PXCMMMomentShareInvitationsDataSource;
  v7 = [(PXCMMMomentShareInvitationsDataSource *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_state, state);
  }

  return v8;
}

+ (PXCMMMomentShareInvitationsDataSource)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:462 description:{@"%s is not available as initializer", "+[PXCMMMomentShareInvitationsDataSource new]"}];

  abort();
}

@end