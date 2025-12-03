@interface PXCMMMomentsInvitationsDataSource
- (PXCMMMomentsInvitationsDataSource)initWithState:(id)state;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference;
- (id)invitationAtItemIndexPath:(PXSimpleIndexPath *)path;
- (id)invitationForObjectID:(id)d;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (id)objectIDAtItemIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)numberOfItemsInSection:(int64_t)section;
@end

@implementation PXCMMMomentsInvitationsDataSource

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference
{
  v6 = a4;
  identifier = 0u;
  v23 = 0u;
  v21.receiver = self;
  v21.super_class = PXCMMMomentsInvitationsDataSource;
  [(PXSimpleIndexPath *)&v21 indexPathForObjectReference:v6];
  v7 = identifier;
  if (identifier == *off_1E7721F68)
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
      itemObject = [v6 itemObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        _state = [(PXCMMMomentsInvitationsDataSource *)self _state];
        assetCollections = [_state assetCollections];
        itemObject2 = [v6 itemObject];
        assetCollection = [itemObject2 assetCollection];
        v16 = [assetCollections indexOfObject:assetCollection];

        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          identifier = [(PXCMMMomentsInvitationsDataSource *)self identifier];
          *&v23 = v16;
          *(&v23 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }
  }

  v17 = v23;
  *&retstr->dataSourceIdentifier = identifier;
  *&retstr->item = v17;

  return result;
}

- (id)invitationForObjectID:(id)d
{
  v17[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentsInvitationsDataSourceManager.m" lineNumber:389 description:{@"Invalid parameter not satisfying: %@", @"assetCollectionObjectID"}];
  }

  _state = [(PXCMMMomentsInvitationsDataSource *)self _state];
  invitationsByAssetCollectionObjectID = [_state invitationsByAssetCollectionObjectID];
  v8 = [invitationsByAssetCollectionObjectID objectForKeyedSubscript:dCopy];

  if (!v8)
  {
    photoLibrary = [_state photoLibrary];
    v10 = objc_alloc(MEMORY[0x1E69788E0]);
    v17[0] = dCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    fetchType = [MEMORY[0x1E6978650] fetchType];
    v13 = [v10 initWithOids:v11 photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:0 identifier:0 registerIfNeeded:1];

    firstObject = [v13 firstObject];
    v8 = [PXCMMMomentsInvitation invitationWithAssetCollection:firstObject];
  }

  return v8;
}

- (id)objectIDAtItemIndexPath:(PXSimpleIndexPath *)path
{
  item = path->item;
  _state = [(PXCMMMomentsInvitationsDataSource *)self _state];
  assetCollections = [_state assetCollections];
  fetchedObjectIDs = [assetCollections fetchedObjectIDs];
  v10 = [fetchedObjectIDs count];

  if (item >= v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentsInvitationsDataSourceManager.m" lineNumber:383 description:{@"Invalid parameter not satisfying: %@", @"indexPath.item < self._state.assetCollections.fetchedObjectIDs.count"}];
  }

  _state2 = [(PXCMMMomentsInvitationsDataSource *)self _state];
  assetCollections2 = [_state2 assetCollections];
  fetchedObjectIDs2 = [assetCollections2 fetchedObjectIDs];
  v14 = [fetchedObjectIDs2 objectAtIndexedSubscript:path->item];

  return v14;
}

- (id)invitationAtItemIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  v6[0] = *&path->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXCMMMomentsInvitationsDataSource *)self objectAtIndexPath:v6];

  return v4;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXCMMMomentsInvitationsDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentsInvitationsDataSourceManager.m" lineNumber:359 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (path->dataSourceIdentifier == *off_1E7721F68)
  {
LABEL_14:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCMMMomentsInvitationsDataSourceManager.m" lineNumber:371 description:@"Code which should be unreachable has been reached"];

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
    v8 = @"PXCMMMomentsInvitationsDataSourceSection";
    goto LABEL_11;
  }

  if (path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  _state = [(PXCMMMomentsInvitationsDataSource *)self _state];
  assetCollections = [_state assetCollections];
  fetchedObjectIDs = [assetCollections fetchedObjectIDs];
  v12 = [fetchedObjectIDs objectAtIndex:path->item];

  v8 = [(PXCMMMomentsInvitationsDataSource *)self invitationForObjectID:v12];

LABEL_11:

  return v8;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  _state = [(PXCMMMomentsInvitationsDataSource *)self _state];
  assetCollections = [_state assetCollections];
  v5 = [assetCollections count];

  return v5;
}

- (PXCMMMomentsInvitationsDataSource)initWithState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = PXCMMMomentsInvitationsDataSource;
  v6 = [(PXCMMMomentsInvitationsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__state, state);
  }

  return v7;
}

@end