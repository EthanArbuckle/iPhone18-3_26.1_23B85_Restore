@interface SHAffinityGroup
- (NSArray)mediaItems;
- (SHAffinityGroup)initWithType:(int64_t)a3 cohesionLevel:(int64_t)a4;
- (void)appendMediaItem:(id)a3;
@end

@implementation SHAffinityGroup

- (SHAffinityGroup)initWithType:(int64_t)a3 cohesionLevel:(int64_t)a4
{
  v11.receiver = self;
  v11.super_class = SHAffinityGroup;
  v6 = [(SHAffinityGroup *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_groupType = a3;
    v6->_cohesionLevel = a4;
    v8 = [MEMORY[0x277CBEB18] array];
    mutableMediaItems = v7->_mutableMediaItems;
    v7->_mutableMediaItems = v8;
  }

  return v7;
}

- (void)appendMediaItem:(id)a3
{
  v4 = a3;
  v5 = [(SHAffinityGroup *)self mutableMediaItems];
  [v5 addObject:v4];
}

- (NSArray)mediaItems
{
  v2 = [(SHAffinityGroup *)self mutableMediaItems];
  v3 = [v2 copy];

  return v3;
}

@end