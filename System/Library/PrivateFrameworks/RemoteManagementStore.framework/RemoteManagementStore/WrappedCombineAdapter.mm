@interface WrappedCombineAdapter
- (WrappedCombineAdapter)initWithAdapter:(id)adapter;
- (void)allDeclarationKeysForScope:(int64_t)scope completionHandler:(id)handler;
- (void)applyCombinedConfiguration:(id)configuration declarationKeys:(id)keys scope:(int64_t)scope completionHandler:(id)handler;
- (void)beginProcessingConfigurationsForScope:(int64_t)scope completionHandler:(id)handler;
- (void)removeCombinedConfigurationForScope:(int64_t)scope completionHandler:(id)handler;
@end

@implementation WrappedCombineAdapter

- (WrappedCombineAdapter)initWithAdapter:(id)adapter
{
  adapterCopy = adapter;
  v9.receiver = self;
  v9.super_class = WrappedCombineAdapter;
  v6 = [(WrappedCombineAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedAdapter, adapter);
  }

  return v7;
}

- (void)beginProcessingConfigurationsForScope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  wrappedAdapter = [(WrappedCombineAdapter *)self wrappedAdapter];
  v8 = objc_opt_respondsToSelector();

  wrappedAdapter2 = [(WrappedCombineAdapter *)self wrappedAdapter];
  v10 = wrappedAdapter2;
  if (v8)
  {
    [wrappedAdapter2 beginProcessingConfigurationsForScope:scope completionHandler:handlerCopy];
  }

  else
  {
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      wrappedAdapter3 = [(WrappedCombineAdapter *)self wrappedAdapter];
      v14 = 0;
      [wrappedAdapter3 beginProcessingConfigurationsForScope:scope error:&v14];
      v13 = v14;

      handlerCopy[2](handlerCopy, v13);
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)allDeclarationKeysForScope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  wrappedAdapter = [(WrappedCombineAdapter *)self wrappedAdapter];
  v8 = objc_opt_respondsToSelector();

  wrappedAdapter2 = [(WrappedCombineAdapter *)self wrappedAdapter];
  v10 = wrappedAdapter2;
  if (v8)
  {
    [wrappedAdapter2 allDeclarationKeysForScope:scope completionHandler:handlerCopy];
  }

  else
  {
    v11 = objc_opt_respondsToSelector();

    wrappedAdapter3 = [(WrappedCombineAdapter *)self wrappedAdapter];
    v13 = wrappedAdapter3;
    if (v11)
    {
      v19 = 0;
      v14 = [wrappedAdapter3 allDeclarationKeysForScope:scope error:&v19];
      v15 = v19;

      handlerCopy[2](handlerCopy, v14, v15);
    }

    else
    {
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        wrappedAdapter4 = [(WrappedCombineAdapter *)self wrappedAdapter];
        allDeclarationKeys = [wrappedAdapter4 allDeclarationKeys];

        handlerCopy[2](handlerCopy, allDeclarationKeys, 0);
      }
    }
  }
}

- (void)applyCombinedConfiguration:(id)configuration declarationKeys:(id)keys scope:(int64_t)scope completionHandler:(id)handler
{
  configurationCopy = configuration;
  keysCopy = keys;
  handlerCopy = handler;
  wrappedAdapter = [(WrappedCombineAdapter *)self wrappedAdapter];
  v14 = objc_opt_respondsToSelector();

  wrappedAdapter2 = [(WrappedCombineAdapter *)self wrappedAdapter];
  v16 = wrappedAdapter2;
  if (v14)
  {
    [wrappedAdapter2 applyCombinedConfiguration:configurationCopy declarationKeys:keysCopy scope:scope completionHandler:handlerCopy];
  }

  else
  {
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      wrappedAdapter3 = [(WrappedCombineAdapter *)self wrappedAdapter];
      v21 = 0;
      v22 = 0;
      [wrappedAdapter3 applyCombinedConfiguration:configurationCopy declarationKeys:keysCopy scope:scope returningReasons:&v22 error:&v21];
      v19 = v22;
      v20 = v21;

      handlerCopy[2](handlerCopy, v19, v20);
    }
  }
}

- (void)removeCombinedConfigurationForScope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  wrappedAdapter = [(WrappedCombineAdapter *)self wrappedAdapter];
  v8 = objc_opt_respondsToSelector();

  wrappedAdapter2 = [(WrappedCombineAdapter *)self wrappedAdapter];
  v10 = wrappedAdapter2;
  if (v8)
  {
    [wrappedAdapter2 removeCombinedConfigurationForScope:scope completionHandler:handlerCopy];
  }

  else
  {
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      wrappedAdapter3 = [(WrappedCombineAdapter *)self wrappedAdapter];
      v14 = 0;
      [wrappedAdapter3 removeCombinedConfigurationForScope:scope error:&v14];
      v13 = v14;

      handlerCopy[2](handlerCopy, v13);
    }
  }
}

@end