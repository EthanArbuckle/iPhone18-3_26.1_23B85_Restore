@interface WGDataSourceManager
+ (id)__sharedInstance;
+ (void)requestSharedDataSourceManager:(id)a3;
- (void)_begin:(id)a3;
- (void)_start:(id)a3;
- (void)_stop:(id)a3;
- (void)addWidgetDataSourceChangeHandler:(id)a3 forIdentifier:(id)a4;
- (void)childDataSourceManagerDataSourcesDidChange:(id)a3;
- (void)removeChangeHandlersWithIdentifier:(id)a3;
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

+ (void)requestSharedDataSourceManager:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 __sharedInstance];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__WGDataSourceManager_requestSharedDataSourceManager___block_invoke;
    v7[3] = &unk_279ED0F70;
    v8 = v5;
    v9 = v4;
    v6 = v5;
    [v6 _begin:v7];
  }
}

- (void)_begin:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_didBegin)
  {
    if (v4)
    {
      (*(v4 + 2))(v4);
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

- (void)_start:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)_stop:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)addWidgetDataSourceChangeHandler:(id)a3 forIdentifier:(id)a4
{
  if (a3 && a4)
  {
    identifiersToWidgetChangeHandlers = self->_identifiersToWidgetChangeHandlers;
    v7 = a4;
    v8 = a3;
    v9 = [v8 copy];
    [(NSMutableDictionary *)identifiersToWidgetChangeHandlers setObject:v9 forKey:v7];

    v10 = [(WGWidgetDataSourceManager *)self->_widgetDataSourceManager dataSources];
    (*(v8 + 2))(v8, v10);
  }
}

- (void)removeChangeHandlersWithIdentifier:(id)a3
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_identifiersToWidgetChangeHandlers removeObjectForKey:?];
  }
}

- (void)childDataSourceManagerDataSourcesDidChange:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  widgetDataSourceManager = self->_widgetDataSourceManager;
  if (widgetDataSourceManager == a3)
  {
    v5 = [(WGWidgetDataSourceManager *)widgetDataSourceManager dataSources];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(NSMutableDictionary *)self->_identifiersToWidgetChangeHandlers allValues];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v11 + 1) + 8 * v10++) + 16))();
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

@end