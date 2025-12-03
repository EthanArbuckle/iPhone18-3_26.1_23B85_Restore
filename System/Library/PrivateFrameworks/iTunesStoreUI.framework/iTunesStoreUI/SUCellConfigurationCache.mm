@interface SUCellConfigurationCache
- (SUCellConfigurationCache)initWithClass:(Class)class tableHeight:(double)height;
- (id)configurationForRow:(unint64_t)row;
- (void)dealloc;
- (void)reset;
- (void)resetLayoutCaches;
@end

@implementation SUCellConfigurationCache

- (SUCellConfigurationCache)initWithClass:(Class)class tableHeight:(double)height
{
  v6 = [(SUCellConfigurationCache *)self init];
  if (v6)
  {
    v6->_configurations = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(objc_class *)class minimumRowHeight];
    for (i = (ceil(height / v7) + 1.0); i; --i)
    {
      v9 = objc_alloc_init(class);
      [(NSMutableArray *)v6->_configurations addObject:v9];
    }
  }

  return v6;
}

- (void)dealloc
{
  self->_cellContext = 0;

  self->_configurations = 0;
  v3.receiver = self;
  v3.super_class = SUCellConfigurationCache;
  [(SUCellConfigurationCache *)&v3 dealloc];
}

- (id)configurationForRow:(unint64_t)row
{
  configurations = self->_configurations;
  v4 = row % [(NSMutableArray *)configurations count];

  return [(NSMutableArray *)configurations objectAtIndex:v4];
}

- (void)reset
{
  v3 = [(NSMutableArray *)self->_configurations count];
  [(NSMutableArray *)self->_configurations lastObject];
  v4 = objc_opt_class();
  [(NSMutableArray *)self->_configurations removeAllObjects];
  for (; v3; --v3)
  {
    v5 = objc_alloc_init(v4);
    [(NSMutableArray *)self->_configurations addObject:v5];
  }
}

- (void)resetLayoutCaches
{
  cellContext = [(SUCellConfigurationCache *)self cellContext];

  [cellContext resetLayoutCaches];
}

@end