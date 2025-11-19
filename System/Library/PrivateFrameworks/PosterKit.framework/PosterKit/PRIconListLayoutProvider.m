@interface PRIconListLayoutProvider
- (PRIconListLayoutProvider)initWithGridSize:(SBHIconGridSize)a3;
- (id)layoutForIconLocation:(id)a3;
@end

@implementation PRIconListLayoutProvider

- (PRIconListLayoutProvider)initWithGridSize:(SBHIconGridSize)a3
{
  v5.receiver = self;
  v5.super_class = PRIconListLayoutProvider;
  result = [(PRIconListLayoutProvider *)&v5 init];
  if (result)
  {
    result->_gridSize = a3;
  }

  return result;
}

- (id)layoutForIconLocation:(id)a3
{
  v3 = [[_PRIconListLayout alloc] initWithGridSize:*&self->_gridSize];

  return v3;
}

@end