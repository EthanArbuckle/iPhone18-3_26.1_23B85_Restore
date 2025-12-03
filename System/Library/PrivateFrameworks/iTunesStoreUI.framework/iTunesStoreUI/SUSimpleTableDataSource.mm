@interface SUSimpleTableDataSource
- (id)cellForIndexPath:(id)path;
- (id)objectForIndexPath:(id)path;
- (void)configureCell:(id)cell forIndexPath:(id)path;
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

- (id)objectForIndexPath:(id)path
{
  objects = self->_objects;
  v4 = [-[SUTableDataSource cellReuseSource](self "cellReuseSource")];

  return [(NSArray *)objects objectAtIndex:v4];
}

- (id)cellForIndexPath:(id)path
{
  result = [-[SUTableDataSource cellReuseSource](self cellReuseSource];
  if (!result)
  {
    v4 = [[SUTableCell alloc] initWithStyle:0 reuseIdentifier:@"0"];

    return v4;
  }

  return result;
}

- (void)configureCell:(id)cell forIndexPath:(id)path
{
  v6 = [-[SUTableDataSource cellReuseSource](self "cellReuseSource")];
  v7 = [(SUTableDataSource *)self cachedConfigurationForClass:self->_cellConfigurationClass index:v6];
  [v7 setRepresentedObject:{-[NSArray objectAtIndex:](self->_objects, "objectAtIndex:", v6)}];

  [cell setConfiguration:v7];
}

- (void)reloadCellContexts
{
  v5.receiver = self;
  v5.super_class = SUSimpleTableDataSource;
  [(SUTableDataSource *)&v5 reloadCellContexts];
  v3 = [(SUVariableCellConfigurationCache *)self->super._configurationCache cacheForClass:self->_cellConfigurationClass];
  copyDefaultContext = [(objc_class *)self->_cellConfigurationClass copyDefaultContext];
  [v3 setCellContext:copyDefaultContext];
}

@end