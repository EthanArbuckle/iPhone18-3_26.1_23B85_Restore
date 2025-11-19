@interface PXCMMMomentShareInvitationsDataSource
+ (PXCMMMomentShareInvitationsDataSource)new;
- (PXCMMMomentShareInvitationsDataSource)init;
- (PXCMMMomentShareInvitationsDataSource)initWithState:(id)a3;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3;
- (id)invitationAtItemIndexPath:(PXSimpleIndexPath *)a3;
- (id)invitationForObjectID:(id)a3;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
- (id)objectIDAtItemIndexPath:(PXSimpleIndexPath *)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
@end

@implementation PXCMMMomentShareInvitationsDataSource

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3
{
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v20.receiver = self;
  v20.super_class = PXCMMMomentShareInvitationsDataSource;
  [(PXSimpleIndexPath *)&v20 indexPathForObjectReference:v6];
  v7 = v21;
  if (v21 == *off_1E7721F68)
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
      v10 = [v6 itemObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v12 = [(PXCMMMomentShareInvitationsDataSourceState *)self->_state momentShares];
        v13 = [v6 itemObject];
        v14 = [v13 momentShare];
        v15 = [v12 indexOfObject:v14];

        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = [(PXCMMMomentShareInvitationsDataSource *)self identifier];
          *&v22 = v15;
          *(&v22 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }
  }

  v16 = v22;
  *&retstr->dataSourceIdentifier = v21;
  *&retstr->item = v16;

  return result;
}

- (id)invitationForObjectID:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:504 description:{@"Invalid parameter not satisfying: %@", @"momentShareObjectID"}];
  }

  v6 = [(PXCMMMomentShareInvitationsDataSourceState *)self->_state invitationsByMomentShareObjectID];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (!v7)
  {
    v8 = [(PXCMMMomentShareInvitationsDataSourceState *)self->_state momentShares];
    v9 = [v8 photoLibrary];

    v10 = objc_alloc(MEMORY[0x1E69788E0]);
    v17[0] = v5;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v12 = [MEMORY[0x1E6978930] fetchType];
    v13 = [v10 initWithOids:v11 photoLibrary:v9 fetchType:v12 fetchPropertySets:0 identifier:0 registerIfNeeded:1];

    v14 = [v13 firstObject];
    v7 = [PXCMMMomentShareInvitation invitationWithMomentShare:v14];
  }

  return v7;
}

- (id)objectIDAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  item = a3->item;
  v7 = [(PXCMMMomentShareInvitationsDataSourceState *)self->_state momentShares];
  v8 = [v7 fetchedObjectIDs];
  v9 = [v8 count];

  if (item >= v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:498 description:{@"Invalid parameter not satisfying: %@", @"indexPath.item < _state.momentShares.fetchedObjectIDs.count"}];
  }

  v10 = [(PXCMMMomentShareInvitationsDataSourceState *)self->_state momentShares];
  v11 = [v10 fetchedObjectIDs];
  v12 = [v11 objectAtIndexedSubscript:a3->item];

  return v12;
}

- (id)invitationAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  v6[0] = *&a3->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXCMMMomentShareInvitationsDataSource *)self objectAtIndexPath:v6];

  return v4;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXCMMMomentShareInvitationsDataSource *)self identifier])
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:475 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (a3->dataSourceIdentifier == *off_1E7721F68)
  {
LABEL_14:
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:486 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  item = a3->item;
  if (a3->section == 0x7FFFFFFFFFFFFFFFLL)
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

  if (a3->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  v9 = [(PXCMMMomentShareInvitationsDataSourceState *)self->_state momentShares];
  v10 = [v9 fetchedObjectIDs];
  v11 = [v10 objectAtIndex:a3->item];

  v8 = [(PXCMMMomentShareInvitationsDataSource *)self invitationForObjectID:v11];

LABEL_11:

  return v8;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v3 = [(PXCMMMomentShareInvitationsDataSourceState *)self->_state momentShares];
  v4 = [v3 count];

  return v4;
}

- (PXCMMMomentShareInvitationsDataSource)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:458 description:{@"%s is not available as initializer", "-[PXCMMMomentShareInvitationsDataSource init]"}];

  abort();
}

- (PXCMMMomentShareInvitationsDataSource)initWithState:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:449 description:{@"Invalid parameter not satisfying: %@", @"state"}];
  }

  v11.receiver = self;
  v11.super_class = PXCMMMomentShareInvitationsDataSource;
  v7 = [(PXCMMMomentShareInvitationsDataSource *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_state, a3);
  }

  return v8;
}

+ (PXCMMMomentShareInvitationsDataSource)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:462 description:{@"%s is not available as initializer", "+[PXCMMMomentShareInvitationsDataSource new]"}];

  abort();
}

@end