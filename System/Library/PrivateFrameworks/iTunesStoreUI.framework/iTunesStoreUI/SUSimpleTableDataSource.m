@interface SUSimpleTableDataSource
- (id)cellForIndexPath:(id)a3;
- (id)objectForIndexPath:(id)a3;
- (void)configureCell:(id)a3 forIndexPath:(id)a4;
- (void)dealloc;
- (void)reloadCellContexts;
@end

@implementation SUSimpleTableDataSource

- (void)dealloc
{
  self->_cellConfigurationClass = 0;

  self->_objects = 0;
  v3.receiver = self;
  v3.super_class = SUSimpleTableDataSource;
  [(SUTableDataSource *)&v3 dealloc];
}

- (id)objectForIndexPath:(id)a3
{
  objects = self->_objects;
  v4 = [-[SUTableDataSource cellReuseSource](self "cellReuseSource")];

  return [(NSArray *)objects objectAtIndex:v4];
}

- (id)cellForIndexPath:(id)a3
{
  result = [-[SUTableDataSource cellReuseSource](self cellReuseSource];
  if (!result)
  {
    v4 = [[SUTableCell alloc] initWithStyle:0 reuseIdentifier:@"0"];

    return v4;
  }

  return result;
}

- (void)configureCell:(id)a3 forIndexPath:(id)a4
{
  v6 = [-[SUTableDataSource cellReuseSource](self "cellReuseSource")];
  v7 = [(SUTableDataSource *)self cachedConfigurationForClass:self->_cellConfigurationClass index:v6];
  [v7 setRepresentedObject:{-[NSArray objectAtIndex:](self->_objects, "objectAtIndex:", v6)}];

  [a3 setConfiguration:v7];
}

- (void)reloadCellContexts
{
  v5.receiver = self;
  v5.super_class = SUSimpleTableDataSource;
  [(SUTableDataSource *)&v5 reloadCellContexts];
  v3 = [(SUVariableCellConfigurationCache *)self->super._configurationCache cacheForClass:self->_cellConfigurationClass];
  v4 = [(objc_class *)self->_cellConfigurationClass copyDefaultContext];
  [v3 setCellContext:v4];
}

@end