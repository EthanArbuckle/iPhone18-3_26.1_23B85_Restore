@interface MusicUsageGroup
- (MusicUsageGroup)init;
- (NSArray)usageItems;
- (void)addUsageItem:(id)a3;
- (void)removeUsageItem:(id)a3;
- (void)updateGroupSize;
@end

@implementation MusicUsageGroup

- (MusicUsageGroup)init
{
  v6.receiver = self;
  v6.super_class = MusicUsageGroup;
  v2 = [(MusicUsageGroup *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    mutableUsageItems = v2->_mutableUsageItems;
    v2->_mutableUsageItems = v3;
  }

  return v2;
}

- (void)updateGroupSize
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(MusicUsageGroup *)self usageItems];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 childUsageGroup];

        if (v10)
        {
          v11 = [v9 childUsageGroup];
          v12 = [v11 groupSize];
        }

        else
        {
          v11 = [v9 itemCollection];
          v12 = MusicUsageFileSizeForMediaItemCollection(v11);
        }

        v13 = v12;

        v6 += v13;
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  [(MusicUsageGroup *)self setGroupSize:v6];
}

- (void)addUsageItem:(id)a3
{
  v4 = a3;
  [v4 setUsageGroup:self];
  [(NSMutableArray *)self->_mutableUsageItems addObject:v4];
}

- (void)removeUsageItem:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_mutableUsageItems containsObject:?])
  {
    [v4 setUsageGroup:0];
    [(NSMutableArray *)self->_mutableUsageItems removeObject:v4];
  }
}

- (NSArray)usageItems
{
  v2 = [(NSMutableArray *)self->_mutableUsageItems copy];

  return v2;
}

@end