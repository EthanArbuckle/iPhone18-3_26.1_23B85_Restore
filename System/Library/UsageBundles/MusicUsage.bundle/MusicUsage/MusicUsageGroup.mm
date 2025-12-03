@interface MusicUsageGroup
- (MusicUsageGroup)init;
- (NSArray)usageItems;
- (void)addUsageItem:(id)item;
- (void)removeUsageItem:(id)item;
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
  usageItems = [(MusicUsageGroup *)self usageItems];
  v4 = [usageItems countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(usageItems);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        childUsageGroup = [v9 childUsageGroup];

        if (childUsageGroup)
        {
          childUsageGroup2 = [v9 childUsageGroup];
          groupSize = [childUsageGroup2 groupSize];
        }

        else
        {
          childUsageGroup2 = [v9 itemCollection];
          groupSize = MusicUsageFileSizeForMediaItemCollection(childUsageGroup2);
        }

        v13 = groupSize;

        v6 += v13;
      }

      v5 = [usageItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  [(MusicUsageGroup *)self setGroupSize:v6];
}

- (void)addUsageItem:(id)item
{
  itemCopy = item;
  [itemCopy setUsageGroup:self];
  [(NSMutableArray *)self->_mutableUsageItems addObject:itemCopy];
}

- (void)removeUsageItem:(id)item
{
  itemCopy = item;
  if ([(NSMutableArray *)self->_mutableUsageItems containsObject:?])
  {
    [itemCopy setUsageGroup:0];
    [(NSMutableArray *)self->_mutableUsageItems removeObject:itemCopy];
  }
}

- (NSArray)usageItems
{
  v2 = [(NSMutableArray *)self->_mutableUsageItems copy];

  return v2;
}

@end