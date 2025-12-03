@interface SHAffinityGroup
- (NSArray)mediaItems;
- (SHAffinityGroup)initWithType:(int64_t)type cohesionLevel:(int64_t)level;
- (void)appendMediaItem:(id)item;
@end

@implementation SHAffinityGroup

- (SHAffinityGroup)initWithType:(int64_t)type cohesionLevel:(int64_t)level
{
  v11.receiver = self;
  v11.super_class = SHAffinityGroup;
  v6 = [(SHAffinityGroup *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_groupType = type;
    v6->_cohesionLevel = level;
    array = [MEMORY[0x277CBEB18] array];
    mutableMediaItems = v7->_mutableMediaItems;
    v7->_mutableMediaItems = array;
  }

  return v7;
}

- (void)appendMediaItem:(id)item
{
  itemCopy = item;
  mutableMediaItems = [(SHAffinityGroup *)self mutableMediaItems];
  [mutableMediaItems addObject:itemCopy];
}

- (NSArray)mediaItems
{
  mutableMediaItems = [(SHAffinityGroup *)self mutableMediaItems];
  v3 = [mutableMediaItems copy];

  return v3;
}

@end