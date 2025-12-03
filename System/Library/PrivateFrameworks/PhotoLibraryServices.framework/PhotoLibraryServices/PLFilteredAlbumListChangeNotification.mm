@interface PLFilteredAlbumListChangeNotification
+ (id)notificationForDerivedObject:(id)object priorChangeState:(id)state forBackingObjectNotification:(id)notification;
- (BOOL)_getOldSet:(id *)set newSet:(id *)newSet;
- (BOOL)countDidChange;
- (BOOL)shouldReload;
- (NSString)description;
- (PLFilteredAlbumListChangeNotification)initWithFilteredAlbumList:(id)list albumListChangeNotification:(id)notification;
- (PLIndexMapper)indexMapper;
- (id)_diffDescription;
- (void)setFilteredIndexes:(id)indexes;
@end

@implementation PLFilteredAlbumListChangeNotification

- (BOOL)_getOldSet:(id *)set newSet:(id *)newSet
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
    updatedFilteredIndexes = [(PLFilteredAlbumListChangeNotification *)self updatedFilteredIndexes];
    v13 = updatedFilteredIndexes;
    if (v11)
    {
      v14 = updatedFilteredIndexes == 0;
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
      *set = [v16 orderedSetWithArray:v17];

      v18 = MEMORY[0x1E695DFB8];
      v19 = [v10 objectsAtIndexes:v13];
      *newSet = [v18 orderedSetWithArray:v19];
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
  string = [MEMORY[0x1E696AD60] string];
  if ([(PLFilteredAlbumListChangeNotification *)self shouldReload])
  {
    _contentRelationshipName = [(PLAssetContainerListChangeNotification *)self _contentRelationshipName];
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
    v20 = __57__PLFilteredAlbumListChangeNotification__diffDescription__block_invoke;
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

    if ([(PLFilteredAlbumListChangeNotification *)self countDidChange])
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
  object = [(PLFilteredAlbumListChangeNotification *)self object];
  v7 = [v4 stringWithFormat:@"<%@: %p> filtered album list: %p backing note: <%@: %p>", v5, self, object, objc_opt_class(), self->_backingNotification];

  _diffDescription = [(PLFilteredAlbumListChangeNotification *)self _diffDescription];
  [v7 appendString:_diffDescription];

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
  updatedFilteredIndexes = [(PLFilteredAlbumListChangeNotification *)self updatedFilteredIndexes];
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
  v3.super_class = PLFilteredAlbumListChangeNotification;
  return [(PLContainerChangeNotification *)&v3 shouldReload];
}

- (PLFilteredAlbumListChangeNotification)initWithFilteredAlbumList:(id)list albumListChangeNotification:(id)notification
{
  listCopy = list;
  notificationCopy = notification;
  v15.receiver = self;
  v15.super_class = PLFilteredAlbumListChangeNotification;
  _init = [(PLContainerChangeNotification *)&v15 _init];
  v10 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 12, list);
    snapshot = [notificationCopy snapshot];
    v12 = [snapshot filteredIndexesForFilter:v10->_albumList];
    oldFilteredIndexes = v10->_oldFilteredIndexes;
    v10->_oldFilteredIndexes = v12;

    objc_storeStrong(&v10->_backingNotification, notification);
  }

  return v10;
}

+ (id)notificationForDerivedObject:(id)object priorChangeState:(id)state forBackingObjectNotification:(id)notification
{
  objectCopy = object;
  stateCopy = state;
  notificationCopy = notification;
  if (!notificationCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = 0;
  }

  else
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
    v13 = [[self alloc] initWithFilteredAlbumList:v11 albumListChangeNotification:v12];
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