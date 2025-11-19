@interface _UIFocusMapSearchInfo
- (NSArray)destinationRegions;
- (NSArray)snapshots;
- (_UIFocusMapSearchInfo)init;
- (void)addDestinationRegion:(id)a3;
- (void)addSnapshot:(id)a3;
@end

@implementation _UIFocusMapSearchInfo

- (_UIFocusMapSearchInfo)init
{
  v8.receiver = self;
  v8.super_class = _UIFocusMapSearchInfo;
  v2 = [(_UIFocusMapSearchInfo *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableSnapshots = v2->_mutableSnapshots;
    v2->_mutableSnapshots = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableDestinationRegions = v2->_mutableDestinationRegions;
    v2->_mutableDestinationRegions = v5;

    v2->_hasOnlyStaticContent = 1;
  }

  return v2;
}

- (NSArray)snapshots
{
  v2 = [(_UIFocusMapSearchInfo *)self mutableSnapshots];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)destinationRegions
{
  v2 = [(_UIFocusMapSearchInfo *)self mutableDestinationRegions];
  v3 = [v2 copy];

  return v3;
}

- (void)addSnapshot:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v4 = [(_UIFocusMapSearchInfo *)self mutableSnapshots];
    [v4 addObject:v5];

    if (self->_hasOnlyStaticContent)
    {
      self->_hasOnlyStaticContent &= [v5 hasOnlyStaticContent];
    }
  }
}

- (void)addDestinationRegion:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(_UIFocusMapSearchInfo *)self mutableDestinationRegions];
    [v5 addObject:v4];
  }
}

@end