@interface PRIconListLayoutProvider
- (PRIconListLayoutProvider)initWithGridSize:(SBHIconGridSize)size;
- (id)layoutForIconLocation:(id)location;
@end

@implementation PRIconListLayoutProvider

- (PRIconListLayoutProvider)initWithGridSize:(SBHIconGridSize)size
{
  v5.receiver = self;
  v5.super_class = PRIconListLayoutProvider;
  result = [(PRIconListLayoutProvider *)&v5 init];
  if (result)
  {
    result->_gridSize = size;
  }

  return result;
}

- (id)layoutForIconLocation:(id)location
{
  v3 = [[_PRIconListLayout alloc] initWithGridSize:*&self->_gridSize];

  return v3;
}

@end