@interface VUICollectionChangeSet
- (BOOL)containsOnlyChangeKind:(unint64_t)kind;
- (BOOL)hasChanges;
- (id)_changesKinds;
- (id)description;
@end

@implementation VUICollectionChangeSet

- (BOOL)hasChanges
{
  deleteChange = [(VUICollectionChangeSet *)self deleteChange];
  if (deleteChange)
  {
    v4 = 1;
  }

  else
  {
    insertChange = [(VUICollectionChangeSet *)self insertChange];
    if (insertChange)
    {
      v4 = 1;
    }

    else
    {
      moveChanges = [(VUICollectionChangeSet *)self moveChanges];
      if ([moveChanges count])
      {
        v4 = 1;
      }

      else
      {
        updateChanges = [(VUICollectionChangeSet *)self updateChanges];
        v4 = [updateChanges count] != 0;
      }
    }
  }

  return v4;
}

- (BOOL)containsOnlyChangeKind:(unint64_t)kind
{
  _changesKinds = [(VUICollectionChangeSet *)self _changesKinds];
  if ([_changesKinds count] == 1)
  {
    firstObject = [_changesKinds firstObject];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:kind];
    v7 = [firstObject isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24.receiver = self;
  v24.super_class = VUICollectionChangeSet;
  v4 = [(VUICollectionChangeSet *)&v24 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x277CCACA8];
  v6 = VUIBoolLogString([(VUICollectionChangeSet *)self hasChanges]);
  v7 = [v5 stringWithFormat:@"%@=%@", @"hasChanges", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x277CCACA8];
  deleteChange = [(VUICollectionChangeSet *)self deleteChange];
  v10 = [v8 stringWithFormat:@"%@=%@", @"deleteChange", deleteChange];
  [v3 addObject:v10];

  v11 = MEMORY[0x277CCACA8];
  insertChange = [(VUICollectionChangeSet *)self insertChange];
  v13 = [v11 stringWithFormat:@"%@=%@", @"insertChange", insertChange];
  [v3 addObject:v13];

  v14 = MEMORY[0x277CCACA8];
  moveChanges = [(VUICollectionChangeSet *)self moveChanges];
  v16 = [v14 stringWithFormat:@"%@=%@", @"moveChanges", moveChanges];
  [v3 addObject:v16];

  v17 = MEMORY[0x277CCACA8];
  updateChanges = [(VUICollectionChangeSet *)self updateChanges];
  v19 = [v17 stringWithFormat:@"%@=%@", @"updateChanges", updateChanges];
  [v3 addObject:v19];

  v20 = MEMORY[0x277CCACA8];
  v21 = [v3 componentsJoinedByString:{@", "}];
  v22 = [v20 stringWithFormat:@"<%@>", v21];

  return v22;
}

- (id)_changesKinds
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  deleteChange = [(VUICollectionChangeSet *)self deleteChange];

  if (deleteChange)
  {
    [v3 addObject:&unk_2880E0A90];
  }

  insertChange = [(VUICollectionChangeSet *)self insertChange];

  if (insertChange)
  {
    [v3 addObject:&unk_2880E0AA8];
  }

  moveChanges = [(VUICollectionChangeSet *)self moveChanges];
  v7 = [moveChanges count];

  if (v7)
  {
    [v3 addObject:&unk_2880E0AC0];
  }

  updateChanges = [(VUICollectionChangeSet *)self updateChanges];
  v9 = [updateChanges count];

  if (v9)
  {
    [v3 addObject:&unk_2880E0AD8];
  }

  v10 = [v3 copy];

  return v10;
}

@end