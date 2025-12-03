@interface SUTableDataSource
- (SUTableDataSource)init;
- (id)cachedConfigurationForClass:(Class)class index:(int64_t)index;
- (id)cellContextForConfigurationClass:(Class)class;
- (id)titleForDeleteConfirmationForIndexPath:(id)path;
- (void)beginPreferringUserInteraction;
- (void)dealloc;
- (void)didBeginPreferringUserInteraction;
- (void)didEndPreferringUserInteraction;
- (void)endPreferringUserInteraction;
- (void)reloadCellContexts;
- (void)setCellReuseSource:(id)source;
@end

@implementation SUTableDataSource

- (SUTableDataSource)init
{
  v3.receiver = self;
  v3.super_class = SUTableDataSource;
  result = [(SUTableDataSource *)&v3 init];
  if (result)
  {
    result->_columnCount = 1;
  }

  return result;
}

- (void)dealloc
{
  self->_configurationCache = 0;
  v3.receiver = self;
  v3.super_class = SUTableDataSource;
  [(SUTableDataSource *)&v3 dealloc];
}

- (void)beginPreferringUserInteraction
{
  preferringUserInteractionCount = self->_preferringUserInteractionCount;
  self->_preferringUserInteractionCount = preferringUserInteractionCount + 1;
  if (!preferringUserInteractionCount)
  {
    [(SUTableDataSource *)self didBeginPreferringUserInteraction];
  }
}

- (id)cachedConfigurationForClass:(Class)class index:(int64_t)index
{
  v6 = [(SUVariableCellConfigurationCache *)self->_configurationCache cacheForClass:class];
  v7 = [v6 configurationForRow:index];
  cellContext = [v6 cellContext];
  if (!cellContext)
  {
    cellContext = [(SUVariableCellConfigurationCache *)self->_configurationCache cellContext];
  }

  [cellContext setTableViewStyle:{-[SUTableDataSource tableViewStyle](self, "tableViewStyle")}];
  [v7 setContext:cellContext];
  return v7;
}

- (id)cellContextForConfigurationClass:(Class)class
{
  v3 = [(SUVariableCellConfigurationCache *)self->_configurationCache cacheForClass:class];

  return [v3 cellContext];
}

- (void)didBeginPreferringUserInteraction
{
  operationQueue = [(ISURLOperationPool *)[(SUTableDataSource *)self imagePool] operationQueue];

  [operationQueue setSuspended:1];
}

- (void)didEndPreferringUserInteraction
{
  operationQueue = [(ISURLOperationPool *)[(SUTableDataSource *)self imagePool] operationQueue];

  [operationQueue setSuspended:0];
}

- (void)endPreferringUserInteraction
{
  preferringUserInteractionCount = self->_preferringUserInteractionCount;
  v3 = preferringUserInteractionCount == 1;
  v4 = preferringUserInteractionCount < 1;
  v5 = preferringUserInteractionCount - 1;
  if (!v4)
  {
    self->_preferringUserInteractionCount = v5;
    if (v3)
    {
      [(SUTableDataSource *)self didEndPreferringUserInteraction];
    }
  }
}

- (void)reloadCellContexts
{
  configurationCache = self->_configurationCache;
  if (!configurationCache)
  {
    [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
    configurationCache = [[SUVariableCellConfigurationCache alloc] initWithTableHeight:v4 * [(SUTableDataSource *)self columnCount]];
    self->_configurationCache = configurationCache;
  }

  [(SUVariableCellConfigurationCache *)configurationCache reset];
}

- (void)setCellReuseSource:(id)source
{
  if (source && (objc_opt_respondsToSelector() & 1) == 0)
  {
    [(SUTableDataSource *)a2 setCellReuseSource:?];
  }

  self->_cellReuseSource = source;
}

- (id)titleForDeleteConfirmationForIndexPath:(id)path
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return [v3 localizedStringForKey:@"DELETE" value:&stru_1F41B3660 table:0];
}

- (uint64_t)setCellReuseSource:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SUTableDataSource.m" lineNumber:180 description:@"Invalid cell reuse source"];
}

@end