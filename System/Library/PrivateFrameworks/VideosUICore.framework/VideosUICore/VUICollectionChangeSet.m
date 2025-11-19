@interface VUICollectionChangeSet
- (BOOL)containsOnlyChangeKind:(unint64_t)a3;
- (BOOL)hasChanges;
- (id)_changesKinds;
- (id)description;
@end

@implementation VUICollectionChangeSet

- (BOOL)hasChanges
{
  v3 = [(VUICollectionChangeSet *)self deleteChange];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(VUICollectionChangeSet *)self insertChange];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(VUICollectionChangeSet *)self moveChanges];
      if ([v6 count])
      {
        v4 = 1;
      }

      else
      {
        v7 = [(VUICollectionChangeSet *)self updateChanges];
        v4 = [v7 count] != 0;
      }
    }
  }

  return v4;
}

- (BOOL)containsOnlyChangeKind:(unint64_t)a3
{
  v4 = [(VUICollectionChangeSet *)self _changesKinds];
  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v7 = [v5 isEqual:v6];
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
  v9 = [(VUICollectionChangeSet *)self deleteChange];
  v10 = [v8 stringWithFormat:@"%@=%@", @"deleteChange", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x277CCACA8];
  v12 = [(VUICollectionChangeSet *)self insertChange];
  v13 = [v11 stringWithFormat:@"%@=%@", @"insertChange", v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x277CCACA8];
  v15 = [(VUICollectionChangeSet *)self moveChanges];
  v16 = [v14 stringWithFormat:@"%@=%@", @"moveChanges", v15];
  [v3 addObject:v16];

  v17 = MEMORY[0x277CCACA8];
  v18 = [(VUICollectionChangeSet *)self updateChanges];
  v19 = [v17 stringWithFormat:@"%@=%@", @"updateChanges", v18];
  [v3 addObject:v19];

  v20 = MEMORY[0x277CCACA8];
  v21 = [v3 componentsJoinedByString:{@", "}];
  v22 = [v20 stringWithFormat:@"<%@>", v21];

  return v22;
}

- (id)_changesKinds
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(VUICollectionChangeSet *)self deleteChange];

  if (v4)
  {
    [v3 addObject:&unk_2880E0A90];
  }

  v5 = [(VUICollectionChangeSet *)self insertChange];

  if (v5)
  {
    [v3 addObject:&unk_2880E0AA8];
  }

  v6 = [(VUICollectionChangeSet *)self moveChanges];
  v7 = [v6 count];

  if (v7)
  {
    [v3 addObject:&unk_2880E0AC0];
  }

  v8 = [(VUICollectionChangeSet *)self updateChanges];
  v9 = [v8 count];

  if (v9)
  {
    [v3 addObject:&unk_2880E0AD8];
  }

  v10 = [v3 copy];

  return v10;
}

@end