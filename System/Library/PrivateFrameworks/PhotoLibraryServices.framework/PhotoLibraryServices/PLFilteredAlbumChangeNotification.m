@interface PLFilteredAlbumChangeNotification
+ (id)notificationForDerivedObject:(id)a3 priorChangeState:(id)a4 forBackingObjectNotification:(id)a5;
- (BOOL)_getOldSet:(id *)a3 newSet:(id *)a4;
- (BOOL)countDidChange;
- (BOOL)shouldReload;
- (NSString)description;
- (PLFilteredAlbumChangeNotification)initWithFilteredAlbum:(id)a3 priorChangeState:(id)a4 albumChangeNotification:(id)a5;
- (PLIndexMapper)indexMapper;
- (id)_diffDescription;
- (void)setFilteredIndexes:(id)a3;
@end

@implementation PLFilteredAlbumChangeNotification

- (BOOL)_getOldSet:(id *)a3 newSet:(id *)a4
{
  backingNotification = self->_backingNotification;
  v23 = 0;
  v24 = 0;
  v8 = [(PLAssetContainerChangeNotification *)backingNotification _getOldSet:&v24 newSet:&v23];
  v9 = v24;
  v10 = v23;
  if (v8)
  {
    v11 = self->_oldFilteredIndexes;
    v12 = [(PLFilteredAlbumChangeNotification *)self updatedFilteredIndexes];
    v13 = v12;
    if (v11)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14 || -[NSIndexSet count](v11, "count") && (v15 = [v9 count], v15 <= -[NSIndexSet lastIndex](v11, "lastIndex")) || objc_msgSend(v13, "count") && (v16 = objc_msgSend(v10, "count"), v16 <= objc_msgSend(v13, "lastIndex")))
    {
      v21 = 0;
    }

    else
    {
      v17 = MEMORY[0x1E695DFB8];
      v18 = [v9 objectsAtIndexes:v11];
      *a3 = [v17 orderedSetWithArray:v18];

      v19 = MEMORY[0x1E695DFB8];
      v20 = [v10 objectsAtIndexes:v13];
      *a4 = [v19 orderedSetWithArray:v20];

      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)_diffDescription
{
  [(PLContainerChangeNotification *)self _calculateDiffsIfNecessary];
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AD60] string];
  if ([(PLFilteredAlbumChangeNotification *)self shouldReload])
  {
    v5 = [(PLAssetContainerChangeNotification *)self _contentRelationshipName];
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
    v20 = __53__PLFilteredAlbumChangeNotification__diffDescription__block_invoke;
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

    if ([(PLFilteredAlbumChangeNotification *)self countDidChange])
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
  v6 = [(PLFilteredAlbumChangeNotification *)self object];
  v7 = [v4 stringWithFormat:@"<%@: %p> filtered album: %p backing note: <%@: %p>", v5, self, v6, objc_opt_class(), self->_backingNotification];

  v8 = [(PLFilteredAlbumChangeNotification *)self _diffDescription];
  [v7 appendString:v8];

  if ([(PLFilteredAlbumChangeNotification *)self keyAssetDidChange])
  {
    [v7 appendString:{@", key asset changed"}];
  }

  if ([(PLFilteredAlbumChangeNotification *)self titleDidChange])
  {
    [v7 appendString:{@", title changed"}];
  }

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
  v5 = [(PLFilteredAlbumChangeNotification *)self updatedFilteredIndexes];
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
  v3.super_class = PLFilteredAlbumChangeNotification;
  return [(PLContainerChangeNotification *)&v3 shouldReload];
}

- (PLFilteredAlbumChangeNotification)initWithFilteredAlbum:(id)a3 priorChangeState:(id)a4 albumChangeNotification:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = PLFilteredAlbumChangeNotification;
  v12 = [(PLContainerChangeNotification *)&v21 _init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 13, a3);
    v14 = [v11 snapshot];

    if (v14)
    {
      v15 = [v11 snapshot];
      v16 = [v15 filteredIndexesForFilter:v13->_album];
      oldFilteredIndexes = v13->_oldFilteredIndexes;
      v13->_oldFilteredIndexes = v16;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v10;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      v15 = v13->_oldFilteredIndexes;
      v13->_oldFilteredIndexes = v19;
    }

    objc_storeStrong(&v13->_backingNotification, a5);
  }

  return v13;
}

+ (id)notificationForDerivedObject:(id)a3 priorChangeState:(id)a4 forBackingObjectNotification:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
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
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = 0;
    }

    else
    {
      v13 = [[a1 alloc] initWithFilteredAlbum:v11 priorChangeState:v9 albumChangeNotification:v12];
    }
  }

  else
  {
    v13 = 0;
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