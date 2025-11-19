@interface REHealthStore
- (id)_createStore;
- (id)_init;
- (void)accessHealthStore:(id)a3;
@end

@implementation REHealthStore

- (id)_init
{
  v8.receiver = self;
  v8.super_class = REHealthStore;
  v2 = [(RESingleton *)&v8 _init];
  if (v2)
  {
    if (HealthKitLibraryCore_1())
    {
      v3 = [v2 _createStore];
      v4 = v2[1];
      v2[1] = v3;
    }

    v5 = dispatch_queue_create("com.apple.RelevanceEngine.REHealthStore", 0);
    v6 = v2[2];
    v2[2] = v5;
  }

  return v2;
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

    v2 = [getHKHealthStoreClass() fiui_sharedHealthStoreForCarousel];
  }

  else
  {
    v2 = objc_alloc_init(getHKHealthStoreClass());
  }

  return v2;
}

- (void)accessHealthStore:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __35__REHealthStore_accessHealthStore___block_invoke;
    v7[3] = &unk_2785FA150;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

@end