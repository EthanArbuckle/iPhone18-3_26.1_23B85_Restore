@interface REHealthStore
- (id)_createStore;
- (id)_init;
- (void)accessHealthStore:(id)store;
@end

@implementation REHealthStore

- (id)_init
{
  v8.receiver = self;
  v8.super_class = REHealthStore;
  _init = [(RESingleton *)&v8 _init];
  if (_init)
  {
    if (HealthKitLibraryCore_1())
    {
      _createStore = [_init _createStore];
      v4 = _init[1];
      _init[1] = _createStore;
    }

    v5 = dispatch_queue_create("com.apple.RelevanceEngine.REHealthStore", 0);
    v6 = _init[2];
    _init[2] = v5;
  }

  return _init;
}

- (id)_createStore
{
  if ([(REHealthStore *)self _isClockHostApp]&& FitnessUILibraryCore())
  {
    if (!FitnessUILibraryCore())
    {
      v4 = abort_report_np();
      free(v4);
    }

    fiui_sharedHealthStoreForCarousel = [getHKHealthStoreClass() fiui_sharedHealthStoreForCarousel];
  }

  else
  {
    fiui_sharedHealthStoreForCarousel = objc_alloc_init(getHKHealthStoreClass());
  }

  return fiui_sharedHealthStoreForCarousel;
}

- (void)accessHealthStore:(id)store
{
  storeCopy = store;
  v5 = storeCopy;
  if (storeCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __35__REHealthStore_accessHealthStore___block_invoke;
    v7[3] = &unk_2785FA150;
    v7[4] = self;
    v8 = storeCopy;
    dispatch_async(queue, v7);
  }
}

@end