@interface WGDataSourceManager
+ (id)__sharedInstance;
+ (void)requestSharedDataSourceManager:(id)manager;
- (void)_begin:(id)_begin;
- (void)_start:(id)_start;
- (void)_stop:(id)_stop;
- (void)addWidgetDataSourceChangeHandler:(id)handler forIdentifier:(id)identifier;
- (void)childDataSourceManagerDataSourcesDidChange:(id)change;
- (void)removeChangeHandlersWithIdentifier:(id)identifier;
@end

@implementation WGDataSourceManager

+ (id)__sharedInstance
{
  if (__sharedInstance_onceToken != -1)
  {
    +[WGDataSourceManager __sharedInstance];
  }

  v3 = __sharedInstance___sharedInstance;

  return v3;
}

uint64_t __39__WGDataSourceManager___sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(WGDataSourceManager);
  v1 = __sharedInstance___sharedInstance;
  __sharedInstance___sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (void)requestSharedDataSourceManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    __sharedInstance = [self __sharedInstance];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__WGDataSourceManager_requestSharedDataSourceManager___block_invoke;
    v7[3] = &unk_279ED0F70;
    v8 = __sharedInstance;
    v9 = managerCopy;
    v6 = __sharedInstance;
    [v6 _begin:v7];
  }
}

- (void)_begin:(id)_begin
{
  _beginCopy = _begin;
  v5 = _beginCopy;
  if (self->_didBegin)
  {
    if (_beginCopy)
    {
      (*(_beginCopy + 2))(_beginCopy);
    }
  }

  else
  {
    self->_didBegin = 1;
    v6 = objc_alloc_init(WGWidgetDataSourceManager);
    widgetDataSourceManager = self->_widgetDataSourceManager;
    self->_widgetDataSourceManager = v6;

    [(WGWidgetDataSourceManager *)self->_widgetDataSourceManager setParentDataSourceManager:self];
    v8 = dispatch_group_create();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __30__WGDataSourceManager__begin___block_invoke;
    v13[3] = &unk_279ED1480;
    v14 = v8;
    v9 = v8;
    v10 = MEMORY[0x2743E8C10](v13);
    (v10)[2](v10, self->_widgetDataSourceManager);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __30__WGDataSourceManager__begin___block_invoke_3;
    v11[3] = &unk_279ED0C88;
    v12 = v5;
    dispatch_group_notify(v9, MEMORY[0x277D85CD0], v11);
  }
}

void __30__WGDataSourceManager__begin___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__WGDataSourceManager__begin___block_invoke_2;
  v5[3] = &unk_279ED0948;
  v6 = *(a1 + 32);
  [v4 _start:v5];
}

uint64_t __30__WGDataSourceManager__begin___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_start:(id)_start
{
  if (_start)
  {
    (*(_start + 2))(_start);
  }
}

- (void)_stop:(id)_stop
{
  if (_stop)
  {
    (*(_stop + 2))(_stop);
  }
}

- (void)addWidgetDataSourceChangeHandler:(id)handler forIdentifier:(id)identifier
{
  if (handler && identifier)
  {
    identifiersToWidgetChangeHandlers = self->_identifiersToWidgetChangeHandlers;
    identifierCopy = identifier;
    handlerCopy = handler;
    v9 = [handlerCopy copy];
    [(NSMutableDictionary *)identifiersToWidgetChangeHandlers setObject:v9 forKey:identifierCopy];

    dataSources = [(WGWidgetDataSourceManager *)self->_widgetDataSourceManager dataSources];
    (*(handlerCopy + 2))(handlerCopy, dataSources);
  }
}

- (void)removeChangeHandlersWithIdentifier:(id)identifier
{
  if (identifier)
  {
    [(NSMutableDictionary *)self->_identifiersToWidgetChangeHandlers removeObjectForKey:?];
  }
}

- (void)childDataSourceManagerDataSourcesDidChange:(id)change
{
  v16 = *MEMORY[0x277D85DE8];
  widgetDataSourceManager = self->_widgetDataSourceManager;
  if (widgetDataSourceManager == change)
  {
    dataSources = [(WGWidgetDataSourceManager *)widgetDataSourceManager dataSources];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    allValues = [(NSMutableDictionary *)self->_identifiersToWidgetChangeHandlers allValues];
    v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          (*(*(*(&v11 + 1) + 8 * v10++) + 16))();
        }

        while (v8 != v10);
        v8 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

@end