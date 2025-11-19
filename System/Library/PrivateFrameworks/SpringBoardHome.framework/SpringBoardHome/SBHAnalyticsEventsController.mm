@interface SBHAnalyticsEventsController
- (SBHAnalyticsEventsController)initWithEventsControllerDomain:(id)a3;
- (void)addProvider:(id)a3;
- (void)dealloc;
- (void)removeProvider:(id)a3;
- (void)sendEventsForProvidersWhenSignificantTimeChanged;
@end

@implementation SBHAnalyticsEventsController

- (SBHAnalyticsEventsController)initWithEventsControllerDomain:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SBHAnalyticsEventsController;
  v6 = [(SBHAnalyticsEventsController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventsControllerDomain, a3);
    v8 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    allProviders = v7->_allProviders;
    v7->_allProviders = v8;

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v7 selector:sel_sendEventsForProvidersWhenSignificantTimeChanged name:*MEMORY[0x1E69DDB88] object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(SBHAnalyticsEventsController *)self allProviders];
  [v4 removeAllObjects];

  v5.receiver = self;
  v5.super_class = SBHAnalyticsEventsController;
  [(SBHAnalyticsEventsController *)&v5 dealloc];
}

- (void)addProvider:(id)a3
{
  v4 = a3;
  v5 = [(SBHAnalyticsEventsController *)self allProviders];
  [v5 addObject:v4];
}

- (void)removeProvider:(id)a3
{
  v4 = a3;
  v5 = [(SBHAnalyticsEventsController *)self allProviders];
  [v5 removeObject:v4];
}

- (void)sendEventsForProvidersWhenSignificantTimeChanged
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__SBHAnalyticsEventsController_sendEventsForProvidersWhenSignificantTimeChanged__block_invoke;
  block[3] = &unk_1E8088C90;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __80__SBHAnalyticsEventsController_sendEventsForProvidersWhenSignificantTimeChanged__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [*(a1 + 32) allProviders];
  v2 = [v1 copy];

  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 significantTimeChanged];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

@end