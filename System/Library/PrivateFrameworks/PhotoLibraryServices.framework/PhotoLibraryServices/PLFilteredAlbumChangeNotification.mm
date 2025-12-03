@interface PLFilteredAlbumChangeNotification
+ (id)notificationForDerivedObject:(id)object priorChangeState:(id)state forBackingObjectNotification:(id)notification;
- (BOOL)_getOldSet:(id *)set newSet:(id *)newSet;
- (BOOL)countDidChange;
- (BOOL)shouldReload;
- (NSString)description;
- (PLFilteredAlbumChangeNotification)initWithFilteredAlbum:(id)album priorChangeState:(id)state albumChangeNotification:(id)notification;
- (PLIndexMapper)indexMapper;
- (id)_diffDescription;
- (void)setFilteredIndexes:(id)indexes;
@end

@implementation PLFilteredAlbumChangeNotification

- (BOOL)_getOldSet:(id *)set newSet:(id *)newSet
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
    updatedFilteredIndexes = [(PLFilteredAlbumChangeNotification *)self updatedFilteredIndexes];
    v13 = updatedFilteredIndexes;
    if (v11)
    {
      v14 = updatedFilteredIndexes == 0;
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
      *set = [v17 orderedSetWithArray:v18];

      v19 = MEMORY[0x1E695DFB8];
      v20 = [v10 objectsAtIndexes:v13];
      *newSet = [v19 orderedSetWithArray:v20];

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
  string = [MEMORY[0x1E696AD60] string];
  if ([(PLFilteredAlbumChangeNotification *)self shouldReload])
  {
    _contentRelationshipName = [(PLAssetContainerChangeNotification *)self _contentRelationshipName];
    [string appendFormat:@", %@ need reload", _contentRelationshipName];
  }

  else
  {
    deletedIndexes = [(PLContainerChangeNotification *)self deletedIndexes];

    if (deletedIndexes)
    {
      deletedIndexes2 = [(PLContainerChangeNotification *)self deletedIndexes];
      pl_shortDescription = [deletedIndexes2 pl_shortDescription];
      [string appendFormat:@", deleted: {%@}", pl_shortDescription];
    }

    insertedIndexes = [(PLContainerChangeNotification *)self insertedIndexes];

    if (insertedIndexes)
    {
      insertedIndexes2 = [(PLContainerChangeNotification *)self insertedIndexes];
      pl_shortDescription2 = [insertedIndexes2 pl_shortDescription];
      [string appendFormat:@", inserted: {%@}", pl_shortDescription2];
    }

    string2 = [MEMORY[0x1E696AD60] string];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __53__PLFilteredAlbumChangeNotification__diffDescription__block_invoke;
    v21 = &unk_1E7576478;
    v13 = string2;
    v22 = v13;
    [(PLContainerChangeNotification *)self enumerateMovesWithBlock:&v18];
    if ([v13 length])
    {
      [string appendFormat:@", moved: {%@}", v13, v18, v19, v20, v21];
    }

    changedIndexes = [(PLContainerChangeNotification *)self changedIndexes];

    if (changedIndexes)
    {
      changedIndexes2 = [(PLContainerChangeNotification *)self changedIndexes];
      pl_shortDescription3 = [changedIndexes2 pl_shortDescription];
      [string appendFormat:@", changed: {%@}", pl_shortDescription3];
    }

    if ([(PLFilteredAlbumChangeNotification *)self countDidChange])
    {
      [string appendString:{@", count changed"}];
    }
  }

  objc_autoreleasePoolPop(v3);

  return string;
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AD60];
  v5 = objc_opt_class();
  object = [(PLFilteredAlbumChangeNotification *)self object];
  v7 = [v4 stringWithFormat:@"<%@: %p> filtered album: %p backing note: <%@: %p>", v5, self, object, objc_opt_class(), self->_backingNotification];

  _diffDescription = [(PLFilteredAlbumChangeNotification *)self _diffDescription];
  [v7 appendString:_diffDescription];

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
  updatedFilteredIndexes = [(PLFilteredAlbumChangeNotification *)self updatedFilteredIndexes];
  v6 = v4 != [updatedFilteredIndexes count];

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

- (PLFilteredAlbumChangeNotification)initWithFilteredAlbum:(id)album priorChangeState:(id)state albumChangeNotification:(id)notification
{
  albumCopy = album;
  stateCopy = state;
  notificationCopy = notification;
  v21.receiver = self;
  v21.super_class = PLFilteredAlbumChangeNotification;
  _init = [(PLContainerChangeNotification *)&v21 _init];
  v13 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 13, album);
    snapshot = [notificationCopy snapshot];

    if (snapshot)
    {
      snapshot2 = [notificationCopy snapshot];
      v16 = [snapshot2 filteredIndexesForFilter:v13->_album];
      oldFilteredIndexes = v13->_oldFilteredIndexes;
      v13->_oldFilteredIndexes = v16;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = stateCopy;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      snapshot2 = v13->_oldFilteredIndexes;
      v13->_oldFilteredIndexes = v19;
    }

    objc_storeStrong(&v13->_backingNotification, notification);
  }

  return v13;
}

+ (id)notificationForDerivedObject:(id)object priorChangeState:(id)state forBackingObjectNotification:(id)notification
{
  objectCopy = object;
  stateCopy = state;
  notificationCopy = notification;
  if (notificationCopy)
  {
    v11 = objectCopy;
    v12 = notificationCopy;
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
      v13 = [[self alloc] initWithFilteredAlbum:v11 priorChangeState:stateCopy albumChangeNotification:v12];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setFilteredIndexes:(id)indexes
{
  indexesCopy = indexes;
  if (self->_filteredIndexes != indexesCopy)
  {
    v6 = indexesCopy;
    objc_storeStrong(&self->_filteredIndexes, indexes);
    indexesCopy = v6;
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