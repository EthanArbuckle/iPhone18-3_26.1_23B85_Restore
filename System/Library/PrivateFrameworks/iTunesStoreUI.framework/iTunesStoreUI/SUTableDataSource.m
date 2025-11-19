@interface SUTableDataSource
- (SUTableDataSource)init;
- (id)cachedConfigurationForClass:(Class)a3 index:(int64_t)a4;
- (id)cellContextForConfigurationClass:(Class)a3;
- (id)titleForDeleteConfirmationForIndexPath:(id)a3;
- (void)beginPreferringUserInteraction;
- (void)dealloc;
- (void)didBeginPreferringUserInteraction;
- (void)didEndPreferringUserInteraction;
- (void)endPreferringUserInteraction;
- (void)reloadCellContexts;
- (void)setCellReuseSource:(id)a3;
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

- (id)cachedConfigurationForClass:(Class)a3 index:(int64_t)a4
{
  v6 = [(SUVariableCellConfigurationCache *)self->_configurationCache cacheForClass:a3];
  v7 = [v6 configurationForRow:a4];
  v8 = [v6 cellContext];
  if (!v8)
  {
    v8 = [(SUVariableCellConfigurationCache *)self->_configurationCache cellContext];
  }

  [v8 setTableViewStyle:{-[SUTableDataSource tableViewStyle](self, "tableViewStyle")}];
  [v7 setContext:v8];
  return v7;
}

- (id)cellContextForConfigurationClass:(Class)a3
{
  v3 = [(SUVariableCellConfigurationCache *)self->_configurationCache cacheForClass:a3];

  return [v3 cellContext];
}

- (void)didBeginPreferringUserInteraction
{
  v2 = [(ISURLOperationPool *)[(SUTableDataSource *)self imagePool] operationQueue];

  [v2 setSuspended:1];
}

- (void)didEndPreferringUserInteraction
{
  v2 = [(ISURLOperationPool *)[(SUTableDataSource *)self imagePool] operationQueue];

  [v2 setSuspended:0];
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

- (void)setCellReuseSource:(id)a3
{
  if (a3 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    [(SUTableDataSource *)a2 setCellReuseSource:?];
  }

  self->_cellReuseSource = a3;
}

- (id)titleForDeleteConfirmationForIndexPath:(id)a3
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