@interface WGWidgetDataSource
- (NSString)description;
- (WGWidgetDataSource)initWithIdentifier:(id)identifier;
- (void)addWidgetObserver:(id)observer completion:(id)completion;
@end

@implementation WGWidgetDataSource

- (WGWidgetDataSource)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = WGWidgetDataSource;
  v5 = [(WGWidgetDataSource *)&v11 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    dataSourceIdentifier = v5->_dataSourceIdentifier;
    v5->_dataSourceIdentifier = v6;

    v8 = objc_alloc_init(_WGConcreteDataSource);
    concreteDataSource = v5->_concreteDataSource;
    v5->_concreteDataSource = v8;
  }

  return v5;
}

- (void)addWidgetObserver:(id)observer completion:(id)completion
{
  observerCopy = observer;
  completionCopy = completion;
  objc_initWeak(&location, self);
  concreteDataSource = self->_concreteDataSource;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__WGWidgetDataSource_addWidgetObserver_completion___block_invoke;
  v11[3] = &unk_279ED18B8;
  v9 = completionCopy;
  v13 = v9;
  objc_copyWeak(&v14, &location);
  v10 = observerCopy;
  v12 = v10;
  [(_WGConcreteDataSource *)concreteDataSource addObserver:v10 completion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __51__WGWidgetDataSource_addWidgetObserver_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [WeakRetained _concreteDataSource];
  v5 = [v4 data];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) widgetDataSource:WeakRetained replaceWithDatum:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

void __39__WGWidgetDataSource_replaceWithDatum___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 conformsToProtocol:&unk_288366658] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 widgetDataSource:*(a1 + 32) replaceWithDatum:v5];
  }
}

void __48__WGWidgetDataSource_removeDatumWithIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 conformsToProtocol:&unk_288366658] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 widgetDataSource:*(a1 + 32) removeDatum:v5];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dataSourceIdentifier = [(WGWidgetDataSource *)self dataSourceIdentifier];
  v6 = [v3 stringWithFormat:@"<%@: %p dataSourceIdentifier: %@>", v4, self, dataSourceIdentifier];;

  return v6;
}

@end