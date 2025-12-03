@interface TPSEventsProviderManager
+ (id)defaultManager;
- (TPSDEventsProviderManagerDelegate)delegate;
- (TPSEventsProviderManager)init;
- (int64_t)_dataTypeForDataProvider:(id)provider;
- (void)dataProvider:(id)provider didFinishQueryWithResults:(id)results;
- (void)dataProvider:(id)provider didReceiveCallbackWithResult:(id)result;
- (void)queryEvents:(id)events type:(int64_t)type;
- (void)registerCallbackForEvents:(id)events type:(int64_t)type;
- (void)registerWakingCallbackForEvents:(id)events type:(int64_t)type clientIdentifier:(id)identifier;
- (void)setDelegate:(id)delegate;
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

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_respondsToDidFinishQueryWithResults = objc_opt_respondsToSelector() & 1;
    self->_respondsToDidReceiveCallbackWithResult = objc_opt_respondsToSelector() & 1;
  }
}

- (int64_t)_dataTypeForDataProvider:(id)provider
{
  providerCopy = provider;
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

- (void)queryEvents:(id)events type:(int64_t)type
{
  eventsCopy = events;
  v7 = eventsCopy;
  if (type == 2)
  {
    v8 = 16;
  }

  else
  {
    if (type != 3)
    {
      goto LABEL_6;
    }

    v8 = 24;
  }

  v9 = eventsCopy;
  eventsCopy = [*(&self->super.isa + v8) queryEvents:eventsCopy];
  v7 = v9;
LABEL_6:

  MEMORY[0x1EEE66BB8](eventsCopy, v7);
}

- (void)registerCallbackForEvents:(id)events type:(int64_t)type
{
  if (type == 3)
  {
    [(TPSBiomeEventsProvider *)self->_biomeEventsProvider registerEventsForCallback:events];
  }
}

- (void)registerWakingCallbackForEvents:(id)events type:(int64_t)type clientIdentifier:(id)identifier
{
  if (type == 3)
  {
    [(TPSBiomeEventsProvider *)self->_biomeEventsProvider registerEventsForWakingCallback:events clientIdentifier:identifier];
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

- (void)dataProvider:(id)provider didFinishQueryWithResults:(id)results
{
  if (self->_respondsToDidFinishQueryWithResults)
  {
    resultsCopy = results;
    v8 = [(TPSEventsProviderManager *)self _dataTypeForDataProvider:provider];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dataProviderManager:self didFinishQueryWithResults:resultsCopy type:v8];
  }
}

- (void)dataProvider:(id)provider didReceiveCallbackWithResult:(id)result
{
  if (self->_respondsToDidReceiveCallbackWithResult)
  {
    resultCopy = result;
    v8 = [(TPSEventsProviderManager *)self _dataTypeForDataProvider:provider];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dataProviderManager:self didReceiveCallbackWithResult:resultCopy type:v8];
  }
}

- (TPSDEventsProviderManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end