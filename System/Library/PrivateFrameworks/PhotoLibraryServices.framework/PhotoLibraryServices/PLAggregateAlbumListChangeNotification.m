@interface PLAggregateAlbumListChangeNotification
+ (id)notificationForAggregateAlbumList:(id)a3 fromAlbumListChangeNotification:(id)a4 indexOffset:(unint64_t)a5;
- (PLAggregateAlbumListChangeNotification)initWithAggregateAlbumList:(id)a3 fromAlbumListChangeNotification:(id)a4 indexOffset:(unint64_t)a5;
- (id)changedIndexes;
- (id)changedIndexesRelativeToSnapshot;
- (id)deletedIndexes;
- (id)insertedIndexes;
- (unint64_t)snapshotIndexForContainedObject:(id)a3;
- (void)dealloc;
- (void)enumerateMovesWithBlock:(id)a3;
@end

@implementation PLAggregateAlbumListChangeNotification

- (unint64_t)snapshotIndexForContainedObject:(id)a3
{
  v7.receiver = self;
  v7.super_class = PLAggregateAlbumListChangeNotification;
  v4 = [(PLContainerChangeNotification *)&v7 snapshotIndexForContainedObject:a3];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return v4 + self->_indexOffet;
  }

  return v5;
}

- (id)changedIndexesRelativeToSnapshot
{
  v3 = [(PLContainerChangeNotification *)self->_note changedIndexesRelativeToSnapshot];
  v4 = [v3 mutableCopy];

  [v4 shiftIndexesStartingAtIndex:0 by:self->_indexOffet];

  return v4;
}

- (id)changedIndexes
{
  v3 = [(PLContainerChangeNotification *)self->_note changedIndexes];
  v4 = [v3 mutableCopy];

  [v4 shiftIndexesStartingAtIndex:0 by:self->_indexOffet];

  return v4;
}

- (void)enumerateMovesWithBlock:(id)a3
{
  v4 = a3;
  note = self->_note;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PLAggregateAlbumListChangeNotification_enumerateMovesWithBlock___block_invoke;
  v7[3] = &unk_1E75708C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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
  v3 = [(PLContainerChangeNotification *)self->_note insertedIndexes];
  v4 = [v3 mutableCopy];

  [v4 shiftIndexesStartingAtIndex:0 by:self->_indexOffet];

  return v4;
}

- (id)deletedIndexes
{
  v3 = [(PLContainerChangeNotification *)self->_note deletedIndexes];
  v4 = [v3 mutableCopy];

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

- (PLAggregateAlbumListChangeNotification)initWithAggregateAlbumList:(id)a3 fromAlbumListChangeNotification:(id)a4 indexOffset:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PLAggregateAlbumListChangeNotification;
  v11 = [(PLContainerChangeNotification *)&v14 _init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 12, a3);
    objc_storeStrong(&v12->_note, a4);
    v12->_indexOffet = a5;
  }

  return v12;
}

+ (id)notificationForAggregateAlbumList:(id)a3 fromAlbumListChangeNotification:(id)a4 indexOffset:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = 0;
  }

  else
  {
    v10 = [[a1 alloc] initWithAggregateAlbumList:v8 fromAlbumListChangeNotification:v9 indexOffset:a5];
  }

  return v10;
}

@end