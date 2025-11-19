@interface TIAnalyticsServiceProviderImpl
- (TIAnalyticsServiceProviderImpl)init;
- (void)dispatchEventWithName:(id)a3 payload:(id)a4;
@end

@implementation TIAnalyticsServiceProviderImpl

- (TIAnalyticsServiceProviderImpl)init
{
  v9.receiver = self;
  v9.super_class = TIAnalyticsServiceProviderImpl;
  v2 = [(TIAnalyticsServiceProviderImpl *)&v9 init];
  if (v2 && InputAnalyticsLibraryCore())
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v3 = getIAEventDispatcherClass_softClass;
    v18 = getIAEventDispatcherClass_softClass;
    if (!getIAEventDispatcherClass_softClass)
    {
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __getIAEventDispatcherClass_block_invoke;
      v13 = &unk_1E6F4D960;
      v14 = &v15;
      InputAnalyticsLibraryCore();
      Class = objc_getClass("IAEventDispatcher");
      *(v14[1] + 24) = Class;
      getIAEventDispatcherClass_softClass = *(v14[1] + 24);
      v3 = v16[3];
    }

    v5 = v3;
    _Block_object_dispose(&v15, 8);
    v6 = objc_alloc_init(v3);
    dispatcher = v2->_dispatcher;
    v2->_dispatcher = v6;
  }

  return v2;
}

- (void)dispatchEventWithName:(id)a3 payload:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (InputAnalyticsLibraryCore() && (dispatcher = self->_dispatcher) != 0)
  {
    [(IAEventDispatcher *)dispatcher dispatchEvent:v6 payload:v7];
  }

  else
  {
    v9 = v7;
    AnalyticsSendEventLazy();
  }
}

@end