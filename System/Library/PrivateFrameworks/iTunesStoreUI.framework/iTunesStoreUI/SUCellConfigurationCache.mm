@interface SUCellConfigurationCache
- (SUCellConfigurationCache)initWithClass:(Class)a3 tableHeight:(double)a4;
- (id)configurationForRow:(unint64_t)a3;
- (void)dealloc;
- (void)reset;
- (void)resetLayoutCaches;
@end

@implementation SUCellConfigurationCache

- (SUCellConfigurationCache)initWithClass:(Class)a3 tableHeight:(double)a4
{
  v6 = [(SUCellConfigurationCache *)self init];
  if (v6)
  {
    v6->_configurations = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(objc_class *)a3 minimumRowHeight];
    for (i = (ceil(a4 / v7) + 1.0); i; --i)
    {
      v9 = objc_alloc_init(a3);
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

- (id)configurationForRow:(unint64_t)a3
{
  configurations = self->_configurations;
  v4 = a3 % [(NSMutableArray *)configurations count];

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
  v2 = [(SUCellConfigurationCache *)self cellContext];

  [v2 resetLayoutCaches];
}

@end