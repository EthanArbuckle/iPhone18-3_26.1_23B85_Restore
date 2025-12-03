@interface PLAggregateAlbumListChangeNotification
+ (id)notificationForAggregateAlbumList:(id)list fromAlbumListChangeNotification:(id)notification indexOffset:(unint64_t)offset;
- (PLAggregateAlbumListChangeNotification)initWithAggregateAlbumList:(id)list fromAlbumListChangeNotification:(id)notification indexOffset:(unint64_t)offset;
- (id)changedIndexes;
- (id)changedIndexesRelativeToSnapshot;
- (id)deletedIndexes;
- (id)insertedIndexes;
- (unint64_t)snapshotIndexForContainedObject:(id)object;
- (void)dealloc;
- (void)enumerateMovesWithBlock:(id)block;
@end

@implementation PLAggregateAlbumListChangeNotification

- (unint64_t)snapshotIndexForContainedObject:(id)object
{
  v7.receiver = self;
  v7.super_class = PLAggregateAlbumListChangeNotification;
  v4 = [(PLContainerChangeNotification *)&v7 snapshotIndexForContainedObject:object];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return v4 + self->_indexOffet;
  }

  return v5;
}

- (id)changedIndexesRelativeToSnapshot
{
  changedIndexesRelativeToSnapshot = [(PLContainerChangeNotification *)self->_note changedIndexesRelativeToSnapshot];
  v4 = [changedIndexesRelativeToSnapshot mutableCopy];

  [v4 shiftIndexesStartingAtIndex:0 by:self->_indexOffet];

  return v4;
}

- (id)changedIndexes
{
  changedIndexes = [(PLContainerChangeNotification *)self->_note changedIndexes];
  v4 = [changedIndexes mutableCopy];

  [v4 shiftIndexesStartingAtIndex:0 by:self->_indexOffet];

  return v4;
}

- (void)enumerateMovesWithBlock:(id)block
{
  blockCopy = block;
  note = self->_note;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PLAggregateAlbumListChangeNotification_enumerateMovesWithBlock___block_invoke;
  v7[3] = &unk_1E75708C8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(PLContainerChangeNotification *)note enumerateMovesWithBlock:v7];
}

uint64_t __66__PLAggregateAlbumListChangeNotification_enumerateMovesWithBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 112) + a2, *(*(a1 + 32) + 112) + a3);
  }

  return result;
}

- (id)insertedIndexes
{
  insertedIndexes = [(PLContainerChangeNotification *)self->_note insertedIndexes];
  v4 = [insertedIndexes mutableCopy];

  [v4 shiftIndexesStartingAtIndex:0 by:self->_indexOffet];

  return v4;
}

- (id)deletedIndexes
{
  deletedIndexes = [(PLContainerChangeNotification *)self->_note deletedIndexes];
  v4 = [deletedIndexes mutableCopy];

  [v4 shiftIndexesStartingAtIndex:0 by:self->_indexOffet];

  return v4;
}

- (void)dealloc
{
  albumList = self->_albumList;
  self->_albumList = 0;

  note = self->_note;
  self->_note = 0;

  v5.receiver = self;
  v5.super_class = PLAggregateAlbumListChangeNotification;
  [(PLContainerChangeNotification *)&v5 dealloc];
}

- (PLAggregateAlbumListChangeNotification)initWithAggregateAlbumList:(id)list fromAlbumListChangeNotification:(id)notification indexOffset:(unint64_t)offset
{
  listCopy = list;
  notificationCopy = notification;
  v14.receiver = self;
  v14.super_class = PLAggregateAlbumListChangeNotification;
  _init = [(PLContainerChangeNotification *)&v14 _init];
  v12 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 12, list);
    objc_storeStrong(&v12->_note, notification);
    v12->_indexOffet = offset;
  }

  return v12;
}

+ (id)notificationForAggregateAlbumList:(id)list fromAlbumListChangeNotification:(id)notification indexOffset:(unint64_t)offset
{
  listCopy = list;
  notificationCopy = notification;
  if (!notificationCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = 0;
  }

  else
  {
    v10 = [[self alloc] initWithAggregateAlbumList:listCopy fromAlbumListChangeNotification:notificationCopy indexOffset:offset];
  }

  return v10;
}

@end