@interface PLFilteredAlbumListChangeNotification
+ (id)notificationForDerivedObject:(id)a3 priorChangeState:(id)a4 forBackingObjectNotification:(id)a5;
- (BOOL)_getOldSet:(id *)a3 newSet:(id *)a4;
- (BOOL)countDidChange;
- (BOOL)shouldReload;
- (NSString)description;
- (PLFilteredAlbumListChangeNotification)initWithFilteredAlbumList:(id)a3 albumListChangeNotification:(id)a4;
- (PLIndexMapper)indexMapper;
- (id)_diffDescription;
- (void)setFilteredIndexes:(id)a3;
@end

@implementation PLFilteredAlbumListChangeNotification

- (BOOL)_getOldSet:(id *)a3 newSet:(id *)a4
{
  backingNotification = self->_backingNotification;
  v21 = 0;
  v22 = 0;
  v8 = [(PLContainerChangeNotification *)backingNotification _getOldSet:&v22 newSet:&v21];
  v9 = v22;
  v10 = v21;
  if (v8)
  {
    v11 = self->_oldFilteredIndexes;
    v12 = [(PLFilteredAlbumListChangeNotification *)self updatedFilteredIndexes];
    v13 = v12;
    if (v11)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = !v14;
    if (!v14)
    {
      v16 = MEMORY[0x1E695DFB8];
      v17 = [v9 objectsAtIndexes:v11];
      *a3 = [v16 orderedSetWithArray:v17];

      v18 = MEMORY[0x1E695DFB8];
      v19 = [v10 objectsAtIndexes:v13];
      *a4 = [v18 orderedSetWithArray:v19];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_diffDescription
{
  [(PLContainerChangeNotification *)self _calculateDiffsIfNecessary];
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AD60] string];
  if ([(PLFilteredAlbumListChangeNotification *)self shouldReload])
  {
    v5 = [(PLAssetContainerListChangeNotification *)self _contentRelationshipName];
    [v4 appendFormat:@", %@ need reload", v5];
  }

  else
  {
    v6 = [(PLContainerChangeNotification *)self deletedIndexes];

    if (v6)
    {
      v7 = [(PLContainerChangeNotification *)self deletedIndexes];
      v8 = [v7 pl_shortDescription];
      [v4 appendFormat:@", deleted: {%@}", v8];
    }

    v9 = [(PLContainerChangeNotification *)self insertedIndexes];

    if (v9)
    {
      v10 = [(PLContainerChangeNotification *)self insertedIndexes];
      v11 = [v10 pl_shortDescription];
      [v4 appendFormat:@", inserted: {%@}", v11];
    }

    v12 = [MEMORY[0x1E696AD60] string];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __57__PLFilteredAlbumListChangeNotification__diffDescription__block_invoke;
    v21 = &unk_1E7576478;
    v13 = v12;
    v22 = v13;
    [(PLContainerChangeNotification *)self enumerateMovesWithBlock:&v18];
    if ([v13 length])
    {
      [v4 appendFormat:@", moved: {%@}", v13, v18, v19, v20, v21];
    }

    v14 = [(PLContainerChangeNotification *)self changedIndexes];

    if (v14)
    {
      v15 = [(PLContainerChangeNotification *)self changedIndexes];
      v16 = [v15 pl_shortDescription];
      [v4 appendFormat:@", changed: {%@}", v16];
    }

    if ([(PLFilteredAlbumListChangeNotification *)self countDidChange])
    {
      [v4 appendString:{@", count changed"}];
    }
  }

  objc_autoreleasePoolPop(v3);

  return v4;
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AD60];
  v5 = objc_opt_class();
  v6 = [(PLFilteredAlbumListChangeNotification *)self object];
  v7 = [v4 stringWithFormat:@"<%@: %p> filtered album list: %p backing note: <%@: %p>", v5, self, v6, objc_opt_class(), self->_backingNotification];

  v8 = [(PLFilteredAlbumListChangeNotification *)self _diffDescription];
  [v7 appendString:v8];

  objc_autoreleasePoolPop(v3);

  return v7;
}

- (BOOL)countDidChange
{
  oldFilteredIndexes = self->_oldFilteredIndexes;
  if (!oldFilteredIndexes)
  {
    return 1;
  }

  v4 = [(NSIndexSet *)oldFilteredIndexes count];
  v5 = [(PLFilteredAlbumListChangeNotification *)self updatedFilteredIndexes];
  v6 = v4 != [v5 count];

  return v6;
}

- (BOOL)shouldReload
{
  if (!self->_oldFilteredIndexes)
  {
    return 1;
  }

  v3.receiver = self;
  v3.super_class = PLFilteredAlbumListChangeNotification;
  return [(PLContainerChangeNotification *)&v3 shouldReload];
}

- (PLFilteredAlbumListChangeNotification)initWithFilteredAlbumList:(id)a3 albumListChangeNotification:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = PLFilteredAlbumListChangeNotification;
  v9 = [(PLContainerChangeNotification *)&v15 _init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 12, a3);
    v11 = [v8 snapshot];
    v12 = [v11 filteredIndexesForFilter:v10->_albumList];
    oldFilteredIndexes = v10->_oldFilteredIndexes;
    v10->_oldFilteredIndexes = v12;

    objc_storeStrong(&v10->_backingNotification, a4);
  }

  return v10;
}

+ (id)notificationForDerivedObject:(id)a3 priorChangeState:(id)a4 forBackingObjectNotification:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = 0;
  }

  else
  {
    v11 = v8;
    v12 = v10;
    if (v11)
    {
      objc_opt_class();
      objc_opt_isKindOfClass();
    }

    objc_opt_class();
    objc_opt_isKindOfClass();
    v13 = [[a1 alloc] initWithFilteredAlbumList:v11 albumListChangeNotification:v12];
  }

  return v13;
}

- (void)setFilteredIndexes:(id)a3
{
  v5 = a3;
  if (self->_filteredIndexes != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_filteredIndexes, a3);
    v5 = v6;
  }
}

- (PLIndexMapper)indexMapper
{
  indexMapper = self->_indexMapper;
  if (!indexMapper)
  {
    v4 = [[PLIndexMapper alloc] initWithDataSource:self];
    v5 = self->_indexMapper;
    self->_indexMapper = v4;

    indexMapper = self->_indexMapper;
  }

  return indexMapper;
}

@end