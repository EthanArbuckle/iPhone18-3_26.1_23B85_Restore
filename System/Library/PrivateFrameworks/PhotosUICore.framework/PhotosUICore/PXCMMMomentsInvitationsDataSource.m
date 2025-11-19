@interface PXCMMMomentsInvitationsDataSource
- (PXCMMMomentsInvitationsDataSource)initWithState:(id)a3;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3;
- (id)invitationAtItemIndexPath:(PXSimpleIndexPath *)a3;
- (id)invitationForObjectID:(id)a3;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
- (id)objectIDAtItemIndexPath:(PXSimpleIndexPath *)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
@end

@implementation PXCMMMomentsInvitationsDataSource

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3
{
  v6 = a4;
  v22 = 0u;
  v23 = 0u;
  v21.receiver = self;
  v21.super_class = PXCMMMomentsInvitationsDataSource;
  [(PXSimpleIndexPath *)&v21 indexPathForObjectReference:v6];
  v7 = v22;
  if (v22 == *off_1E7721F68)
  {
    if (v6)
    {
      [v6 indexPath];
      v8 = v19;
      v9 = v20 == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = 0;
      v8 = 0;
      v20 = 0u;
    }

    if (v8 != v7 && !v9 && *(&v20 + 1) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [v6 itemObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v12 = [(PXCMMMomentsInvitationsDataSource *)self _state];
        v13 = [v12 assetCollections];
        v14 = [v6 itemObject];
        v15 = [v14 assetCollection];
        v16 = [v13 indexOfObject:v15];

        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = [(PXCMMMomentsInvitationsDataSource *)self identifier];
          *&v23 = v16;
          *(&v23 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }
  }

  v17 = v23;
  *&retstr->dataSourceIdentifier = v22;
  *&retstr->item = v17;

  return result;
}

- (id)invitationForObjectID:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXCMMMomentsInvitationsDataSourceManager.m" lineNumber:389 description:{@"Invalid parameter not satisfying: %@", @"assetCollectionObjectID"}];
  }

  v6 = [(PXCMMMomentsInvitationsDataSource *)self _state];
  v7 = [v6 invitationsByAssetCollectionObjectID];
  v8 = [v7 objectForKeyedSubscript:v5];

  if (!v8)
  {
    v9 = [v6 photoLibrary];
    v10 = objc_alloc(MEMORY[0x1E69788E0]);
    v17[0] = v5;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v12 = [MEMORY[0x1E6978650] fetchType];
    v13 = [v10 initWithOids:v11 photoLibrary:v9 fetchType:v12 fetchPropertySets:0 identifier:0 registerIfNeeded:1];

    v14 = [v13 firstObject];
    v8 = [PXCMMMomentsInvitation invitationWithAssetCollection:v14];
  }

  return v8;
}

- (id)objectIDAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  item = a3->item;
  v7 = [(PXCMMMomentsInvitationsDataSource *)self _state];
  v8 = [v7 assetCollections];
  v9 = [v8 fetchedObjectIDs];
  v10 = [v9 count];

  if (item >= v10)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXCMMMomentsInvitationsDataSourceManager.m" lineNumber:383 description:{@"Invalid parameter not satisfying: %@", @"indexPath.item < self._state.assetCollections.fetchedObjectIDs.count"}];
  }

  v11 = [(PXCMMMomentsInvitationsDataSource *)self _state];
  v12 = [v11 assetCollections];
  v13 = [v12 fetchedObjectIDs];
  v14 = [v13 objectAtIndexedSubscript:a3->item];

  return v14;
}

- (id)invitationAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  v6[0] = *&a3->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXCMMMomentsInvitationsDataSource *)self objectAtIndexPath:v6];

  return v4;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXCMMMomentsInvitationsDataSource *)self identifier])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXCMMMomentsInvitationsDataSourceManager.m" lineNumber:359 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (a3->dataSourceIdentifier == *off_1E7721F68)
  {
LABEL_14:
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXCMMMomentsInvitationsDataSourceManager.m" lineNumber:371 description:@"Code which should be unreachable has been reached"];

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
    v8 = @"PXCMMMomentsInvitationsDataSourceSection";
    goto LABEL_11;
  }

  if (a3->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  v9 = [(PXCMMMomentsInvitationsDataSource *)self _state];
  v10 = [v9 assetCollections];
  v11 = [v10 fetchedObjectIDs];
  v12 = [v11 objectAtIndex:a3->item];

  v8 = [(PXCMMMomentsInvitationsDataSource *)self invitationForObjectID:v12];

LABEL_11:

  return v8;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v3 = [(PXCMMMomentsInvitationsDataSource *)self _state];
  v4 = [v3 assetCollections];
  v5 = [v4 count];

  return v5;
}

- (PXCMMMomentsInvitationsDataSource)initWithState:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXCMMMomentsInvitationsDataSource;
  v6 = [(PXCMMMomentsInvitationsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__state, a3);
  }

  return v7;
}

@end