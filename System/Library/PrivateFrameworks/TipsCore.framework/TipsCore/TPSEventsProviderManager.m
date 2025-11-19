@interface TPSEventsProviderManager
+ (id)defaultManager;
- (TPSDEventsProviderManagerDelegate)delegate;
- (TPSEventsProviderManager)init;
- (int64_t)_dataTypeForDataProvider:(id)a3;
- (void)dataProvider:(id)a3 didFinishQueryWithResults:(id)a4;
- (void)dataProvider:(id)a3 didReceiveCallbackWithResult:(id)a4;
- (void)queryEvents:(id)a3 type:(int64_t)a4;
- (void)registerCallbackForEvents:(id)a3 type:(int64_t)a4;
- (void)registerWakingCallbackForEvents:(id)a3 type:(int64_t)a4 clientIdentifier:(id)a5;
- (void)setDelegate:(id)a3;
- (void)unregisterAllWakingEvents;
@end

@implementation TPSEventsProviderManager

+ (id)defaultManager
{
  if (defaultManager_predicate != -1)
  {
    +[TPSEventsProviderManager defaultManager];
  }

  v3 = defaultManager_gDataProviderDefaultManager;

  return v3;
}

uint64_t __42__TPSEventsProviderManager_defaultManager__block_invoke()
{
  v0 = objc_alloc_init(TPSEventsProviderManager);
  v1 = defaultManager_gDataProviderDefaultManager;
  defaultManager_gDataProviderDefaultManager = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (TPSEventsProviderManager)init
{
  v8.receiver = self;
  v8.super_class = TPSEventsProviderManager;
  v2 = [(TPSEventsProviderManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(TPSContentStatusEventsProvider);
    contentStatusEventsProvider = v2->_contentStatusEventsProvider;
    v2->_contentStatusEventsProvider = v3;

    [(TPSEventsProvider *)v2->_contentStatusEventsProvider setDelegate:v2];
    v5 = objc_alloc_init(TPSBiomeEventsProvider);
    biomeEventsProvider = v2->_biomeEventsProvider;
    v2->_biomeEventsProvider = v5;

    [(TPSEventsProvider *)v2->_biomeEventsProvider setDelegate:v2];
  }

  return v2;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_respondsToDidFinishQueryWithResults = objc_opt_respondsToSelector() & 1;
    self->_respondsToDidReceiveCallbackWithResult = objc_opt_respondsToSelector() & 1;
  }
}

- (int64_t)_dataTypeForDataProvider:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 2;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = 3;
    }

    else
    {
      v4 = -1;
    }
  }

  return v4;
}

- (void)queryEvents:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 2)
  {
    v8 = 16;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_6;
    }

    v8 = 24;
  }

  v9 = v6;
  v6 = [*(&self->super.isa + v8) queryEvents:v6];
  v7 = v9;
LABEL_6:

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)registerCallbackForEvents:(id)a3 type:(int64_t)a4
{
  if (a4 == 3)
  {
    [(TPSBiomeEventsProvider *)self->_biomeEventsProvider registerEventsForCallback:a3];
  }
}

- (void)registerWakingCallbackForEvents:(id)a3 type:(int64_t)a4 clientIdentifier:(id)a5
{
  if (a4 == 3)
  {
    [(TPSBiomeEventsProvider *)self->_biomeEventsProvider registerEventsForWakingCallback:a3 clientIdentifier:a5];
  }
}

- (void)unregisterAllWakingEvents
{
  biomeEventsProvider = self->_biomeEventsProvider;
  if (biomeEventsProvider)
  {
    [(TPSBiomeEventsProvider *)biomeEventsProvider deregisterAllEventsForCallback];
  }
}

- (void)dataProvider:(id)a3 didFinishQueryWithResults:(id)a4
{
  if (self->_respondsToDidFinishQueryWithResults)
  {
    v7 = a4;
    v8 = [(TPSEventsProviderManager *)self _dataTypeForDataProvider:a3];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dataProviderManager:self didFinishQueryWithResults:v7 type:v8];
  }
}

- (void)dataProvider:(id)a3 didReceiveCallbackWithResult:(id)a4
{
  if (self->_respondsToDidReceiveCallbackWithResult)
  {
    v7 = a4;
    v8 = [(TPSEventsProviderManager *)self _dataTypeForDataProvider:a3];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dataProviderManager:self didReceiveCallbackWithResult:v7 type:v8];
  }
}

- (TPSDEventsProviderManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end